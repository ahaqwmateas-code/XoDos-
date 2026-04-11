.class public Lcom/termux/app/TermuxActivity;
.super Lcom/termux/x11/MainActivity;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ARG_ACTIVITY_RECREATED:Ljava/lang/String; = "activity_recreated"

.field private static final ARG_TERMINAL_TOOLBAR_TEXT_INPUT:Ljava/lang/String; = "terminal_toolbar_text_input"

.field private static final CONTEXT_MENU_AUTOFILL_ID:I = 0x2

.field private static final CONTEXT_MENU_HELP_ID:I = 0x7

.field private static final CONTEXT_MENU_KILL_PROCESS_ID:I = 0x4

.field private static final CONTEXT_MENU_REPORT_ID:I = 0x9

.field private static final CONTEXT_MENU_RESET_TERMINAL_ID:I = 0x3

.field private static final CONTEXT_MENU_SELECT_URL_ID:I = 0x0

.field private static final CONTEXT_MENU_SETTINGS_ID:I = 0x8

.field private static final CONTEXT_MENU_SHARE_SELECTED_TEXT:I = 0xa

.field private static final CONTEXT_MENU_SHARE_TRANSCRIPT_ID:I = 0x1

.field private static final CONTEXT_MENU_STYLING_ID:I = 0x5

.field private static final CONTEXT_MENU_TOGGLE_KEEP_SCREEN_ON:I = 0x6

.field public static final FILE_REQUEST_BACKUP_CODE:I = 0x65

.field public static final FILE_REQUEST_WINE_CODE:I = 0x3ea

.field private static final LOG_TAG:Ljava/lang/String; = "TermuxActivity"

.field private static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x7d0


# instance fields
.field private isExit:Z

.field mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

.field private mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

.field private mIsActivityRecreated:Z

.field private mIsInvalidState:Z

.field private mIsOnResumeAfterOnCreate:Z

.field private mIsVisible:Z

.field mLastToast:Landroid/widget/Toast;

.field private mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

.field private mMenuEntryClient:Lcom/termux/app/terminal/MenuEntryClient;

.field private mNavBarHeight:I

.field private mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

.field private mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

.field private mStartEntryClient:Lcom/termux/app/terminal/StartEntryClient;

.field private mTerminalToolbarDefaultHeight:F

.field mTerminalView:Lcom/termux/view/TerminalView;

.field mTermuxActivityBottomSpaceView:Landroid/view/View;

.field private final mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

.field mTermuxService:Lcom/termux/app/TermuxService;

.field mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

.field mTermuxTerminalExtraKeys:Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;

.field mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

.field mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;-><init>()V

    .line 197
    new-instance v0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsOnResumeAfterOnCreate:Z

    .line 220
    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsActivityRecreated:Z

    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/DisplaySlidingWindow;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 125
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/termux/app/TermuxActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 125
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mEnableFloatBallMenu:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/termux/app/TermuxActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;
    .param p1, "x1"    # Z

    .line 125
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->reloadActivityStyling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/termux/app/TermuxActivity;)Lcom/termux/app/terminal/FloatBallMenuClient;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 125
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    return-object v0
.end method

.method static synthetic access$202(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/FloatBallMenuClient;)Lcom/termux/app/terminal/FloatBallMenuClient;
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;
    .param p1, "x1"    # Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 125
    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    return-object p1
.end method

.method static synthetic access$300(Lcom/termux/app/TermuxActivity;)Lcom/termux/x11/controller/inputcontrols/InputControlsManager;
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 125
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->inputControlsManager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 125
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->stopXserver()V

    return-void
.end method

.method static synthetic access$500(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 125
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->onPreferencesChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 125
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->unlockOrExitApp()V

    return-void
.end method

.method static synthetic access$700(Lcom/termux/app/TermuxActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 125
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->closeTerminalSessionListView()V

    return-void
.end method

.method static synthetic access$800(Lcom/termux/app/TermuxActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;

    .line 125
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$900(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/app/TermuxActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 125
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->fixTermuxActivityBroadcastReceiverIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private checkStoragePermissionsAndRun(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "onGranted"    # Ljava/lang/Runnable;

    .line 796
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->hasStoragePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 799
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 800
    const v1, 0x7f120312

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 801
    const v1, 0x7f120311

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda26;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 802
    const v2, 0x7f12002d

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda27;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 812
    const v2, 0x7f12002a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 813
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 816
    :goto_0
    return-void
.end method

.method private closeTerminalSessionListView()V
    .locals 1

    .line 947
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 948
    return-void
.end method

.method private exitApp()V
    .locals 4

    .line 876
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isExit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/termux/app/TermuxService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    const-string v2, "com.termux.service_stop"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 879
    .local v0, "exitIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 881
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 882
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    .line 884
    .end local v0    # "exitIntent":Landroid/content/Intent;
    goto :goto_0

    .line 885
    :cond_0
    const v0, 0x7f120132

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isExit:Z

    .line 887
    sget-object v0, Lcom/termux/app/TermuxActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda6;-><init>(Lcom/termux/app/TermuxActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 889
    :goto_0
    return-void
.end method

.method private fixTermuxActivityBroadcastReceiverIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1527
    if-nez p1, :cond_0

    return-void

    .line 1529
    :cond_0
    const-string v0, "com.termux.app.reload_style"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1530
    .local v1, "extraReloadStyle":Ljava/lang/String;
    const-string v2, "storage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1531
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1532
    const-string v0, "com.termux.app.request_storage_permissions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    :cond_1
    return-void
.end method

.method private hasStoragePermissions()Z
    .locals 1

    .line 819
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 820
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 819
    :goto_0
    return v0
.end method

.method static synthetic lambda$onRequestPermissionsResult$24()V
    .locals 0

    .line 1380
    return-void
.end method

.method static synthetic lambda$showKillSessionDialog$16(Lcom/termux/terminal/TerminalSession;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "session"    # Lcom/termux/terminal/TerminalSession;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 1190
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1191
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    .line 1192
    return-void
.end method

.method static synthetic lambda$stopXserver$27()V
    .locals 5

    .line 1624
    :try_start_0
    const-string v0, "/data/data/com.termux/files/usr/bin/box64 /data/data/com.termux/files/usr/opt/wine/bin/wineserver -k"

    const-string v1, "/data/data/com.termux/files/usr/glibc/bin/box64 /data/data/com.termux/files/usr/glibc/bin/wineserver -k"

    const-string v2, "pkill -f wine"

    const-string v3, "pkill -f \"virgl_*\""

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 1631
    .local v0, "commands":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1632
    .local v3, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1633
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    nop

    .end local v3    # "cmd":Ljava/lang/String;
    .end local v4    # "process":Ljava/lang/Process;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1637
    .end local v0    # "commands":[Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 1635
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1636
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1638
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1602
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1603
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1604
    return-object v0
.end method

.method private onRequestLoadBackFile(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1316
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 1317
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1318
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    return-void

    .line 1320
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 1322
    .local v1, "takeFlags":I
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1326
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, v0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda23;-><init>(Lcom/termux/app/TermuxActivity;Landroid/net/Uri;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1358
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "takeFlags":I
    :cond_1
    return-void
.end method

.method private onResetTerminalSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 2
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;

    .line 1198
    if-eqz p1, :cond_0

    .line 1199
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->reset()V

    .line 1200
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 1202
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->onResetTerminalSession()V

    .line 1205
    :cond_0
    return-void
.end method

.method private registerTermuxActivityBroadcastReceiver()V
    .locals 3

    .line 1509
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1510
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.termux.app.notify_app_crash"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1511
    const-string v1, "com.termux.app.reload_style"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1512
    const-string v1, "com.termux.app.request_storage_permissions"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1515
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/termux/app/TermuxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 1518
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/termux/app/TermuxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1520
    :goto_0
    return-void
.end method

.method private reloadActivityStyling(Z)V
    .locals 3
    .param p1, "recreateActivity"    # Z

    .line 1564
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    if-eqz v0, :cond_1

    .line 1565
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->reloadProperties()V

    .line 1567
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->shouldExtraKeysTextBeAllCaps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setButtonTextAllCaps(Z)V

    .line 1569
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalExtraKeys:Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;

    invoke-virtual {v1}, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->getExtraKeysInfo()Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    move-result-object v1

    iget v2, p0, Lcom/termux/app/TermuxActivity;->mTerminalToolbarDefaultHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->reload(Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;F)V

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getNightMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/termux/theme/TermuxThemeUtils;->setAppNightMode(Ljava/lang/String;)V

    .line 1576
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setMargins()V

    .line 1577
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarHeight()V

    .line 1579
    invoke-static {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->updateFileReceiverActivityComponentsState(Landroid/content/Context;)V

    .line 1581
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_2

    .line 1582
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->onReloadActivityStyling()V

    .line 1584
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_3

    .line 1585
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onReloadActivityStyling()V

    .line 1590
    :cond_3
    if-eqz p1, :cond_4

    .line 1591
    const-string v0, "TermuxActivity"

    const-string v1, "Recreating activity"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->recreate()V

    .line 1594
    :cond_4
    return-void
.end method

.method private reloadProperties()V
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->loadTermuxPropertiesFromDisk()V

    .line 834
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onReloadProperties()V

    .line 836
    :cond_0
    return-void
.end method

.method private requestAutoFill()V
    .locals 2

    .line 1233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1234
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 1235
    .local v0, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V

    .line 1239
    .end local v0    # "autofillManager":Landroid/view/autofill/AutofillManager;
    :cond_0
    return-void
.end method

.method private saveTerminalToolbarTextInput(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1017
    if-nez p1, :cond_0

    return-void

    .line 1019
    :cond_0
    const v0, 0x7f0902eb

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1020
    .local v0, "textInputView":Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 1021
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "textInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1023
    const-string v2, "terminal_toolbar_text_input"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    .end local v1    # "textInput":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setActivityTheme()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getNightMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/termux/theme/TermuxThemeUtils;->setAppNightMode(Ljava/lang/String;)V

    .line 846
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->getAppNightMode()Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setNightMode(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)V

    .line 847
    return-void
.end method

.method private setBackupView()V
    .locals 2

    .line 924
    const v0, 0x7f090115

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxActivity$2;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$2;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    return-void
.end method

.method private setFloatBallMenuClient()V
    .locals 3

    .line 612
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 613
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "enableFloatBallMenu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/app/TermuxActivity;->mEnableFloatBallMenu:Z

    .line 614
    iget-boolean v1, p0, Lcom/termux/app/TermuxActivity;->mEnableFloatBallMenu:Z

    if-eqz v1, :cond_0

    .line 615
    new-instance v1, Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-direct {v1, p0}, Lcom/termux/app/terminal/FloatBallMenuClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    .line 616
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->onCreate()V

    .line 618
    :cond_0
    return-void
.end method

.method private setMargins()V
    .locals 3

    .line 850
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 851
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getTerminalMarginHorizontal()I

    move-result v1

    .line 852
    .local v1, "marginHorizontal":I
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v2}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getTerminalMarginVertical()I

    move-result v2

    .line 853
    .local v2, "marginVertical":I
    invoke-static {v0, v1, v2, v1, v2}, Lcom/termux/shared/view/ViewUtils;->setLayoutMarginsInDp(Landroid/view/View;IIII)V

    .line 854
    return-void
.end method

.method private setNewSessionButtonView()V
    .locals 2

    .line 1036
    const v0, 0x7f09024d

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1037
    .local v0, "newSessionButton":Landroid/view/View;
    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda19;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda20;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1045
    return-void
.end method

.method private setRecoverView()V
    .locals 2

    .line 912
    const v0, 0x7f090283

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda28;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    return-void
.end method

.method private setSettingsButtonView()V
    .locals 2

    .line 1029
    const v0, 0x7f0902ac

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1030
    .local v0, "settingsButton":Landroid/widget/ImageButton;
    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    return-void
.end method

.method private setSlideWindowLayout()V
    .locals 3

    .line 940
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 941
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 942
    .local v1, "landscape":Z
    invoke-static {v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setLandscape(Z)V

    .line 944
    return-void
.end method

.method private setTerminalToolbarHeight()V
    .locals 4

    .line 994
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 995
    .local v0, "terminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 998
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/termux/app/TermuxActivity;->mTerminalToolbarDefaultHeight:F

    .line 999
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalExtraKeys:Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;

    invoke-virtual {v3}, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->getExtraKeysInfo()Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalExtraKeys:Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;

    invoke-virtual {v3}, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->getExtraKeysInfo()Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;->getMatrix()[[Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    move-result-object v3

    array-length v3, v3

    :goto_0
    int-to-float v3, v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    .line 1000
    invoke-virtual {v3}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getTerminalToolbarHeightScaleFactor()F

    move-result v3

    mul-float v2, v2, v3

    .line 998
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1001
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    return-void
.end method

.method private setTerminalToolbarView(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 974
    new-instance v0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/view/TerminalView;Lcom/termux/app/terminal/TermuxTerminalViewClient;Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalExtraKeys:Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;

    .line 977
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 978
    .local v0, "terminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->shouldShowTerminalToolbar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 980
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 981
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    iput v2, p0, Lcom/termux/app/TermuxActivity;->mTerminalToolbarDefaultHeight:F

    .line 983
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarHeight()V

    .line 985
    const/4 v2, 0x0

    .line 986
    .local v2, "savedTextInput":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 987
    const-string v3, "terminal_toolbar_text_input"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 989
    :cond_1
    new-instance v3, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;

    invoke-direct {v3, p0, v2}, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;-><init>(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 990
    new-instance v3, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;

    invoke-direct {v3, p0, v0}, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;-><init>(Lcom/termux/app/TermuxActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 991
    return-void
.end method

.method private setTermuxSessionsListView()V
    .locals 3

    .line 965
    const v0, 0x7f0902e9

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 966
    .local v0, "termuxSessionsListView":Landroid/widget/ListView;
    new-instance v1, Lcom/termux/app/terminal/TermuxSessionsListViewController;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->getTermuxSessions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/termux/app/terminal/TermuxSessionsListViewController;-><init>(Lcom/termux/app/TermuxActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    .line 967
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 968
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 969
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 970
    return-void
.end method

.method private setTermuxTerminalViewAndClients()V
    .locals 2

    .line 952
    new-instance v0, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    .line 953
    new-instance v0, Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-direct {v0, p0, v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    .line 956
    const v0, 0x7f0902ed

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/view/TerminalView;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    .line 957
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V

    .line 959
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onCreate()V

    .line 962
    :cond_0
    return-void
.end method

.method private setToggleKeyboardView()V
    .locals 3

    .line 1048
    const v0, 0x7f090311

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda5;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1057
    return-void
.end method

.method private setX11Server()V
    .locals 2

    .line 867
    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda22;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 870
    new-instance v0, Lcom/termux/app/terminal/StartEntryClient;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-direct {v0, p0, v1}, Lcom/termux/app/terminal/StartEntryClient;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V

    .line 872
    .local v0, "startEntryClient":Lcom/termux/app/terminal/StartEntryClient;
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mStartEntryClient:Lcom/termux/app/terminal/StartEntryClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/StartEntryClient;->init()V

    .line 873
    return-void
.end method

.method private showKillSessionDialog(Lcom/termux/terminal/TerminalSession;)V
    .locals 3
    .param p1, "session"    # Lcom/termux/terminal/TerminalSession;

    .line 1184
    if-nez p1, :cond_0

    return-void

    .line 1186
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1187
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1188
    const v1, 0x7f120345

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1189
    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda9;-><init>(Lcom/termux/terminal/TerminalSession;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1193
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1195
    return-void
.end method

.method private showStylingDialog()V
    .locals 5

    .line 1208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1209
    .local v0, "stylingIntent":Landroid/content/Intent;
    const-string v1, "com.termux.styling"

    const-string v2, "com.termux.styling.TermuxStyleActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    goto :goto_1

    .line 1212
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1215
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120121

    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda7;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 1216
    const v4, 0x7f120044

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1218
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1220
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method

.method public static startTermuxActivity(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1598
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->newInstance(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    .line 1599
    return-void
.end method

.method private startX11Display()V
    .locals 2

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ":0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    const-string v1, "termux-x11"

    invoke-static {p0, v1, v0}, Lcom/termux/app/terminal/utils/CommandUtils;->exec(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 909
    return-void
.end method

.method private stopXserver()V
    .locals 3

    .line 1611
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1612
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1613
    const v1, 0x7f12030d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1614
    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda18;-><init>(Lcom/termux/app/TermuxActivity;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1644
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1645
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1646
    return-void
.end method

.method private toggleKeepScreenOn()V
    .locals 2

    .line 1223
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setKeepScreenOn(Z)V

    .line 1225
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setKeepScreenOn(Z)V

    .line 1228
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->setKeepScreenOn(Z)V

    .line 1230
    :goto_0
    return-void
.end method

.method private unlockOrExitApp()V
    .locals 4

    .line 892
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isExit:Z

    if-eqz v0, :cond_0

    .line 893
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/TermuxService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 894
    const-string v1, "com.termux.service_stop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 895
    .local v0, "exitIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 896
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    .line 897
    .end local v0    # "exitIntent":Landroid/content/Intent;
    goto :goto_0

    .line 900
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isExit:Z

    .line 901
    sget-object v0, Lcom/termux/app/TermuxActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;-><init>(Lcom/termux/app/TermuxActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 903
    :goto_0
    return-void
.end method

.method private unregisterTermuxActivityBroadcastReceiver()V
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1524
    return-void
.end method

.method public static updateTermuxActivityStyling(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recreateActivity"    # Z

    .line 1490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.app.reload_style"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v0, "stylingIntent":Landroid/content/Intent;
    const-string v1, "com.termux.app.TermuxActivity.EXTRA_RECREATE_ACTIVITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1492
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1493
    return-void
.end method


# virtual methods
.method public addTermuxActivityRootViewGlobalLayoutListener()V
    .locals 2

    .line 858
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxActivityRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 859
    return-void
.end method

.method public finishActivityIfNotFinishing()V
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    .line 1082
    :cond_0
    return-void
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 1473
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    return-object v0

    .line 1476
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 1417
    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method public getExtraKeysView()Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    return-object v0
.end method

.method public getMainContentView()Lcom/termux/app/terminal/DisplaySlidingWindow;
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 1

    .line 1393
    iget v0, p0, Lcom/termux/app/TermuxActivity;->mNavBarHeight:I

    return v0
.end method

.method public getPreferences()Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    return-object v0
.end method

.method public getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    return-object v0
.end method

.method public getTerminalToolbarDefaultHeight()F
    .locals 1

    .line 1426
    iget v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalToolbarDefaultHeight:F

    return v0
.end method

.method public getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 1422
    const v0, 0x7f0902ec

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public getTerminalView()Lcom/termux/view/TerminalView;
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    return-object v0
.end method

.method public getTermuxActivityBottomSpaceView()Landroid/view/View;
    .locals 1

    .line 1401
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBottomSpaceView:Landroid/view/View;

    return-object v0
.end method

.method public getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    return-object v0
.end method

.method public getTermuxService()Lcom/termux/app/TermuxService;
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    return-object v0
.end method

.method public getTermuxTerminalExtraKeys()Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalExtraKeys:Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;

    return-object v0
.end method

.method public getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    return-object v0
.end method

.method public getTermuxTerminalViewClient()Lcom/termux/app/terminal/TermuxTerminalViewClient;
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    return-object v0
.end method

.method public isActivityRecreated()Z
    .locals 1

    .line 1451
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsActivityRecreated:Z

    return v0
.end method

.method public isOnResumeAfterOnCreate()Z
    .locals 1

    .line 1447
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsOnResumeAfterOnCreate:Z

    return v0
.end method

.method public isTerminalToolbarTextInputViewSelected()Z
    .locals 2

    .line 1434
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTerminalViewSelected()Z
    .locals 1

    .line 1430
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1443
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    return v0
.end method

.method synthetic lambda$checkStoragePermissionsAndRun$3$com-termux-app-TermuxActivity(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 803
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 811
    return-void
.end method

.method synthetic lambda$checkStoragePermissionsAndRun$4$com-termux-app-TermuxActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 812
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    return-void
.end method

.method synthetic lambda$exitApp$6$com-termux-app-TermuxActivity()V
    .locals 1

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isExit:Z

    return-void
.end method

.method synthetic lambda$onCreate$0$com-termux-app-TermuxActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 369
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/termux/app/TermuxActivity;->mNavBarHeight:I

    .line 370
    return-object p2
.end method

.method synthetic lambda$onRequestLoadBackFile$19$com-termux-app-TermuxActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "please wait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f120363

    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1347
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setTerminalViewSwitchSlider(Z)V

    .line 1349
    return-void
.end method

.method synthetic lambda$onRequestLoadBackFile$20$com-termux-app-TermuxActivity(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1354
    return-void
.end method

.method synthetic lambda$onRequestLoadBackFile$21$com-termux-app-TermuxActivity(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1327
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    const-string v1, "restore_"

    const-string v2, ".tar.xz"

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1330
    .local v1, "tempFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1331
    .local v2, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x2000

    :try_start_2
    new-array v3, v3, [B

    .line 1333
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "read":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 1334
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1336
    .end local v3    # "buffer":[B
    .end local v5    # "read":I
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1337
    .end local v2    # "out":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "home/storage"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1338
    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string v2, "termux-setup-storage; sleep 5s; "

    .line 1340
    .local v2, "commandPrefix":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tar -xvf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1341
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -C "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data/data/com.termux/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --preserve-permissions ; rm -f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1343
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; fix && exit\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1345
    .local v3, "command":Ljava/lang/String;
    new-instance v4, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v3}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda15;-><init>(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/termux/app/TermuxActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1351
    .end local v1    # "tempFile":Ljava/io/File;
    .end local v2    # "commandPrefix":Ljava/lang/String;
    .end local v3    # "command":Ljava/lang/String;
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1355
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_2
    goto :goto_4

    .line 1330
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "tempFile":Ljava/io/File;
    .local v2, "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1327
    .end local v1    # "tempFile":Ljava/io/File;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_3
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 1351
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1352
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, v0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda16;-><init>(Lcom/termux/app/TermuxActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1356
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method synthetic lambda$onRequestPermissionsResult$22$com-termux-app-TermuxActivity()V
    .locals 3

    .line 1371
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->isTermuxSessionsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->addNewSession(ZLjava/lang/String;)V

    .line 1374
    :cond_0
    return-void
.end method

.method synthetic lambda$onRequestPermissionsResult$23$com-termux-app-TermuxActivity()V
    .locals 1

    .line 1370
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda8;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-static {p0, v0}, Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 1375
    return-void
.end method

.method synthetic lambda$onRequestPermissionsResult$25$com-termux-app-TermuxActivity(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 1380
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->checkStoragePermissionsAndRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onRequestPermissionsResult$26$com-termux-app-TermuxActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 1381
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onServiceConnected$1$com-termux-app-TermuxActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 760
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-nez v0, :cond_0

    return-void

    .line 762
    :cond_0
    const/4 v0, 0x0

    .line 763
    .local v0, "launchFailsafe":Z
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 764
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.termux.app.failsafe_session"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    .line 766
    :cond_1
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->addNewSession(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v0    # "launchFailsafe":Z
    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    .line 771
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    return-void
.end method

.method synthetic lambda$onServiceConnected$2$com-termux-app-TermuxActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 759
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda17;-><init>(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 772
    return-void
.end method

.method synthetic lambda$reInstallCustomStartScript$18$com-termux-app-TermuxActivity(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/Integer;

    .line 1300
    const-string v0, "xodosu.tar.xz"

    invoke-static {p0, v0}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1301
    const-string v0, "installkali"

    invoke-static {p0, v0}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1302
    const-string v0, "installproot"

    invoke-static {p0, v0}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1303
    const-string v0, "switch"

    invoke-static {p0, v0}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1304
    const-string v0, "fix"

    invoke-static {p0, v0}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1305
    const-string v0, "wine.tar"

    invoke-static {p0, v0}, Lcom/termux/app/terminal/utils/FileUtils;->copyAssetsFile2Phone(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1306
    const-string v0, "chmod +x /data/data/com.termux/files/home/install && /data/data/com.termux/files/home/install "

    .line 1307
    .local v0, "command":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method synthetic lambda$setNewSessionButtonView$10$com-termux-app-TermuxActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1037
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setNewSessionButtonView$11$com-termux-app-TermuxActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 1040
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setNewSessionButtonView$12$com-termux-app-TermuxActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setNewSessionButtonView$13$com-termux-app-TermuxActivity(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 1039
    new-instance v4, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda24;-><init>(Lcom/termux/app/TermuxActivity;)V

    new-instance v6, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda25;

    invoke-direct {v6, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda25;-><init>(Lcom/termux/app/TermuxActivity;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v1, 0x7f120346

    const/4 v2, 0x0

    const v3, 0x7f120026

    const v5, 0x7f120032

    const/4 v7, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/termux/interact/TextInputDialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/termux/interact/TextInputDialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1043
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$setRecoverView$8$com-termux-app-TermuxActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 919
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 920
    return-void
.end method

.method synthetic lambda$setSettingsButtonView$9$com-termux-app-TermuxActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1031
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/activities/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    .line 1032
    return-void
.end method

.method synthetic lambda$setToggleKeyboardView$14$com-termux-app-TermuxActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1049
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onToggleSoftKeyboardRequest()V

    .line 1050
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1051
    return-void
.end method

.method synthetic lambda$setToggleKeyboardView$15$com-termux-app-TermuxActivity(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1054
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->toggleTerminalToolbar()V

    .line 1055
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$setX11Server$5$com-termux-app-TermuxActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 868
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->exitApp()V

    .line 869
    return-void
.end method

.method synthetic lambda$showStylingDialog$17$com-termux-app-TermuxActivity(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://f-droid.org/en/packages/com.termux.styling"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    return-void
.end method

.method synthetic lambda$stopXserver$28$com-termux-app-TermuxActivity()V
    .locals 2

    .line 1618
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/app/TermuxActivity;->mLorieViewConnected:Z

    .line 1621
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1638
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1640
    const-string v0, "stopserver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/app/terminal/utils/CommandUtils;->exec(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1641
    return-void
.end method

.method synthetic lambda$stopXserver$29$com-termux-app-TermuxActivity(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 1615
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1616
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->openPreference(Z)V

    .line 1617
    sget-object v1, Lcom/termux/app/TermuxActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda21;-><init>(Lcom/termux/app/TermuxActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1642
    sput-boolean v0, Lcom/termux/app/TermuxActivity;->mLorieViewConnected:Z

    .line 1643
    return-void
.end method

.method synthetic lambda$unlockOrExitApp$7$com-termux-app-TermuxActivity()V
    .locals 1

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->isExit:Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1273
    invoke-super {p0, p1, p2, p3}, Lcom/termux/x11/MainActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->requestStoragePermission(Z)V

    .line 1278
    :cond_0
    const/16 v0, 0x3ea

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 1279
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1280
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mStartEntryClient:Lcom/termux/app/terminal/StartEntryClient;

    if-eqz v2, :cond_1

    .line 1281
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mStartEntryClient:Lcom/termux/app/terminal/StartEntryClient;

    invoke-virtual {v2, v0}, Lcom/termux/app/terminal/StartEntryClient;->handleWineFile(Landroid/net/Uri;)V

    .line 1286
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 1287
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1288
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mStartEntryClient:Lcom/termux/app/terminal/StartEntryClient;

    invoke-virtual {v2, v1}, Lcom/termux/app/terminal/StartEntryClient;->handleRestoreBackup(Landroid/net/Uri;)V

    .line 1293
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1294
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/TermuxActivity;->onRequestLoadBackFile(IILandroid/content/Intent;)V

    .line 1296
    :cond_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 713
    invoke-super {p0}, Lcom/termux/x11/MainActivity;->onAttachedToWindow()V

    .line 714
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->onAttachedToWindow()V

    .line 717
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1062
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 1066
    :cond_0
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mEnableFloatBallMenu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    if-nez v0, :cond_2

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/DisplaySlidingWindow;->releaseSlider(Z)V

    .line 1068
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getX11Focus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1069
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->back2PreviousMenu()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->onX11PreferenceSwitchChange(Z)V

    .line 1075
    :cond_2
    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1135
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 1137
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1172
    invoke-super {p0, p1}, Lcom/termux/x11/MainActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 1145
    :pswitch_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->shareSelectedText()V

    .line 1146
    return v2

    .line 1169
    :pswitch_1
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->reportIssueFromTranscript()V

    .line 1170
    return v2

    .line 1166
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/termux/app/activities/SettingsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    .line 1167
    return v2

    .line 1163
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/termux/app/activities/HelpActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    .line 1164
    return v2

    .line 1160
    :pswitch_4
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->toggleKeepScreenOn()V

    .line 1161
    return v2

    .line 1157
    :pswitch_5
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->showStylingDialog()V

    .line 1158
    return v2

    .line 1154
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->showKillSessionDialog(Lcom/termux/terminal/TerminalSession;)V

    .line 1155
    return v2

    .line 1151
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->onResetTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 1152
    return v2

    .line 1148
    :pswitch_8
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->requestAutoFill()V

    .line 1149
    return v2

    .line 1142
    :pswitch_9
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->shareSessionTranscript()V

    .line 1143
    return v2

    .line 1139
    :pswitch_a
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->showUrlSelection()V

    .line 1140
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1178
    invoke-super {p0, p1}, Lcom/termux/x11/MainActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1180
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 313
    const-string v0, "onCreate"

    const-string v1, "TermuxActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsOnResumeAfterOnCreate:Z

    .line 318
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->requestWindowFeature(I)Z

    .line 319
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 320
    const-string v3, "activity_recreated"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/termux/app/TermuxActivity;->mIsActivityRecreated:Z

    .line 323
    :cond_0
    const/16 v3, 0xe

    invoke-static {p0, v3, v2}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFilesOlderThanXDays(Landroid/content/Context;IZ)Lcom/termux/shared/errors/Error;

    .line 326
    invoke-static {}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v3

    iput-object v3, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    .line 327
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->reloadProperties()V

    .line 329
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setActivityTheme()V

    .line 330
    invoke-super {p0, p1}, Lcom/termux/x11/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 331
    const v3, 0x7f0c0022

    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxActivity;->setContentView(I)V

    .line 332
    const v3, 0x7f0901ca

    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/termux/app/terminal/DisplaySlidingWindow;

    iput-object v4, p0, Lcom/termux/app/TermuxActivity;->mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

    .line 333
    iget-object v4, p0, Lcom/termux/app/TermuxActivity;->mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

    invoke-virtual {v4, p0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->setTermuxActivity(Lcom/termux/app/TermuxActivity;)V

    .line 335
    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 337
    .local v3, "vGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/termux/app/terminal/DisplayWindowLinearLayout;

    .line 338
    .local v4, "viewContainer":Lcom/termux/app/terminal/DisplayWindowLinearLayout;
    invoke-virtual {v4, v0}, Lcom/termux/app/terminal/DisplayWindowLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 339
    .local v5, "lorieLayout":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/termux/app/TermuxActivity;->lorieContentView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    const v6, 0x7f0901cb

    invoke-virtual {p0, v6}, Lcom/termux/app/TermuxActivity;->setPreferenceViewId(I)V

    .line 343
    new-instance v6, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/termux/app/TermuxActivity;->showFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 347
    invoke-static {p0, v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    .line 348
    iget-object v6, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    if-nez v6, :cond_1

    .line 350
    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    .line 351
    return-void

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setMargins()V

    .line 356
    const v6, 0x7f090101

    invoke-virtual {p0, v6}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/termux/app/terminal/TermuxActivityRootView;

    iput-object v6, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    .line 357
    iget-object v6, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    invoke-virtual {v6, p0}, Lcom/termux/app/terminal/TermuxActivityRootView;->setActivity(Lcom/termux/app/TermuxActivity;)V

    .line 358
    const v6, 0x7f0900ff

    invoke-virtual {p0, v6}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBottomSpaceView:Landroid/view/View;

    .line 359
    iget-object v6, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    new-instance v7, Lcom/termux/app/terminal/TermuxActivityRootView$WindowInsetsListener;

    invoke-direct {v7}, Lcom/termux/app/terminal/TermuxActivityRootView$WindowInsetsListener;-><init>()V

    invoke-virtual {v6, v7}, Lcom/termux/app/terminal/TermuxActivityRootView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 360
    const/4 v6, 0x0

    .line 361
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/termux/app/terminal/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    .line 362
    .local v7, "width":I
    invoke-static {p0}, Lcom/termux/app/terminal/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v8

    .line 363
    .local v8, "height":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 365
    const-string v9, "#CC000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 366
    iget-object v9, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Lcom/termux/app/terminal/TermuxActivityRootView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 367
    const v9, 0x1020002

    invoke-virtual {p0, v9}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 368
    .local v9, "content":Landroid/view/View;
    new-instance v10, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda14;

    invoke-direct {v10, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda14;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 373
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTermuxTerminalViewAndClients()V

    .line 375
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarView(Landroid/os/Bundle;)V

    .line 377
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setSettingsButtonView()V

    .line 379
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setNewSessionButtonView()V

    .line 381
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setToggleKeyboardView()V

    .line 383
    new-instance v10, Lcom/termux/app/terminal/MenuEntryClient;

    iget-object v11, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-direct {v10, p0, v11}, Lcom/termux/app/terminal/MenuEntryClient;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V

    iput-object v10, p0, Lcom/termux/app/TermuxActivity;->mMenuEntryClient:Lcom/termux/app/terminal/MenuEntryClient;

    .line 386
    new-instance v10, Lcom/termux/app/terminal/StartEntryClient;

    iget-object v11, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-direct {v10, p0, v11}, Lcom/termux/app/terminal/StartEntryClient;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V

    iput-object v10, p0, Lcom/termux/app/TermuxActivity;->mStartEntryClient:Lcom/termux/app/terminal/StartEntryClient;

    .line 388
    iget-object v10, p0, Lcom/termux/app/TermuxActivity;->mStartEntryClient:Lcom/termux/app/terminal/StartEntryClient;

    invoke-virtual {v10}, Lcom/termux/app/terminal/StartEntryClient;->init()V

    .line 392
    iget-object v10, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p0, v10}, Lcom/termux/app/TermuxActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 394
    invoke-static {p0}, Lcom/termux/app/api/file/FileReceiverActivity;->updateFileReceiverActivityComponentsState(Landroid/content/Context;)V

    .line 396
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setRecoverView()V

    .line 397
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setX11Server()V

    .line 398
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setBackupView()V

    .line 399
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setFloatBallMenuClient()V

    .line 404
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/termux/app/TermuxService;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v10, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v10}, Lcom/termux/app/TermuxActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 409
    invoke-virtual {p0, v10, p0, v2}, Lcom/termux/app/TermuxActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 419
    .end local v10    # "serviceIntent":Landroid/content/Intent;
    nop

    .line 423
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->sendTermuxOpenedBroadcast(Landroid/content/Context;)V

    .line 424
    new-instance v0, Lcom/termux/app/TermuxActivity$1;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$1;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    .line 609
    return-void

    .line 410
    .restart local v10    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v11, "bindService() failed"

    invoke-direct {v2, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v3    # "vGroup":Landroid/view/ViewGroup;
    .end local v4    # "viewContainer":Lcom/termux/app/terminal/DisplayWindowLinearLayout;
    .end local v5    # "lorieLayout":Landroid/widget/LinearLayout;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "content":Landroid/view/View;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 411
    .end local v10    # "serviceIntent":Landroid/content/Intent;
    .restart local v3    # "vGroup":Landroid/view/ViewGroup;
    .restart local v4    # "viewContainer":Lcom/termux/app/terminal/DisplayWindowLinearLayout;
    .restart local v5    # "lorieLayout":Landroid/widget/LinearLayout;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    .restart local v9    # "content":Landroid/view/View;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "TermuxActivity failed to start TermuxService"

    invoke-static {v1, v10, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    nop

    .line 414
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v10, "app is in background"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    const v1, 0x7f120126

    goto :goto_0

    :cond_3
    const v1, 0x7f120127

    .line 414
    :goto_0
    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-static {p0, v1, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 417
    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    .line 418
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1098
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 1099
    .local v0, "currentSession":Lcom/termux/terminal/TerminalSession;
    if-nez v0, :cond_0

    return-void

    .line 1101
    :cond_0
    const/4 v1, 0x0

    .line 1102
    .local v1, "addAutoFillMenu":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 1103
    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 1104
    .local v2, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1105
    const/4 v1, 0x1

    .line 1109
    .end local v2    # "autofillManager":Landroid/view/autofill/AutofillManager;
    :cond_1
    const v2, 0x7f12003f

    const/4 v3, 0x0

    invoke-interface {p1, v3, v3, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1110
    const v2, 0x7f120042

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1111
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getStoredSelectedText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1112
    const/16 v2, 0xa

    const v5, 0x7f120041

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1113
    :cond_2
    if-eqz v1, :cond_3

    .line 1114
    const/4 v2, 0x2

    const v5, 0x7f120021

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1115
    :cond_3
    const/4 v2, 0x3

    const v5, 0x7f12003c

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1116
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalSession;->getPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const v5, 0x7f120030

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    invoke-interface {p1, v3, v5, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1117
    const/4 v2, 0x5

    const v5, 0x7f120043

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1118
    const/4 v2, 0x6

    const v5, 0x7f120045

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v4, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v4}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->shouldKeepScreenOn()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1119
    const/4 v2, 0x7

    const v4, 0x7f120034

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1120
    const/16 v2, 0x8

    const v4, 0x7f120035

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1121
    const/16 v2, 0x9

    const v4, 0x7f12003b

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1122
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1129
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    .line 1130
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 689
    invoke-super {p0}, Lcom/termux/x11/MainActivity;->onDestroy()V

    .line 691
    const-string v0, "TermuxActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    if-eqz v0, :cond_0

    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->unsetTermuxTerminalSessionClient()V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    .line 702
    :cond_1
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/termux/app/TermuxActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->onDestroy()V

    .line 709
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 721
    invoke-super {p0}, Lcom/termux/x11/MainActivity;->onDetachedFromWindow()V

    .line 722
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->onDetachedFromWindow()V

    .line 727
    :cond_0
    return-void
.end method

.method public onEdgeReached()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 308
    return-void
.end method

.method public onMenuOpen(ZI)V
    .locals 3
    .param p1, "isOpen"    # Z
    .param p2, "flag"    # I

    .line 253
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->setX11FocusedChanged(Z)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->setX11FocusedChanged(Z)V

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    if-eqz v2, :cond_3

    .line 259
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 260
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->setTerminalShow(Z)V

    goto :goto_1

    .line 261
    :cond_1
    if-eqz p1, :cond_2

    if-ne p2, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/FloatBallMenuClient;->setShowPreference(Z)V

    goto :goto_1

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v1, v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->setShowPreference(Z)V

    .line 265
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mFloatBallMenuClient:Lcom/termux/app/terminal/FloatBallMenuClient;

    invoke-virtual {v1, v0}, Lcom/termux/app/terminal/FloatBallMenuClient;->setTerminalShow(Z)V

    .line 268
    :cond_3
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1361
    invoke-super {p0, p1, p2, p3}, Lcom/termux/x11/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult: requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grantResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const/16 v0, 0x7d0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1365
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 1369
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda10;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->checkStoragePermissionsAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1377
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1378
    const v2, 0x7f120116

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1379
    const v2, 0x7f120120

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda12;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 1380
    const v3, 0x7f12003d

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda13;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 1381
    const v3, 0x7f12002a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1386
    :cond_1
    :goto_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 1387
    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->requestStoragePermission(Z)V

    .line 1389
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 645
    invoke-super {p0}, Lcom/termux/x11/MainActivity;->onResume()V

    .line 646
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->inputControlsManager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfiles(Z)V

    .line 647
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

    invoke-virtual {v0}, Lcom/termux/app/terminal/DisplaySlidingWindow;->onResume()V

    .line 648
    const-string v0, "onResume"

    const-string v1, "TermuxActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    if-eqz v0, :cond_0

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->onResume()V

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onResume()V

    .line 660
    :cond_2
    invoke-static {p0, v1}, Lcom/termux/shared/termux/crash/TermuxCrashUtils;->notifyAppCrashFromCrashLogFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsOnResumeAfterOnCreate:Z

    .line 663
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 731
    const-string v0, "TermuxActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-super {p0, p1}, Lcom/termux/x11/MainActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 734
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->saveTerminalToolbarTextInput(Landroid/os/Bundle;)V

    .line 735
    const-string v0, "activity_recreated"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 746
    const-string v0, "TermuxActivity"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    move-object v0, p2

    check-cast v0, Lcom/termux/app/TermuxService$LocalBinder;

    iget-object v0, v0, Lcom/termux/app/TermuxService$LocalBinder;->service:Lcom/termux/app/TermuxService;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    .line 750
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTermuxSessionsListView()V

    .line 752
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 753
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->setIntent(Landroid/content/Intent;)V

    .line 755
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->isTermuxSessionsEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    iget-boolean v1, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-eqz v1, :cond_0

    .line 758
    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, v0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda29;-><init>(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)V

    invoke-direct {p0, v1}, Lcom/termux/app/TermuxActivity;->checkStoragePermissionsAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    goto :goto_0

    .line 781
    :cond_1
    iget-boolean v2, p0, Lcom/termux/app/TermuxActivity;->mIsActivityRecreated:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    const-string v2, "android.intent.action.RUN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    const-string v2, "com.termux.app.failsafe_session"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 784
    .local v2, "isFailSafe":Z
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v3, v2, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->addNewSession(ZLjava/lang/String;)V

    .line 785
    .end local v2    # "isFailSafe":Z
    goto :goto_0

    .line 786
    :cond_2
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 791
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxService;->setTermuxTerminalSessionClient(Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;)V

    .line 792
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 825
    const-string v0, "TermuxActivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    .line 829
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 622
    invoke-super {p0}, Lcom/termux/x11/MainActivity;->onStart()V

    .line 624
    const-string v0, "TermuxActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    if-eqz v0, :cond_0

    return-void

    .line 628
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 630
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->onStart()V

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onStart()V

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->isTerminalMarginAdjustmentEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->addTermuxActivityRootViewGlobalLayoutListener()V

    .line 639
    :cond_3
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->registerTermuxActivityBroadcastReceiver()V

    .line 640
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setSlideWindowLayout()V

    .line 641
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 667
    invoke-super {p0}, Lcom/termux/x11/MainActivity;->onStop()V

    .line 669
    const-string v0, "TermuxActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    if-eqz v0, :cond_0

    return-void

    .line 673
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 675
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionActivityClient:Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionActivityClient;->onStop()V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onStop()V

    .line 681
    :cond_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->removeTermuxActivityRootViewGlobalLayoutListener()V

    .line 683
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->unregisterTermuxActivityBroadcastReceiver()V

    .line 684
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 685
    return-void
.end method

.method public reInstallCustomStartScript(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/Integer;

    .line 1299
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/TermuxActivity;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1313
    return-void
.end method

.method public removeTermuxActivityRootViewGlobalLayoutListener()V
    .locals 2

    .line 862
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxActivityRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTermuxActivityRootView()Lcom/termux/app/terminal/TermuxActivityRootView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 864
    :cond_0
    return-void
.end method

.method public requestStoragePermission(Z)V
    .locals 1
    .param p1, "isPermissionCallback"    # Z

    .line 1248
    new-instance v0, Lcom/termux/app/TermuxActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/TermuxActivity$3;-><init>(Lcom/termux/app/TermuxActivity;Z)V

    .line 1268
    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity$3;->start()V

    .line 1269
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 272
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getProfile()Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 274
    .local v3, "view0Location":[I
    new-array v0, v0, [I

    .line 276
    .local v0, "viewLocation":[I
    iget-object v4, p0, Lcom/termux/app/TermuxActivity;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v4, v3}, Lcom/termux/x11/controller/widget/TouchpadView;->getLocationOnScreen([I)V

    .line 277
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/termux/x11/LorieView;->getLocationOnScreen([I)V

    .line 279
    aget v4, v0, v1

    aget v1, v3, v1

    sub-int/2addr v4, v1

    .line 280
    .local v4, "offsetX":I
    aget v1, v0, v2

    aget v5, v3, v2

    sub-int/2addr v1, v5

    .line 282
    .local v1, "offsetY":I
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v5

    iget-object v5, v5, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    iput v4, v5, Lcom/termux/x11/ScreenInfo;->offsetX:I

    .line 284
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v5

    iget-object v5, v5, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    invoke-static {}, Lcom/termux/app/terminal/utils/ScreenUtils;->getStatusHeight()I

    move-result v6

    add-int/2addr v6, v1

    iput v6, v5, Lcom/termux/x11/ScreenInfo;->offsetY:I

    .line 285
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->extraKeyboardHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    return v2

    .line 289
    :cond_0
    iget-object v5, p0, Lcom/termux/app/TermuxActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v5, p1}, Lcom/termux/x11/controller/widget/InputControlsView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 291
    return v2

    .line 293
    .end local v0    # "viewLocation":[I
    .end local v1    # "offsetY":I
    .end local v3    # "view0Location":[I
    .end local v4    # "offsetX":I
    :cond_1
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    return v1

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v0, :cond_3

    .line 298
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->inputControllerViewHandled:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->extraKeyboardHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mMainContentView:Lcom/termux/app/terminal/DisplaySlidingWindow;

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p1}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 302
    :cond_3
    return v2
.end method

.method public setExtraKeysView(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V
    .locals 0
    .param p1, "extraKeysView"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 1413
    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 1414
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "longDuration"    # Z

    .line 1088
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1090
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    .line 1091
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1092
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1093
    return-void

    .line 1088
    :cond_2
    :goto_0
    return-void
.end method

.method public termuxSessionListNotifyUpdated()V
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxSessionsListViewController;->notifyDataSetChanged()V

    .line 1440
    return-void
.end method

.method public toggleTerminalToolbar()V
    .locals 4

    .line 1005
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 1006
    .local v0, "terminalToolbarViewPager":Landroidx/viewpager/widget/ViewPager;
    if-nez v0, :cond_0

    return-void

    .line 1007
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/preferences/TermuxAppSharedPreferences;->toogleShowTerminalToolbar()Z

    move-result v1

    .line 1008
    .local v1, "showNow":Z
    if-eqz v1, :cond_1

    const v2, 0x7f1201ce

    goto :goto_0

    :cond_1
    const v2, 0x7f1201c9

    :goto_0
    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1009
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 1010
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->isTerminalToolbarTextInputViewSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1012
    const v2, 0x7f0902eb

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1014
    :cond_3
    return-void
.end method

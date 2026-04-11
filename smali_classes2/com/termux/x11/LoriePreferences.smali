.class public Lcom/termux/x11/LoriePreferences;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoriePreferences.java"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/LoriePreferences$TermuxActivityListener;,
        Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;,
        Lcom/termux/x11/LoriePreferences$PrefsProto;,
        Lcom/termux/x11/LoriePreferences$Receiver;
    }
.end annotation


# static fields
.field static final ACTION_PREFERENCES_CHANGED:Ljava/lang/String; = "com.termux.x11.ACTION_PREFERENCES_CHANGED"

.field public static OPEN_FILE_REQUEST_CODE:I = 0x0

.field static final SHOW_IME_WITH_HARD_KEYBOARD:Ljava/lang/String; = "show_ime_with_hard_keyboard"

.field private static final USR_PREFIX:Ljava/lang/String; = "/data/data/com.termux/files/usr"

.field public static handler:Landroid/os/Handler;

.field public static mLorieViewConnected:Z

.field public static prefs:Lcom/termux/x11/Prefs;


# instance fields
.field private final accessibilityObserver:Landroid/database/ContentObserver;

.field protected container:Lcom/termux/x11/controller/container/Container;

.field protected controlsProfile:Ljava/lang/String;

.field protected editInputControlsCallback:Ljava/lang/Runnable;

.field protected globalCursorSpeed:F

.field private id_preference_view:I

.field protected inputControlsManager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

.field protected inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

.field protected openFileCallback:Lcom/termux/x11/controller/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/termux/x11/controller/core/Callback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected orientation:I

.field protected preloaderDialog:Lcom/termux/x11/controller/core/DownloadProgressDialog;

.field protected profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field protected shortcut:Lcom/termux/x11/controller/container/Shortcut;

.field protected termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

.field protected touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

.field protected winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

.field protected xServer:Lcom/termux/x11/LorieView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    .line 110
    const/16 v1, 0x66

    sput v1, Lcom/termux/x11/LoriePreferences;->OPEN_FILE_REQUEST_CODE:I

    .line 133
    const/4 v1, 0x0

    sput-boolean v1, Lcom/termux/x11/LoriePreferences;->mLorieViewConnected:Z

    .line 1036
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    sput-object v0, Lcom/termux/x11/LoriePreferences;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/x11/LoriePreferences;->orientation:I

    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/termux/x11/LoriePreferences;->globalCursorSpeed:F

    .line 180
    new-instance v0, Lcom/termux/x11/LoriePreferences$1;

    invoke-direct {v0, p0}, Lcom/termux/x11/LoriePreferences$1;-><init>(Lcom/termux/x11/LoriePreferences;)V

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences;->receiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v0, Lcom/termux/x11/LoriePreferences$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LoriePreferences$2;-><init>(Lcom/termux/x11/LoriePreferences;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/termux/x11/LoriePreferences;->accessibilityObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private callProgressManager()V
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->showProcessManager()V

    .line 1273
    :cond_0
    return-void
.end method

.method static synthetic lambda$updatePreferencesLayout$0(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 214
    instance-of v0, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    if-eqz v0, :cond_0

    .line 215
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->updatePreferencesLayout()V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public back2PreviousMenu()Z
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 288
    .local v0, "isSubMenu":Z
    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 291
    :cond_1
    return v0
.end method

.method public getControlsProfile()Ljava/lang/String;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->controlsProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getInputControlsView()Lcom/termux/x11/controller/widget/InputControlsView;
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    return-object v0
.end method

.method public getPreloaderDialog()Lcom/termux/x11/controller/core/DownloadProgressDialog;
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->preloaderDialog:Lcom/termux/x11/controller/core/DownloadProgressDialog;

    return-object v0
.end method

.method public getShortcut()Lcom/termux/x11/controller/container/Shortcut;
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->shortcut:Lcom/termux/x11/controller/container/Shortcut;

    return-object v0
.end method

.method public getTermuxActivityListener()Lcom/termux/x11/LoriePreferences$TermuxActivityListener;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    return-object v0
.end method

.method public getTermuxProcessorInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 136
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0, p1}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->collectProcessorInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWinHandler()Lcom/termux/x11/controller/winhandler/WinHandler;
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    return-object v0
.end method

.method public hideInputControls()V
    .locals 3

    .line 1386
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->setShowTouchscreenControls(Z)V

    .line 1387
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/widget/InputControlsView;->setProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V

    .line 1390
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/TouchpadView;->setVisibility(I)V

    .line 1392
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 1393
    return-void
.end method

.method public installX11ServerBridge()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0, p0}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->reInstallX11StartScript(Landroid/app/Activity;)V

    .line 298
    :cond_0
    return-void
.end method

.method public isActivityValid()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$showInputControlsDialog$1$com-termux-x11-LoriePreferences(Landroid/widget/Spinner;)V
    .locals 6
    .param p1, "sProfile"    # Landroid/widget/Spinner;

    .line 1309
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsManager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 1310
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/termux/x11/controller/inputcontrols/ControlsProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v1, "profileItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1312
    .local v2, "selectedPosition":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/termux/x11/R$string;->disabled:I

    invoke-virtual {p0, v4}, Lcom/termux/x11/LoriePreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1314
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 1315
    .local v4, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    iget-object v5, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v5}, Lcom/termux/x11/controller/widget/InputControlsView;->getProfile()Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 1316
    :cond_0
    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    .end local v4    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1319
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1320
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1321
    return-void
.end method

.method synthetic lambda$showInputControlsDialog$2$com-termux-x11-LoriePreferences(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "loadProfileSpinner"    # Ljava/lang/Runnable;

    .line 1338
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->hideInputControls()V

    .line 1339
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsManager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfiles(Z)V

    .line 1340
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1341
    return-void
.end method

.method synthetic lambda$showInputControlsDialog$3$com-termux-x11-LoriePreferences(Landroid/widget/Spinner;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 4
    .param p1, "sProfile"    # Landroid/widget/Spinner;
    .param p2, "loadProfileSpinner"    # Ljava/lang/Runnable;
    .param p3, "v"    # Landroid/view/View;

    .line 1333
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1334
    .local v0, "position":I
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/termux/x11/controller/InputControllerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1335
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "edit_input_controls"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1336
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences;->inputControlsManager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iget v2, v2, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "selected_profile_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1337
    new-instance v2, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2}, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/LoriePreferences;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/termux/x11/LoriePreferences;->editInputControlsCallback:Ljava/lang/Runnable;

    .line 1342
    const/16 v2, 0x67

    invoke-virtual {p0, v1, v2}, Lcom/termux/x11/LoriePreferences;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1343
    return-void
.end method

.method synthetic lambda$showInputControlsDialog$4$com-termux-x11-LoriePreferences(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V
    .locals 3
    .param p1, "cbLockCursor"    # Landroid/widget/CheckBox;
    .param p2, "cbShowTouchscreenControls"    # Landroid/widget/CheckBox;
    .param p3, "sProfile"    # Landroid/widget/Spinner;
    .param p4, "cbEnableTouchScreen"    # Landroid/widget/CheckBox;

    .line 1346
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-nez v0, :cond_0

    .line 1347
    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->xServer:Lcom/termux/x11/LorieView;

    iget-object v0, v0, Lcom/termux/x11/LorieView;->cursorLocker:Lcom/termux/x11/controller/core/CursorLocker;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/core/CursorLocker;->setEnabled(Z)V

    .line 1350
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->setShowTouchscreenControls(Z)V

    .line 1351
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1352
    .local v0, "position":I
    if-lez v0, :cond_2

    .line 1353
    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1354
    iget-object v1, p0, Lcom/termux/x11/LoriePreferences;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    sget-object v2, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TOUCH_SCREEN:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/widget/TouchpadView;->setTouchMode(Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;)V

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/LoriePreferences;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    sget-object v2, Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;->TRACK_PAD:Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;

    invoke-virtual {v1, v2}, Lcom/termux/x11/controller/widget/TouchpadView;->setTouchMode(Lcom/termux/x11/controller/widget/TouchpadView$TouchMode;)V

    .line 1358
    :goto_0
    iget-object v1, p0, Lcom/termux/x11/LoriePreferences;->inputControlsManager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfiles()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {p0, v1}, Lcom/termux/x11/LoriePreferences;->showInputControls(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V

    goto :goto_1

    .line 1360
    :cond_2
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->hideInputControls()V

    .line 1362
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1039
    new-instance v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    const-string v1, "ekbar"

    invoke-direct {v0, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/termux/x11/LoriePreferences;->showFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 1040
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 221
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    new-instance v0, Lcom/termux/x11/Prefs;

    invoke-direct {v0, p0}, Lcom/termux/x11/Prefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/termux/x11/LoriePreferences;->prefs:Lcom/termux/x11/Prefs;

    .line 224
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 225
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 227
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 230
    :cond_0
    const-string v2, "enabled_accessibility_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 231
    .local v2, "ENABLED_ACCESSIBILITY_SERVICES":Landroid/net/Uri;
    const-string v3, "accessibility_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 233
    .local v3, "ACCESSIBILITY_ENABLED":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/x11/LoriePreferences;->accessibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/x11/LoriePreferences;->accessibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    invoke-static {}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->access$000()Lcom/termux/x11/LoriePreferences;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    invoke-static {p0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->access$002(Lcom/termux/x11/LoriePreferences;)Lcom/termux/x11/LoriePreferences;

    .line 238
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 258
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->finish()V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->onBackPressed()V

    .line 264
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 267
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 1

    .line 250
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 251
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/termux/x11/LoriePreferences;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "caller"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "pref"    # Landroidx/preference/Preference;

    .line 280
    new-instance v0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "fragment":Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/termux/x11/LoriePreferences;->showFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 283
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 4

    .line 243
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.termux.x11.ACTION_PREFERENCES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/termux/x11/LoriePreferences;->receiver:Landroid/content/BroadcastReceiver;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/termux/x11/LoriePreferences;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 246
    return-void
.end method

.method public openPreference(Z)V
    .locals 1
    .param p1, "open"    # Z

    .line 1402
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0, p1}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->onX11PreferenceSwitchChange(Z)V

    .line 1404
    :cond_0
    return-void
.end method

.method public prepareToExit()V
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->onExitApp()V

    .line 1399
    :cond_0
    return-void
.end method

.method public releaseSlider(Z)V
    .locals 1
    .param p1, "release"    # Z

    .line 1407
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0, p1}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->releaseSlider(Z)V

    .line 1409
    :cond_0
    return-void
.end method

.method public setOpenFileCallback(Lcom/termux/x11/controller/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/x11/controller/core/Callback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1287
    .local p1, "openFileCallback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences;->openFileCallback:Lcom/termux/x11/controller/core/Callback;

    .line 1288
    return-void
.end method

.method public setPreferenceViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .line 176
    iput p1, p0, Lcom/termux/x11/LoriePreferences;->id_preference_view:I

    .line 177
    return-void
.end method

.method protected showFragment(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 2
    .param p1, "fragment"    # Landroidx/preference/PreferenceFragmentCompat;

    .line 271
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget v1, p0, Lcom/termux/x11/LoriePreferences;->id_preference_view:I

    .line 273
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 276
    return-void
.end method

.method protected showInputControls(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V
    .locals 4
    .param p1, "controlsProfile"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 1370
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->requestFocus()Z

    .line 1372
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/widget/InputControlsView;->setProfile(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)V

    .line 1374
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getCursorSpeed()F

    move-result v2

    iget v3, p0, Lcom/termux/x11/LoriePreferences;->globalCursorSpeed:F

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/widget/TouchpadView;->setSensitivity(F)V

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/TouchpadView;->setVisibility(I)V

    .line 1379
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->invalidate()V

    .line 1380
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0, v1}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->onX11PreferenceSwitchChange(Z)V

    .line 1383
    :cond_1
    return-void
.end method

.method public showInputControlsDialog()V
    .locals 13

    .line 1303
    new-instance v0, Lcom/termux/x11/controller/contentdialog/ContentDialog;

    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$layout;->input_controls_dialog:I

    invoke-direct {v0, v1, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 1304
    .local v0, "dialog":Lcom/termux/x11/controller/contentdialog/ContentDialog;
    sget v1, Lcom/termux/x11/R$string;->input_controls:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setTitle(I)V

    .line 1305
    sget v1, Lcom/termux/x11/R$drawable;->icon_input_controls:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setIcon(I)V

    .line 1307
    sget v1, Lcom/termux/x11/R$id;->SProfile:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 1308
    .local v1, "sProfile":Landroid/widget/Spinner;
    new-instance v2, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/LoriePreferences;Landroid/widget/Spinner;)V

    move-object v8, v2

    .line 1322
    .local v8, "loadProfileSpinner":Ljava/lang/Runnable;
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1324
    sget v2, Lcom/termux/x11/R$id;->CBLockCursor:I

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/CheckBox;

    .line 1325
    .local v9, "cbLockCursor":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/termux/x11/LoriePreferences;->xServer:Lcom/termux/x11/LorieView;

    iget-object v2, v2, Lcom/termux/x11/LorieView;->cursorLocker:Lcom/termux/x11/controller/core/CursorLocker;

    invoke-virtual {v2}, Lcom/termux/x11/controller/core/CursorLocker;->isEnabled()Z

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1327
    sget v2, Lcom/termux/x11/R$id;->CBTouchScreen:I

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/CheckBox;

    .line 1329
    .local v10, "cbEnableTouchScreen":Landroid/widget/CheckBox;
    sget v2, Lcom/termux/x11/R$id;->CBShowTouchscreenControls:I

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/CheckBox;

    .line 1330
    .local v11, "cbShowTouchscreenControls":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/termux/x11/LoriePreferences;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v2}, Lcom/termux/x11/controller/widget/InputControlsView;->isShowTouchscreenControls()Z

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1332
    sget v2, Lcom/termux/x11/R$id;->BTSettings:I

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v8}, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/LoriePreferences;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    new-instance v12, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;

    move-object v2, v12

    move-object v3, p0

    move-object v4, v9

    move-object v5, v11

    move-object v6, v1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/LoriePreferences;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v12}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->setOnConfirmCallback(Ljava/lang/Runnable;)V

    .line 1364
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->isActivityValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1365
    invoke-virtual {v0}, Lcom/termux/x11/controller/contentdialog/ContentDialog;->show()V

    .line 1367
    :cond_0
    return-void
.end method

.method public stopDesktop()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->stopDesktop()V

    .line 370
    :cond_0
    return-void
.end method

.method protected updatePreferencesLayout()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/termux/x11/LoriePreferences;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/x11/LoriePreferences$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    .line 217
    return-void
.end method

.class public Lcom/termux/x11/MainActivity;
.super Lcom/termux/x11/LoriePreferences;
.source "MainActivity.java"


# static fields
.field public static final ACTION_CUSTOM:Ljava/lang/String; = "com.termux.x11.ACTION_CUSTOM"

.field static final ACTION_STOP:Ljava/lang/String; = "com.termux.x11.ACTION_STOP"

.field private static final KEY_BACK:I = 0x9e

.field static final REQUEST_LAUNCH_EXTERNAL_DISPLAY:Ljava/lang/String; = "request_launch_external_display"

.field private static externalKeyboardConnected:Z

.field protected static hasInit:Z

.field static inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private static instance:Lcom/termux/x11/MainActivity;

.field private static oldFullscreen:Z

.field private static oldHideCutout:Z

.field private static showIMEWhileExternalConnected:Z

.field private static softKeyboardShown:Z


# instance fields
.field private filterOutWinKey:Z

.field protected frm:Landroid/widget/FrameLayout;

.field protected inputControllerViewHandled:Z

.field private isInPictureInPictureMode:Z

.field protected lorieContentView:Landroid/view/View;

.field private mClientConnected:Z

.field protected mEnableFloatBallMenu:Z

.field public mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

.field protected mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

.field private mLorieKeyListener:Landroid/view/View$OnKeyListener;

.field private final mNotificationId:I

.field mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field protected service:Lcom/termux/x11/ICmdEntryInterface;

.field useTermuxEKBarBehaviour:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/x11/MainActivity;->hasInit:Z

    .line 129
    const/4 v1, 0x1

    sput-boolean v1, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    .line 130
    sput-boolean v0, Lcom/termux/x11/MainActivity;->externalKeyboardConnected:Z

    .line 134
    sput-boolean v0, Lcom/termux/x11/MainActivity;->oldFullscreen:Z

    sput-boolean v0, Lcom/termux/x11/MainActivity;->oldHideCutout:Z

    .line 139
    sput-boolean v0, Lcom/termux/x11/MainActivity;->softKeyboardShown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 243
    invoke-direct {p0}, Lcom/termux/x11/LoriePreferences;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->inputControllerViewHandled:Z

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    .line 121
    const/16 v1, 0x1ed5

    iput v1, p0, Lcom/termux/x11/MainActivity;->mNotificationId:I

    .line 122
    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->mClientConnected:Z

    .line 124
    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->filterOutWinKey:Z

    .line 127
    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->mEnableFloatBallMenu:Z

    .line 128
    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    .line 131
    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->useTermuxEKBarBehaviour:Z

    .line 205
    new-instance v0, Lcom/termux/x11/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$1;-><init>(Lcom/termux/x11/MainActivity;)V

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/termux/x11/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$2;-><init>(Lcom/termux/x11/MainActivity;)V

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 244
    sput-object p0, Lcom/termux/x11/MainActivity;->instance:Lcom/termux/x11/MainActivity;

    .line 245
    return-void
.end method

.method private checkConnectedControllers()V
    .locals 7

    .line 144
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 145
    .local v0, "deviceIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 146
    .local v3, "id":I
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 147
    .local v4, "device":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    const/16 v6, 0x401

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    .line 148
    invoke-direct {p0, v4}, Lcom/termux/x11/MainActivity;->isIgnoredDevice(Landroid/view/InputDevice;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller:\ud83c\udfae "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "msg":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 152
    const-string v6, "ControllerDebug"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v3    # "id":I
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method private static closeSoftKeyboard()V
    .locals 3

    .line 456
    sget-object v0, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 457
    sput-boolean v2, Lcom/termux/x11/MainActivity;->softKeyboardShown:Z

    .line 458
    return-void
.end method

.method public static getInstance()Lcom/termux/x11/MainActivity;
    .locals 1

    .line 248
    sget-object v0, Lcom/termux/x11/MainActivity;->instance:Lcom/termux/x11/MainActivity;

    return-object v0
.end method

.method public static getPrefs()Lcom/termux/x11/Prefs;
    .locals 1

    .line 252
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    return-object v0
.end method

.method public static getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p0, "m"    # Landroid/util/DisplayMetrics;

    .line 1090
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1093
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1094
    :cond_0
    return-void
.end method

.method public static hasPipPermission(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1010
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1011
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1012
    return v1

    .line 1013
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x1

    const-string v5, "android:picture_in_picture"

    if-lt v2, v3, :cond_2

    .line 1014
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1016
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private initStylusAuxButtons()V
    .locals 22

    .line 499
    move-object/from16 v9, p0

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 500
    .local v10, "p":Landroid/content/SharedPreferences;
    const-string v0, "showStylusClickOverride"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 501
    .local v11, "stylusMenuEnabled":Z
    const v12, 0x3f28f5c3    # 0.66f

    .line 502
    .local v12, "menuUnselectedTrasparency":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 503
    .local v13, "menuSelectedTrasparency":F
    sget v0, Lcom/termux/x11/R$id;->button_left_click:I

    invoke-virtual {v9, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    .line 504
    .local v14, "left":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->button_right_click:I

    invoke-virtual {v9, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Button;

    .line 505
    .local v15, "right":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->button_middle_click:I

    invoke-virtual {v9, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    .line 506
    .local v8, "middle":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->button_visibility:I

    invoke-virtual {v9, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 507
    .local v7, "visibility":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {v9, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 508
    .local v6, "overlay":Landroid/widget/LinearLayout;
    sget v0, Lcom/termux/x11/R$id;->mouse_helper_secondary_layer:I

    invoke-virtual {v9, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/LinearLayout;

    .line 509
    .local v16, "buttons":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 511
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 512
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 513
    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, v14, v8, v15, v7}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;-><init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    move-object v5, v0

    .line 522
    .local v5, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v14, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-virtual {v15, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda29;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v7

    move-object/from16 v17, v10

    move-object v10, v4

    .end local v10    # "p":Landroid/content/SharedPreferences;
    .local v17, "p":Landroid/content/SharedPreferences;
    move-object v4, v14

    move-object/from16 v18, v5

    .end local v5    # "listener":Landroid/view/View$OnClickListener;
    .local v18, "listener":Landroid/view/View$OnClickListener;
    move-object v5, v6

    move/from16 v19, v11

    move-object v11, v6

    .end local v6    # "overlay":Landroid/widget/LinearLayout;
    .local v11, "overlay":Landroid/widget/LinearLayout;
    .local v19, "stylusMenuEnabled":Z
    move-object/from16 v6, v18

    move/from16 v20, v12

    move-object v12, v7

    .end local v7    # "visibility":Landroid/widget/Button;
    .local v12, "visibility":Landroid/widget/Button;
    .local v20, "menuUnselectedTrasparency":F
    move-object v7, v8

    move-object/from16 v21, v8

    .end local v8    # "middle":Landroid/widget/Button;
    .local v21, "middle":Landroid/widget/Button;
    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda29;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v12, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    const/4 v0, 0x1

    sput v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 551
    move-object/from16 v0, v18

    .end local v18    # "listener":Landroid/view/View$OnClickListener;
    .local v0, "listener":Landroid/view/View$OnClickListener;
    invoke-interface {v0, v14}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 553
    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v9, v12, v11}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 585
    return-void
.end method

.method public static isConnected()Z
    .locals 1

    .line 1083
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1084
    const/4 v0, 0x0

    return v0

    .line 1086
    :cond_0
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v0

    return v0
.end method

.method private isGamepadConnected()Z
    .locals 8

    .line 174
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 175
    .local v0, "deviceIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    .line 176
    .local v4, "id":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 177
    .local v5, "device":Landroid/view/InputDevice;
    if-nez v5, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-direct {p0, v5}, Lcom/termux/x11/MainActivity;->isIgnoredDevice(Landroid/view/InputDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    const/16 v7, 0x401

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_3

    .line 181
    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    const v7, 0x1000010

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 175
    .end local v4    # "id":I
    .end local v5    # "device":Landroid/view/InputDevice;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .restart local v4    # "id":I
    .restart local v5    # "device":Landroid/view/InputDevice;
    :cond_3
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 185
    .end local v4    # "id":I
    .end local v5    # "device":Landroid/view/InputDevice;
    :cond_4
    return v2
.end method

.method private isIgnoredDevice(Landroid/view/InputDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/view/InputDevice;

    .line 160
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "name":Ljava/lang/String;
    const-string v2, "uinput-fpc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 167
    const-string v2, "fpc1020"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    const-string v2, "goodix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 169
    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 165
    :goto_1
    return v0
.end method

.method private isTouchPointInView(Landroid/view/View;II)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1185
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1186
    return v0

    .line 1188
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1189
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1190
    aget v2, v1, v0

    .line 1191
    .local v2, "left":I
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 1192
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    .line 1193
    .local v5, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 1195
    .local v6, "bottom":I
    if-lt p3, v4, :cond_1

    if-gt p3, v6, :cond_1

    if-lt p2, v2, :cond_1

    if-gt p2, v5, :cond_1

    .line 1197
    return v3

    .line 1199
    :cond_1
    return v0
.end method

.method static synthetic lambda$initStylusAuxButtons$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initStylusAuxButtons$11(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initStylusAuxButtons$12(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initStylusAuxButtons$13(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 6
    .param p0, "left"    # Landroid/widget/Button;
    .param p1, "middle"    # Landroid/widget/Button;
    .param p2, "right"    # Landroid/widget/Button;
    .param p3, "visibility"    # Landroid/widget/Button;
    .param p4, "view"    # Landroid/view/View;

    .line 515
    invoke-virtual {p4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 516
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f28f5c3    # 0.66f

    if-ne v0, v3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const v0, 0x3f28f5c3    # 0.66f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 517
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    if-ne v0, v2, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const v0, 0x3f28f5c3    # 0.66f

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 518
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    const v4, 0x3f28f5c3    # 0.66f

    :goto_3
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 519
    invoke-virtual {p3, v5}, Landroid/widget/Button;->setAlpha(F)V

    .line 520
    return-void
.end method

.method static synthetic lambda$initStylusAuxButtons$9(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 509
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onCreate$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method private makeSureHelpersAreVisibleAndInScreenBounds()V
    .locals 8

    .line 1140
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 1141
    .local v0, "pager":Landroidx/viewpager/widget/ViewPager;
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1142
    .local v1, "mouseAuxButtons":Landroid/view/View;
    sget v2, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1143
    .local v2, "stylusAuxButtons":Landroid/view/View;
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1145
    .local v3, "maxYDecrement":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    .line 1146
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v7, v3

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setY(F)V

    .line 1148
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setX(F)V

    .line 1149
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v7, v3

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setY(F)V

    .line 1150
    return-void
.end method

.method private static openSoftKeyboard()V
    .locals 3

    .line 461
    sget-object v0, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 462
    const/4 v0, 0x1

    sput-boolean v0, Lcom/termux/x11/MainActivity;->softKeyboardShown:Z

    .line 463
    return-void
.end method

.method public static setCapturingEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .line 1097
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p0}, Lcom/termux/x11/input/TouchInputHandler;->setCapturingEnabled(Z)V

    .line 1101
    return-void

    .line 1098
    :cond_1
    :goto_0
    return-void
.end method

.method private setTerminalToolbarView()V
    .locals 7

    .line 838
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 839
    .local v0, "pager":Landroidx/viewpager/widget/ViewPager;
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 841
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->showAdditionalKbd:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 843
    .local v2, "showNow":Z
    :goto_0
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 845
    if-eqz v2, :cond_2

    .line 846
    new-instance v4, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;

    new-instance v5, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda23;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-direct {v4, p0, v5}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 847
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 848
    new-instance v4, Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;

    invoke-direct {v4, p0, v0}, Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;-><init>(Lcom/termux/x11/MainActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 849
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->bringToFront()V

    goto :goto_2

    .line 851
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 852
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 853
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    if-eqz v4, :cond_3

    .line 854
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-virtual {v4}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->unsetSpecialKeys()V

    .line 857
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 858
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42160000    # 37.5f

    mul-float v5, v5, v6

    .line 859
    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->getExtraKeysInfo()Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->getExtraKeysInfo()Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/termux/x11/extrakeys/TermuxX11ExtraKeysInfo;->getMatrix()[[Lcom/termux/x11/extrakeys/TermuxX11ExtraKeyButton;

    move-result-object v6

    array-length v6, v6

    :goto_3
    int-to-float v6, v6

    mul-float v5, v5, v6

    .line 858
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 860
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    sget-object v6, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v6, v6, Lcom/termux/x11/Prefs;->adjustHeightForEK:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v6}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v3, v3, v3, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 863
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/x11/LorieView;->requestFocus()Z

    .line 864
    return-void
.end method

.method private setupInputController()V
    .locals 5

    .line 473
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->xServer:Lcom/termux/x11/LorieView;

    .line 474
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/termux/x11/MainActivity;->globalCursorSpeed:F

    .line 475
    new-instance v0, Lcom/termux/x11/controller/widget/TouchpadView;

    iget-object v1, p0, Lcom/termux/x11/MainActivity;->xServer:Lcom/termux/x11/LorieView;

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/controller/widget/TouchpadView;-><init>(Landroid/content/Context;Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    .line 476
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    iget v1, p0, Lcom/termux/x11/MainActivity;->globalCursorSpeed:F

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/TouchpadView;->setSensitivity(F)V

    .line 477
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/widget/TouchpadView;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/termux/x11/MainActivity;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 481
    new-instance v0, Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/widget/InputControlsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    .line 482
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 483
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    const-string v3, "overlay_opacity"

    const v4, 0x3ecccccd    # 0.4f

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/termux/x11/controller/widget/InputControlsView;->setOverlayOpacity(F)V

    .line 484
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    iget-object v3, p0, Lcom/termux/x11/MainActivity;->touchpadView:Lcom/termux/x11/controller/widget/TouchpadView;

    invoke-virtual {v2, v3}, Lcom/termux/x11/controller/widget/InputControlsView;->setTouchpadView(Lcom/termux/x11/controller/widget/TouchpadView;)V

    .line 485
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    iget-object v3, p0, Lcom/termux/x11/MainActivity;->xServer:Lcom/termux/x11/LorieView;

    invoke-virtual {v2, v3}, Lcom/termux/x11/controller/widget/InputControlsView;->setXServer(Lcom/termux/x11/LorieView;)V

    .line 486
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v2, v1}, Lcom/termux/x11/controller/widget/InputControlsView;->setVisibility(I)V

    .line 487
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/termux/x11/MainActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 488
    new-instance v1, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    invoke-direct {v1, p0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/termux/x11/MainActivity;->inputControlsManager:Lcom/termux/x11/controller/inputcontrols/InputControlsManager;

    .line 489
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shortcut_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "shortcutPath":Ljava/lang/String;
    new-instance v2, Lcom/termux/x11/controller/container/Container;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/termux/x11/controller/container/Container;-><init>(I)V

    iput-object v2, p0, Lcom/termux/x11/MainActivity;->container:Lcom/termux/x11/controller/container/Container;

    .line 491
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    new-instance v2, Lcom/termux/x11/controller/container/Shortcut;

    iget-object v3, p0, Lcom/termux/x11/MainActivity;->container:Lcom/termux/x11/controller/container/Container;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/termux/x11/controller/container/Shortcut;-><init>(Lcom/termux/x11/controller/container/Container;Ljava/io/File;)V

    iput-object v2, p0, Lcom/termux/x11/MainActivity;->shortcut:Lcom/termux/x11/controller/container/Shortcut;

    .line 494
    :cond_0
    return-void
.end method

.method private showMouseAuxButtons(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 1158
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1159
    .local v0, "v":Landroid/view/View;
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-boolean v1, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const v1, 0x3f333333    # 0.7f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1161
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->makeSureHelpersAreVisibleAndInScreenBounds()V

    .line 1162
    return-void
.end method

.method private showStylusAuxButtons(Z)V
    .locals 5
    .param p1, "show"    # Z

    .line 1122
    sget v0, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1123
    .local v0, "buttons":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1125
    iget-boolean v1, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 1128
    :cond_1
    const/4 v1, 0x1

    sput v1, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 1129
    const v1, 0x3f28f5c3    # 0.66f

    .line 1130
    .local v1, "menuUnselectedTrasparency":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1131
    .local v3, "menuSelectedTrasparency":F
    sget v4, Lcom/termux/x11/R$id;->button_left_click:I

    invoke-virtual {p0, v4}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1132
    sget v2, Lcom/termux/x11/R$id;->button_right_click:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x3f28f5c3    # 0.66f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1133
    sget v2, Lcom/termux/x11/R$id;->button_middle_click:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1134
    sget v2, Lcom/termux/x11/R$id;->button_visibility:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1135
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1137
    .end local v1    # "menuUnselectedTrasparency":F
    .end local v3    # "menuSelectedTrasparency":F
    :goto_0
    return-void
.end method

.method public static toggleKeyboardVisibility(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1046
    const-string v0, "MainActivity"

    const-string v1, "Toggling keyboard visibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sget-object v0, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "externalKeyboardConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/termux/x11/MainActivity;->externalKeyboardConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " showIMEWhileExternalConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggleKeyboardVisibility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-static {}, Lcom/termux/x11/MainActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->requestFocus()Z

    .line 1052
    :cond_0
    sget-boolean v0, Lcom/termux/x11/MainActivity;->externalKeyboardConnected:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1055
    :cond_1
    invoke-static {}, Lcom/termux/x11/MainActivity;->closeSoftKeyboard()V

    goto :goto_1

    .line 1053
    :cond_2
    :goto_0
    invoke-static {}, Lcom/termux/x11/MainActivity;->openSoftKeyboard()V

    .line 1058
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method clientConnectedStateChanged()V
    .locals 1

    .line 1062
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1080
    return-void
.end method

.method protected extraKeyboardHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1203
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    const/4 v0, 0x0

    return v0

    .line 1206
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/termux/x11/MainActivity;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 834
    sget v0, Lcom/termux/x11/R$id;->display_terminal_toolbar_view_pager:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public getLorieView()Lcom/termux/x11/LorieView;
    .locals 1

    .line 830
    sget v0, Lcom/termux/x11/R$id;->lorieView:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LorieView;

    return-object v0
.end method

.method public getOrientation()I
    .locals 4

    .line 917
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 918
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 919
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 921
    .local v2, "rotation":I
    packed-switch v2, :pswitch_data_0

    .line 926
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 924
    :pswitch_1
    const/4 v3, 0x0

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getX11Focus()Z
    .locals 1

    .line 762
    invoke-static {}, Lcom/termux/x11/utils/FullscreenWorkaround;->getX11Focused()Z

    move-result v0

    return v0
.end method

.method public handleKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/KeyEvent;

    .line 883
    iget-boolean v0, p0, Lcom/termux/x11/MainActivity;->filterOutWinKey:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x76

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mLorieKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 886
    const/4 v0, 0x1

    return v0
.end method

.method initMouseAuxButtons()V
    .locals 18

    .line 598
    move-object/from16 v6, p0

    sget v0, Lcom/termux/x11/R$id;->mouse_button_left_click:I

    invoke-virtual {v6, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    .line 599
    .local v13, "left":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->mouse_button_right_click:I

    invoke-virtual {v6, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    .line 600
    .local v14, "right":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->mouse_button_middle_click:I

    invoke-virtual {v6, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Button;

    .line 601
    .local v15, "middle":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons_position:I

    invoke-virtual {v6, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageButton;

    .line 602
    .local v12, "pos":Landroid/widget/ImageButton;
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {v6, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    .line 603
    .local v11, "primaryLayer":Landroid/widget/LinearLayout;
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons_secondary_layer:I

    invoke-virtual {v6, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/LinearLayout;

    .line 605
    .local v16, "secondaryLayer":Landroid/widget/LinearLayout;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 606
    .local v10, "p":Landroid/content/SharedPreferences;
    const-string v0, "showMouseHelper"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    const-string v0, "touchMode"

    const-string v2, "1"

    invoke-interface {v10, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    .line 607
    .local v17, "mouseHelperEnabled":Z
    if-eqz v17, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 609
    new-instance v8, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v13

    move-object v4, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v7, v13

    move-object v9, v15

    move-object v2, v10

    .end local v10    # "p":Landroid/content/SharedPreferences;
    .local v2, "p":Landroid/content/SharedPreferences;
    move-object v10, v0

    move-object v0, v11

    .end local v11    # "primaryLayer":Landroid/widget/LinearLayout;
    .local v0, "primaryLayer":Landroid/widget/LinearLayout;
    move-object v11, v14

    move-object v3, v12

    .end local v12    # "pos":Landroid/widget/ImageButton;
    .local v3, "pos":Landroid/widget/ImageButton;
    move-object v12, v1

    invoke-static/range {v7 .. v12}, Lcom/termux/x11/MainActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, v6}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/termux/x11/MainActivity;)V

    .line 628
    invoke-static {v1, v4}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    .line 644
    new-instance v1, Lcom/termux/x11/MainActivity$5;

    invoke-direct {v1, v6, v0, v3}, Lcom/termux/x11/MainActivity$5;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 687
    return-void
.end method

.method public isWineRunning()Z
    .locals 3

    .line 191
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "pgrep -f winhandler.exe"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 193
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 195
    .end local v1    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method synthetic lambda$clientConnectedStateChanged$25$com-termux-x11-MainActivity()V
    .locals 5

    .line 1063
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v0

    .line 1064
    .local v0, "connected":Z
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 1065
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    sget v1, Lcom/termux/x11/R$id;->stub:I

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v1, v2}, Lcom/termux/x11/LorieView;->setVisibility(I)V

    .line 1068
    sput-boolean v0, Lcom/termux/x11/MainActivity;->mLorieViewConnected:Z

    .line 1071
    if-nez v0, :cond_3

    .line 1072
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->tryConnect()Z

    goto :goto_2

    .line 1074
    :cond_3
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    invoke-static {p0, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/x11/LorieView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 1075
    invoke-virtual {p0, v3}, Lcom/termux/x11/MainActivity;->openPreference(Z)V

    .line 1078
    :goto_2
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->onWindowFocusChanged(Z)V

    .line 1079
    return-void
.end method

.method synthetic lambda$initMouseAuxButtons$17$com-termux-x11-MainActivity(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "primaryLayer"    # Landroid/widget/LinearLayout;

    .line 620
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 621
    .local v0, "offset":[I
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 622
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    aget v2, v0, v2

    iget-object v4, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 623
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    const/4 v2, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    aget v2, v0, v2

    iget-object v4, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 624
    return-void
.end method

.method synthetic lambda$initMouseAuxButtons$18$com-termux-x11-MainActivity(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 4
    .param p1, "secondaryLayer"    # Landroid/widget/LinearLayout;
    .param p2, "left"    # Landroid/widget/Button;
    .param p3, "right"    # Landroid/widget/Button;
    .param p4, "primaryLayer"    # Landroid/widget/LinearLayout;
    .param p5, "v"    # Landroid/view/View;

    .line 610
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x60

    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0, p2, v1, v2}, Lcom/termux/x11/MainActivity;->setSize(Landroid/view/View;II)V

    .line 612
    invoke-virtual {p0, p3, v1, v2}, Lcom/termux/x11/MainActivity;->setSize(Landroid/view/View;II)V

    .line 613
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {p0, p2, v2, v1}, Lcom/termux/x11/MainActivity;->setSize(Landroid/view/View;II)V

    .line 616
    invoke-virtual {p0, p3, v2, v1}, Lcom/termux/x11/MainActivity;->setSize(Landroid/view/View;II)V

    .line 617
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 619
    :goto_0
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p4}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 625
    return-void
.end method

.method synthetic lambda$initMouseAuxButtons$19$com-termux-x11-MainActivity(Ljava/lang/Integer;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "b"    # Ljava/lang/Integer;
    .param p2, "v"    # Landroid/widget/Button;
    .param p3, "__"    # Landroid/view/View;
    .param p4, "e"    # Landroid/view/MotionEvent;

    .line 629
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 637
    :pswitch_1
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 638
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setPressed(Z)V

    goto :goto_0

    .line 632
    :pswitch_2
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 633
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 634
    nop

    .line 641
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$initMouseAuxButtons$20$com-termux-x11-MainActivity(Landroid/widget/Button;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/Button;
    .param p2, "b"    # Ljava/lang/Integer;

    .line 628
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/termux/x11/MainActivity;Ljava/lang/Integer;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method synthetic lambda$initStylusAuxButtons$14$com-termux-x11-MainActivity(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 7
    .param p1, "buttons"    # Landroid/widget/LinearLayout;
    .param p2, "visibility"    # Landroid/widget/Button;
    .param p3, "left"    # Landroid/widget/Button;
    .param p4, "overlay"    # Landroid/widget/LinearLayout;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "middle"    # Landroid/widget/Button;
    .param p7, "right"    # Landroid/widget/Button;
    .param p8, "view"    # Landroid/view/View;

    .line 527
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x3f28f5c3    # 0.66f

    if-nez v0, :cond_3

    .line 528
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 530
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 531
    .local v0, "m":I
    if-ne v0, v3, :cond_0

    const-string v1, "L"

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const-string v1, "M"

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const-string v1, "R"

    goto :goto_0

    :cond_2
    const-string v1, "U"

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 532
    .end local v0    # "m":I
    goto :goto_3

    .line 533
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 535
    const-string v0, "X"

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/Button;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 539
    .local v0, "maxX":F
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Landroid/widget/Button;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 542
    .local v4, "maxY":F
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getX()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    invoke-virtual {p4, v5}, Landroid/widget/LinearLayout;->setX(F)V

    .line 543
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getY()F

    move-result v5

    invoke-static {v5, v6, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    invoke-virtual {p4, v5}, Landroid/widget/LinearLayout;->setY(F)V

    .line 545
    sget v5, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 546
    .local v5, "m":I
    if-ne v5, v3, :cond_5

    :cond_4
    goto :goto_1

    :cond_5
    if-ne v5, v2, :cond_6

    move-object v1, p6

    goto :goto_2

    :cond_6
    if-ne v5, v1, :cond_4

    move-object v1, p7

    goto :goto_2

    :goto_1
    move-object v1, p3

    :goto_2
    invoke-interface {p5, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 548
    .end local v0    # "maxX":F
    .end local v4    # "maxY":F
    .end local v5    # "m":I
    :goto_3
    return-void
.end method

.method synthetic lambda$initStylusAuxButtons$15$com-termux-x11-MainActivity(Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7
    .param p1, "visibility"    # Landroid/widget/Button;
    .param p2, "overlay"    # Landroid/widget/LinearLayout;
    .param p3, "v2"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/DragEvent;

    .line 561
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 562
    .local v0, "maxX":F
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 564
    .local v1, "maxY":F
    invoke-virtual {p4}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 576
    :pswitch_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    invoke-static {v2, v3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setX(F)V

    .line 577
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    invoke-static {v2, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setY(F)V

    goto :goto_0

    .line 567
    :pswitch_2
    invoke-virtual {p4}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    .line 568
    .local v2, "dX":F
    invoke-virtual {p4}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    .line 571
    .local v4, "dY":F
    invoke-static {v2, v3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setX(F)V

    .line 572
    invoke-static {v4, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setY(F)V

    .line 573
    nop

    .line 580
    .end local v2    # "dX":F
    .end local v4    # "dY":F
    :goto_0
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$initStylusAuxButtons$16$com-termux-x11-MainActivity(Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View;)Z
    .locals 4
    .param p1, "visibility"    # Landroid/widget/Button;
    .param p2, "overlay"    # Landroid/widget/LinearLayout;
    .param p3, "v"    # Landroid/view/View;

    .line 554
    const-string v0, ""

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/MainActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/termux/x11/MainActivity$4;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View;)V

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 559
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 583
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onConfigurationChanged$24$com-termux-x11-MainActivity()V
    .locals 1

    .line 909
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->regenerate()V

    .line 910
    return-void
.end method

.method synthetic lambda$onCreate$0$com-termux-x11-MainActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->onX11PreferenceSwitchChange(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-termux-x11-MainActivity(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "k"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .line 293
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/TouchInputHandler;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 299
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_5

    .line 300
    sget-boolean v0, Lcom/termux/x11/MainActivity;->softKeyboardShown:Z

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 302
    invoke-static {}, Lcom/termux/x11/MainActivity;->closeSoftKeyboard()V

    .line 304
    :cond_1
    return v2

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/termux/x11/MainActivity;->mEnableFloatBallMenu:Z

    if-nez v0, :cond_3

    .line 307
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 308
    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->releaseSlider(Z)V

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getX11Focus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 312
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 313
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->back2PreviousMenu()Z

    move-result v0

    if-nez v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v0, v1}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->onX11PreferenceSwitchChange(Z)V

    .line 317
    :cond_4
    return v2

    .line 320
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 321
    .local v0, "dev":Landroid/view/InputDevice;
    iget-object v3, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v3, p3}, Lcom/termux/x11/input/TouchInputHandler;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 325
    .local v3, "result":Z
    invoke-direct {p0, v0}, Lcom/termux/x11/MainActivity;->isIgnoredDevice(Landroid/view/InputDevice;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->isGamepadConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 326
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    .line 335
    .local v4, "device":Landroid/view/InputDevice;
    const/4 v5, 0x0

    .line 336
    .local v5, "handledByWine":Z
    const/4 v6, 0x0

    .line 337
    .local v6, "handledByX11":Z
    const/4 v7, 0x0

    .line 339
    .local v7, "handledByInputHandler":Z
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->isWineRunning()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 340
    iget-object v8, p0, Lcom/termux/x11/MainActivity;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    invoke-virtual {v8, p3}, Lcom/termux/x11/controller/winhandler/WinHandler;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 341
    const/4 v5, 0x1

    .line 345
    :cond_6
    iget-object v8, p0, Lcom/termux/x11/MainActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v8, p3}, Lcom/termux/x11/controller/widget/InputControlsView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    .line 348
    iget-object v8, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v8, p3}, Lcom/termux/x11/input/TouchInputHandler;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    .line 354
    if-nez v5, :cond_7

    if-nez v6, :cond_7

    if-eqz v7, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1

    .line 359
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v5    # "handledByWine":Z
    .end local v6    # "handledByX11":Z
    .end local v7    # "handledByInputHandler":Z
    :cond_9
    iget-boolean v1, p0, Lcom/termux/x11/MainActivity;->useTermuxEKBarBehaviour:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    if-eqz v1, :cond_b

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 360
    :cond_a
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-virtual {v1}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->unsetSpecialKeys()V

    .line 362
    :cond_b
    return v3
.end method

.method synthetic lambda$onCreate$2$com-termux-x11-MainActivity(Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "e"    # Landroid/view/MotionEvent;

    .line 370
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p1, p3}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onCreate$4$com-termux-x11-MainActivity(Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "lorieParent"    # Landroid/view/View;
    .param p2, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "e"    # Landroid/view/MotionEvent;

    .line 378
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2, p4}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onCreate$5$com-termux-x11-MainActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 381
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/x11/MainActivity;->isIgnoredDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->isGamepadConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->isWineRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    invoke-virtual {v0, p2}, Lcom/termux/x11/controller/winhandler/WinHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->inputControlsView:Lcom/termux/x11/controller/widget/InputControlsView;

    invoke-virtual {v0, p2}, Lcom/termux/x11/controller/widget/InputControlsView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 390
    .local v0, "handledByX11":Z
    const/4 v1, 0x1

    return v1

    .line 392
    .end local v0    # "handledByX11":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onCreate$6$com-termux-x11-MainActivity(Lcom/termux/x11/LorieView;IIII)V
    .locals 2
    .param p1, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "screenWidth"    # I
    .param p5, "screenHeight"    # I

    .line 404
    invoke-virtual {p1}, Lcom/termux/x11/LorieView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/termux/x11/LorieView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    :goto_0
    float-to-int v0, v0

    .line 406
    .local v0, "framerate":I
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v1, p2, p3}, Lcom/termux/x11/input/TouchInputHandler;->handleHostSizeChanged(II)V

    .line 407
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v1, p4, p5}, Lcom/termux/x11/input/TouchInputHandler;->handleClientSizeChanged(II)V

    .line 408
    iget-object v1, p1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    invoke-virtual {v1, p2, p3}, Lcom/termux/x11/ScreenInfo;->handleHostSizeChanged(II)V

    .line 409
    iget-object v1, p1, Lcom/termux/x11/LorieView;->screenInfo:Lcom/termux/x11/ScreenInfo;

    invoke-virtual {v1, p4, p5}, Lcom/termux/x11/ScreenInfo;->handleClientSizeChanged(II)V

    .line 410
    invoke-virtual {p1}, Lcom/termux/x11/LorieView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/termux/x11/LorieView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 412
    :cond_1
    invoke-static {p0}, Lcom/termux/x11/utils/SamsungDexUtils;->checkDeXEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    const-string v1, "Dex Display"

    .local v1, "name":Ljava/lang/String;
    goto :goto_2

    .line 415
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string v1, "External Display"

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_2

    .line 411
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v1, "Builtin Display"

    .line 416
    .restart local v1    # "name":Ljava/lang/String;
    :goto_2
    invoke-static {p4, p5, v0, v1}, Lcom/termux/x11/LorieView;->sendWindowChange(IIILjava/lang/String;)V

    .line 417
    return-void
.end method

.method synthetic lambda$onCreate$7$com-termux-x11-MainActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method synthetic lambda$onCreate$8$com-termux-x11-MainActivity()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    invoke-virtual {v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->start()V

    .line 452
    return-void
.end method

.method synthetic lambda$onReceiveConnection$21$com-termux-x11-MainActivity()V
    .locals 1

    .line 702
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/termux/x11/LorieView;->connect(I)V

    .line 703
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->clientConnectedStateChanged()V

    .line 704
    return-void
.end method

.method synthetic lambda$onReceiveConnection$22$com-termux-x11-MainActivity()V
    .locals 2

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    .line 700
    const-string v0, "Lorie"

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda21;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 705
    return-void
.end method

.method synthetic lambda$setTerminalToolbarView$23$com-termux-x11-MainActivity(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "k"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .line 846
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/TouchInputHandler;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 893
    invoke-super {p0, p1}, Lcom/termux/x11/LoriePreferences;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 895
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/termux/x11/MainActivity;->orientation:I

    if-eq v0, v1, :cond_0

    .line 896
    invoke-static {}, Lcom/termux/x11/MainActivity;->closeSoftKeyboard()V

    .line 899
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/termux/x11/MainActivity;->orientation:I

    .line 900
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v0, :cond_2

    .line 901
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 902
    .local v0, "p":Landroid/content/SharedPreferences;
    const-string v1, "forceLandscape"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 903
    .local v1, "forceLandscape":Z
    if-nez v1, :cond_1

    .line 904
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {v2, v3}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->onChangeOrientation(I)V

    goto :goto_0

    .line 906
    :cond_1
    iget-object v3, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    invoke-interface {v3, v2}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->onChangeOrientation(I)V

    .line 908
    :goto_0
    sget-object v2, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda22;-><init>(Lcom/termux/x11/MainActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 912
    .end local v0    # "p":Landroid/content/SharedPreferences;
    .end local v1    # "forceLandscape":Z
    :cond_2
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 914
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 258
    invoke-super {p0, p1}, Lcom/termux/x11/LoriePreferences;->onCreate(Landroid/os/Bundle;)V

    .line 260
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    .local v0, "preferences":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 262
    .local v1, "modeValue":I
    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    .line 263
    sget-object v4, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v4, v4, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->put(Ljava/lang/String;)V

    .line 266
    :cond_0
    sget-object v4, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v4, v4, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v4

    sput-boolean v4, Lcom/termux/x11/MainActivity;->oldFullscreen:Z

    .line 267
    sget-object v4, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v4, v4, Lcom/termux/x11/Prefs;->hideCutout:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v4

    sput-boolean v4, Lcom/termux/x11/MainActivity;->oldHideCutout:Z

    .line 272
    sget v4, Lcom/termux/x11/R$layout;->main_activity:I

    invoke-virtual {p0, v4}, Lcom/termux/x11/MainActivity;->setContentView(I)V

    .line 273
    sget v4, Lcom/termux/x11/R$id;->id_display_window:I

    invoke-virtual {p0, v4}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/x11/MainActivity;->lorieContentView:Landroid/view/View;

    .line 275
    sget v4, Lcom/termux/x11/R$id;->frame:I

    invoke-virtual {p0, v4}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    .line 276
    sget v4, Lcom/termux/x11/R$id;->preferences_button:I

    invoke-virtual {p0, v4}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    sget v4, Lcom/termux/x11/R$id;->lorieView:I

    invoke-virtual {p0, v4}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/termux/x11/LorieView;

    .line 282
    .local v4, "lorieView":Lcom/termux/x11/LorieView;
    invoke-virtual {v4}, Lcom/termux/x11/LorieView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 285
    .local v5, "lorieParent":Landroid/view/View;
    new-instance v6, Lcom/termux/x11/input/TouchInputHandler;

    new-instance v7, Lcom/termux/x11/input/InputEventSender;

    invoke-direct {v7, v4}, Lcom/termux/x11/input/InputEventSender;-><init>(Lcom/termux/x11/input/InputStub;)V

    invoke-direct {v6, p0, v7}, Lcom/termux/x11/input/TouchInputHandler;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/InputEventSender;)V

    iput-object v6, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    .line 286
    const-string v6, "touch_sensitivity"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 287
    .local v2, "touch_sensitivity":I
    iget-object v6, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v6, v2}, Lcom/termux/x11/input/TouchInputHandler;->setLongPressedDelay(I)V

    .line 289
    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/termux/x11/MainActivity;)V

    iput-object v6, p0, Lcom/termux/x11/MainActivity;->mLorieKeyListener:Landroid/view/View$OnKeyListener;

    .line 370
    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0, v4}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v4, v6}, Lcom/termux/x11/LorieView;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 377
    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0, v5, v4}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v4, v6}, Lcom/termux/x11/LorieView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 380
    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v6, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v4, v6}, Lcom/termux/x11/LorieView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 400
    iget-object v6, p0, Lcom/termux/x11/MainActivity;->mLorieKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v6}, Lcom/termux/x11/LorieView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 402
    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v6, p0, v4}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v4, v6}, Lcom/termux/x11/LorieView;->setCallback(Lcom/termux/x11/LorieView$Callback;)V

    .line 419
    iget-object v6, p0, Lcom/termux/x11/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Lcom/termux/x11/MainActivity$3;

    const-string v8, "com.termux.x11.CmdEntryPoint.ACTION_START"

    invoke-direct {v7, p0, v8}, Lcom/termux/x11/MainActivity$3;-><init>(Lcom/termux/x11/MainActivity;Ljava/lang/String;)V

    .line 423
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x21

    const/4 v10, 0x0

    if-lt v8, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 419
    :goto_0
    invoke-virtual {p0, v6, v7, v3}, Lcom/termux/x11/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 425
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/termux/x11/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    sput-object v3, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 430
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->tryConnect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 432
    .local v3, "content":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 433
    sget-object v6, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v7, p0, v3}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View;)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    .end local v3    # "content":Landroid/view/View;
    :cond_2
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/termux/x11/MainActivity;->onPreferencesChanged(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, v10, v10}, Lcom/termux/x11/MainActivity;->toggleExtraKeys(ZZ)V

    .line 439
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->initStylusAuxButtons()V

    .line 440
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->initMouseAuxButtons()V

    .line 441
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->setupInputController()V

    .line 442
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->checkConnectedControllers()V

    .line 443
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_3

    .line 444
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v3}, Lcom/termux/x11/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 445
    invoke-virtual {p0, v3}, Lcom/termux/x11/MainActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 446
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v10}, Lcom/termux/x11/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 448
    :cond_3
    new-instance v3, Lcom/termux/x11/controller/winhandler/WinHandler;

    invoke-direct {v3, p0}, Lcom/termux/x11/controller/winhandler/WinHandler;-><init>(Lcom/termux/x11/MainActivity;)V

    iput-object v3, p0, Lcom/termux/x11/MainActivity;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    .line 449
    iget-object v3, p0, Lcom/termux/x11/MainActivity;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    invoke-virtual {v4, v3}, Lcom/termux/x11/LorieView;->setWinHandler(Lcom/termux/x11/controller/winhandler/WinHandler;)V

    .line 450
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->winHandler:Lcom/termux/x11/controller/winhandler/WinHandler;

    invoke-virtual {v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->stop()V

    .line 468
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 469
    invoke-super {p0}, Lcom/termux/x11/LoriePreferences;->onDestroy()V

    .line 470
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 826
    invoke-super {p0}, Lcom/termux/x11/LoriePreferences;->onPause()V

    .line 827
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 4
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 1032
    iput-boolean p1, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    .line 1033
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 1034
    .local v0, "pager":Landroidx/viewpager/widget/ViewPager;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->opacityEKBar:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAlpha(F)V

    .line 1035
    sget v2, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const v3, 0x3f333333    # 0.7f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1036
    sget v2, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1037
    invoke-super {p0, p1, p2}, Lcom/termux/x11/LoriePreferences;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 1038
    return-void
.end method

.method protected onPreferencesChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 766
    const-string v0, "additionalKbdVisible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    return-void

    .line 769
    :cond_0
    const-string v0, "enableFloatBallMenu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 770
    const-string v0, "enableGlobalFloatBallMenu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 779
    :cond_1
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 780
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 781
    return-void

    .line 771
    :cond_2
    :goto_0
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->enableGlobalFloatBallMenu:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    .line 772
    .local v0, "enableGlobalFloatBallMenu":Z
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableFloatBallMenu:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/x11/MainActivity;->mEnableFloatBallMenu:Z

    .line 773
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    if-eqz v1, :cond_3

    .line 774
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->termuxActivityListener:Lcom/termux/x11/LoriePreferences$TermuxActivityListener;

    iget-boolean v2, p0, Lcom/termux/x11/MainActivity;->mEnableFloatBallMenu:Z

    invoke-interface {v1, v2, v0}, Lcom/termux/x11/LoriePreferences$TermuxActivityListener;->setFloatBallMenu(ZZ)V

    .line 776
    :cond_3
    return-void
.end method

.method onPreferencesChangedCallback()V
    .locals 4

    .line 785
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->recheckStoringSecondaryDisplayPreferences()V

    .line 787
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->onWindowFocusChanged(Z)V

    .line 788
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    .line 790
    .local v0, "lorieView":Lcom/termux/x11/LorieView;
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v1, v2}, Lcom/termux/x11/input/TouchInputHandler;->reloadPreferences(Lcom/termux/x11/Prefs;)V

    .line 791
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->reloadPreferences(Lcom/termux/x11/Prefs;)V

    .line 793
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 795
    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->triggerCallback()V

    .line 797
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->filterOutWinkey:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/x11/MainActivity;->filterOutWinKey:Z

    .line 798
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    invoke-static {p0}, Lcom/termux/x11/utils/KeyInterceptor;->launch(Landroid/content/Context;)V

    goto :goto_0

    .line 800
    :cond_0
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 801
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/termux/x11/utils/KeyInterceptor;->shutdown(Z)V

    .line 803
    :cond_1
    :goto_0
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->useTermuxEKBarBehaviour:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/x11/MainActivity;->useTermuxEKBarBehaviour:Z

    .line 804
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->showIMEWhileExternalConnected:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    sput-boolean v1, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    .line 806
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 807
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/termux/x11/MainActivity;->showMouseAuxButtons(Z)V

    .line 808
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->showStylusClickOverride:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/termux/x11/MainActivity;->showStylusAuxButtons(Z)V

    .line 810
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->opacityEKBar:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAlpha(F)V

    .line 812
    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->requestLayout()V

    .line 813
    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->invalidate()V

    .line 814
    return-void
.end method

.method onReceiveConnection(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 690
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 691
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 692
    .local v0, "ibinder":Landroid/os/IBinder;
    :goto_1
    if-nez v0, :cond_2

    .line 693
    return-void

    .line 695
    :cond_2
    invoke-static {v0}, Lcom/termux/x11/ICmdEntryInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/termux/x11/ICmdEntryInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    .line 697
    :try_start_0
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    invoke-interface {v2}, Lcom/termux/x11/ICmdEntryInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/termux/x11/MainActivity;)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    goto :goto_2

    .line 706
    :catch_0
    move-exception v2

    .line 710
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    invoke-interface {v2}, Lcom/termux/x11/ICmdEntryInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 711
    const-string v2, "LorieBroadcastReceiver"

    const-string v3, "Extracting logcat fd."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    invoke-interface {v2}, Lcom/termux/x11/ICmdEntryInterface;->getLogcatOutput()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 713
    .local v2, "logcatOutput":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_3

    .line 714
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    invoke-static {v3}, Lcom/termux/x11/LorieView;->startLogcat(I)V

    .line 716
    :cond_3
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->tryConnect()Z

    .line 718
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eq p1, v3, :cond_4

    .line 720
    invoke-virtual {p0, p1}, Lcom/termux/x11/MainActivity;->setIntent(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 725
    .end local v2    # "logcatOutput":Landroid/os/ParcelFileDescriptor;
    :cond_4
    goto :goto_3

    .line 723
    :catch_1
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MainActivity"

    const-string v4, "Something went wrong while we were establishing connection"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 818
    invoke-super {p0}, Lcom/termux/x11/LoriePreferences;->onResume()V

    .line 820
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 821
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->requestFocus()Z

    .line 822
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 3

    .line 1021
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1022
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "PIP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/termux/x11/MainActivity;->hasPipPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->enterPictureInPictureMode()V

    .line 1025
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 12
    .param p1, "hasFocus"    # Z

    .line 933
    invoke-super {p0, p1}, Lcom/termux/x11/LoriePreferences;->onWindowFocusChanged(Z)V

    .line 934
    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->recheck()V

    .line 935
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/Prefs;->recheckStoringSecondaryDisplayPreferences()V

    .line 936
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 937
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 938
    .local v1, "decorView":Landroid/view/View;
    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    .line 939
    .local v2, "fullscreen":Z
    sget-object v3, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v3, v3, Lcom/termux/x11/Prefs;->hideCutout:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v3

    .line 940
    .local v3, "hideCutout":Z
    sget-object v4, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v4, v4, Lcom/termux/x11/Prefs;->Reseed:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v4

    .line 943
    .local v4, "reseed":Z
    sget-object v5, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v5, v5, Lcom/termux/x11/Prefs;->forceOrientation:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v6, "landscape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_1
    const-string v6, "portrait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_2
    const-string v6, "reverse landscape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v6, "reverse portrait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 957
    const/4 v5, -0x1

    .local v5, "requestedOrientation":I
    goto :goto_2

    .line 954
    .end local v5    # "requestedOrientation":I
    :pswitch_0
    const/16 v5, 0x8

    .line 955
    .restart local v5    # "requestedOrientation":I
    goto :goto_2

    .line 951
    .end local v5    # "requestedOrientation":I
    :pswitch_1
    const/16 v5, 0x9

    .line 952
    .restart local v5    # "requestedOrientation":I
    goto :goto_2

    .line 948
    .end local v5    # "requestedOrientation":I
    :pswitch_2
    const/4 v5, 0x0

    .line 949
    .restart local v5    # "requestedOrientation":I
    goto :goto_2

    .line 945
    .end local v5    # "requestedOrientation":I
    :pswitch_3
    const/4 v5, 0x1

    .line 946
    .restart local v5    # "requestedOrientation":I
    nop

    .line 960
    :goto_2
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getRequestedOrientation()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 961
    invoke-virtual {p0, v5}, Lcom/termux/x11/MainActivity;->setRequestedOrientation(I)V

    .line 963
    :cond_1
    if-eqz p1, :cond_5

    .line 964
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v6, v10, :cond_4

    .line 965
    if-eqz v3, :cond_3

    .line 966
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1e

    if-lt v10, v11, :cond_2

    .line 967
    const/4 v7, 0x3

    goto :goto_3

    .line 968
    :cond_2
    nop

    :goto_3
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_4

    .line 970
    :cond_3
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 973
    :cond_4
    :goto_4
    const/high16 v6, -0x1000000

    invoke-virtual {v0, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 974
    invoke-virtual {v0, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 977
    :cond_5
    const v6, -0x7bffff80

    invoke-virtual {v0, v6, v9}, Landroid/view/Window;->setFlags(II)V

    .line 978
    if-eqz p1, :cond_7

    .line 979
    const/16 v6, 0x400

    if-eqz v2, :cond_6

    .line 980
    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 981
    const/16 v6, 0x1706

    invoke-virtual {v1, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_5

    .line 989
    :cond_6
    invoke-virtual {v0, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 990
    invoke-virtual {v1, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 994
    :cond_7
    :goto_5
    sget-object v6, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v6, v6, Lcom/termux/x11/Prefs;->keepScreenOn:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v6}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v6

    const/16 v7, 0x80

    if-eqz v6, :cond_8

    .line 995
    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    goto :goto_6

    .line 997
    :cond_8
    invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 999
    :goto_6
    if-eqz v4, :cond_9

    const/16 v6, 0x10

    goto :goto_7

    :cond_9
    const/16 v6, 0x20

    :goto_7
    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1002
    if-eqz p1, :cond_a

    .line 1003
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/termux/x11/LorieView;->regenerate()V

    .line 1004
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/termux/x11/LorieView;->requestLayout()V

    .line 1006
    :cond_a
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/termux/x11/LorieView;->requestFocus()Z

    .line 1007
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7eb698e7 -> :sswitch_3
        -0x46564903 -> :sswitch_2
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExternalKeyboardConnected(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .line 1112
    sput-boolean p1, Lcom/termux/x11/MainActivity;->externalKeyboardConnected:Z

    .line 1113
    sget v0, Lcom/termux/x11/R$id;->display_terminal_toolbar_text_input:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/EditText;

    .line 1114
    .local v0, "textInput":Lcom/termux/x11/EditText;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1115
    if-eqz p1, :cond_1

    sget-boolean v2, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/termux/x11/EditText;->setShowSoftInputOnFocus(Z)V

    .line 1116
    :cond_2
    if-eqz p1, :cond_3

    sget-boolean v2, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    if-nez v2, :cond_3

    .line 1117
    sget-object v2, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1118
    :cond_3
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/LorieView;->requestFocus()Z

    .line 1119
    return-void
.end method

.method setSize(Landroid/view/View;II)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 589
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 590
    int-to-float v1, p3

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 591
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 593
    int-to-float v1, p3

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 594
    return-void
.end method

.method public setX11FocusedChanged(Z)V
    .locals 0
    .param p1, "x11Focused"    # Z

    .line 758
    invoke-static {p1}, Lcom/termux/x11/utils/FullscreenWorkaround;->setX11Focused(Z)V

    .line 759
    return-void
.end method

.method public shouldInterceptKeys()Z
    .locals 2

    .line 1104
    sget v0, Lcom/termux/x11/R$id;->display_terminal_toolbar_text_input:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1105
    .local v0, "textInput":Landroid/view/View;
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1108
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v1}, Lcom/termux/x11/input/TouchInputHandler;->shouldInterceptKeys()Z

    move-result v1

    return v1

    .line 1106
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public showProcessManagerDialog()V
    .locals 1

    .line 1170
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1176
    :cond_0
    :try_start_0
    new-instance v0, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;-><init>(Lcom/termux/x11/MainActivity;)V

    .line 1177
    .local v0, "dialog":Lcom/termux/x11/controller/winhandler/TaskManagerDialog;
    invoke-virtual {v0}, Lcom/termux/x11/controller/winhandler/TaskManagerDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    .end local v0    # "dialog":Lcom/termux/x11/controller/winhandler/TaskManagerDialog;
    goto :goto_0

    .line 1178
    :catch_0
    move-exception v0

    .line 1181
    :goto_0
    return-void

    .line 1172
    :cond_1
    :goto_1
    return-void
.end method

.method public toggleExtraKeys()V
    .locals 3

    .line 877
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getDisplayTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getVisibility()I

    move-result v0

    .line 878
    .local v0, "visibility":I
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/termux/x11/MainActivity;->toggleExtraKeys(ZZ)V

    .line 879
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/LorieView;->requestFocus()Z

    .line 880
    return-void
.end method

.method public toggleExtraKeys(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "saveState"    # Z

    .line 867
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->showAdditionalKbd:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    .line 869
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 870
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1, p1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 873
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->Reseed:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 874
    return-void
.end method

.method public toggleMouseAuxButtons()V
    .locals 1

    .line 1165
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/termux/x11/MainActivity;->showMouseAuxButtons(Z)V

    .line 1166
    return-void
.end method

.method public toggleStylusAuxButtons()V
    .locals 1

    .line 1153
    sget v0, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/termux/x11/MainActivity;->showStylusAuxButtons(Z)V

    .line 1154
    invoke-direct {p0}, Lcom/termux/x11/MainActivity;->makeSureHelpersAreVisibleAndInScreenBounds()V

    .line 1155
    return-void
.end method

.method tryConnect()Z
    .locals 7

    .line 729
    const-string v0, "MainActivity"

    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 730
    return v2

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    const-wide/16 v3, 0xfa

    if-nez v1, :cond_1

    .line 733
    invoke-static {}, Lcom/termux/x11/LorieView;->requestConnection()Z

    move-result v0

    .line 734
    .local v0, "sent":Z
    sget-object v1, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    const/4 v1, 0x1

    return v1

    .line 739
    .end local v0    # "sent":Z
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    invoke-interface {v1}, Lcom/termux/x11/ICmdEntryInterface;->getXConnection()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 740
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2

    .line 741
    const-string v5, "Extracting X connection socket."

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v5

    invoke-static {v5}, Lcom/termux/x11/LorieView;->connect(I)V

    .line 743
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/x11/LorieView;->triggerCallback()V

    .line 744
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->clientConnectedStateChanged()V

    .line 745
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v5

    sget-object v6, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v5, v6}, Lcom/termux/x11/LorieView;->reloadPreferences(Lcom/termux/x11/Prefs;)V

    goto :goto_0

    .line 747
    :cond_2
    sget-object v5, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    goto :goto_1

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Something went wrong while we were establishing connection"

    invoke-static {v0, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    .line 752
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 754
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v2
.end method

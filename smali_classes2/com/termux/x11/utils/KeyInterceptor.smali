.class public Lcom/termux/x11/utils/KeyInterceptor;
.super Landroid/accessibilityservice/AccessibilityService;
.source "KeyInterceptor.java"


# static fields
.field private static final disableImmediatelyCallback:Ljava/lang/Runnable;

.field private static final handler:Landroid/os/Handler;

.field private static launchedAutomatically:Z

.field private static self:Lcom/termux/x11/utils/KeyInterceptor;


# instance fields
.field private enabled:Z

.field pressedKeys:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2PnDcqv36GeD5NRdc3LekbBJDQw()V
    .locals 0

    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->disableImmediately()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/termux/x11/utils/KeyInterceptor;->handler:Landroid/os/Handler;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/x11/utils/KeyInterceptor;->launchedAutomatically:Z

    .line 66
    new-instance v0, Lcom/termux/x11/utils/KeyInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/termux/x11/utils/KeyInterceptor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/termux/x11/utils/KeyInterceptor;->disableImmediatelyCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/utils/KeyInterceptor;->pressedKeys:Ljava/util/LinkedHashSet;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/utils/KeyInterceptor;->enabled:Z

    .line 28
    sput-object p0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    .line 29
    return-void
.end method

.method private static disableImmediately()V
    .locals 2

    .line 68
    sget-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const-string v0, "KeyInterceptor"

    const-string v1, "disabling interception service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    new-instance v1, Lcom/termux/x11/utils/KeyInterceptor$1;

    invoke-direct {v1}, Lcom/termux/x11/utils/KeyInterceptor$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/termux/x11/utils/KeyInterceptor;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 73
    sget-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/termux/x11/utils/KeyInterceptor;->enabled:Z

    .line 74
    return-void
.end method

.method public static isLaunched()Z
    .locals 2

    .line 62
    sget-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    invoke-virtual {v0}, Lcom/termux/x11/utils/KeyInterceptor;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 63
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static launch(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    const-string v2, "com.termux.x11/.utils.KeyInterceptor"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/termux/x11/utils/KeyInterceptor;->launchedAutomatically:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v2, "Permission denied"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 39
    const-string v2, "Android requires WRITE_SECURE_SETTINGS permission to start accessibility service automatically.\nPlease, launch this command using ADB:\nadb shell pm grant com.termux.x11 android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 42
    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 46
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    .line 48
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method

.method public static recheck()V
    .locals 6

    .line 77
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    .line 78
    .local v0, "a":Lcom/termux/x11/MainActivity;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    iget-object v2, v2, Lcom/termux/x11/utils/KeyInterceptor;->pressedKeys:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 79
    .local v2, "shouldBeEnabled":Z
    :goto_0
    sget-object v3, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    iget-boolean v3, v3, Lcom/termux/x11/utils/KeyInterceptor;->enabled:Z

    if-eq v2, v3, :cond_3

    .line 80
    if-eqz v2, :cond_2

    .line 81
    sget-object v3, Lcom/termux/x11/utils/KeyInterceptor;->handler:Landroid/os/Handler;

    sget-object v4, Lcom/termux/x11/utils/KeyInterceptor;->disableImmediatelyCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    const-string v3, "KeyInterceptor"

    const-string v4, "enabling interception service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v3, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    new-instance v4, Lcom/termux/x11/utils/KeyInterceptor$2;

    invoke-direct {v4}, Lcom/termux/x11/utils/KeyInterceptor$2;-><init>()V

    invoke-virtual {v3, v4}, Lcom/termux/x11/utils/KeyInterceptor;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 84
    sget-object v3, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    iput-boolean v1, v3, Lcom/termux/x11/utils/KeyInterceptor;->enabled:Z

    goto :goto_1

    .line 88
    :cond_2
    sget-object v1, Lcom/termux/x11/utils/KeyInterceptor;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/termux/x11/utils/KeyInterceptor;->disableImmediatelyCallback:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_3
    :goto_1
    return-void
.end method

.method public static shutdown(Z)V
    .locals 1
    .param p0, "onlyIfEnabledAutomatically"    # Z

    .line 51
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/termux/x11/utils/KeyInterceptor;->launchedAutomatically:Z

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    invoke-virtual {v0}, Lcom/termux/x11/utils/KeyInterceptor;->disableSelf()V

    .line 56
    sget-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    iget-object v0, v0, Lcom/termux/x11/utils/KeyInterceptor;->pressedKeys:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/termux/x11/utils/KeyInterceptor;->self:Lcom/termux/x11/utils/KeyInterceptor;

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 119
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 122
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "ret":Z
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v1

    .line 97
    .local v1, "instance":Lcom/termux/x11/MainActivity;
    if-nez v1, :cond_0

    .line 98
    const/4 v2, 0x0

    return v2

    .line 100
    :cond_0
    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->shouldInterceptKeys()Z

    move-result v2

    .line 102
    .local v2, "intercept":Z
    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object v4, p0, Lcom/termux/x11/utils/KeyInterceptor;->pressedKeys:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    :cond_1
    invoke-virtual {v1, p1}, Lcom/termux/x11/MainActivity;->handleKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 105
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 106
    iget-object v3, p0, Lcom/termux/x11/utils/KeyInterceptor;->pressedKeys:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 111
    iget-object v3, p0, Lcom/termux/x11/utils/KeyInterceptor;->pressedKeys:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 113
    :cond_4
    :goto_0
    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->recheck()V

    .line 115
    return v0
.end method

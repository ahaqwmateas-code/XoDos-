.class public Lcom/termux/x11/utils/SamsungDexUtils;
.super Ljava/lang/Object;
.source "SamsungDexUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static manager:Ljava/lang/Object;

.field private static requestMetaKeyEventMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 11
    const-class v0, Lcom/termux/x11/utils/SamsungDexUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/utils/SamsungDexUtils;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.samsung.android.view.SemWindowManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 18
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 19
    .local v2, "obtain":Ljava/lang/reflect/Method;
    const-string v4, "requestMetaKeyEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/ComponentName;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/termux/x11/utils/SamsungDexUtils;->requestMetaKeyEventMethod:Ljava/lang/reflect/Method;

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/termux/x11/utils/SamsungDexUtils;->manager:Ljava/lang/Object;

    .line 21
    sget-object v3, Lcom/termux/x11/utils/SamsungDexUtils;->TAG:Ljava/lang/String;

    const-string v4, "com.samsung.android.view.SemWindowManager is available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    nop

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "obtain":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, "ignored":Ljava/lang/Exception;
    sput-object v0, Lcom/termux/x11/utils/SamsungDexUtils;->requestMetaKeyEventMethod:Ljava/lang/reflect/Method;

    .line 24
    sput-object v0, Lcom/termux/x11/utils/SamsungDexUtils;->manager:Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/termux/x11/utils/SamsungDexUtils;->TAG:Ljava/lang/String;

    const-string v2, "com.samsung.android.view.SemWindowManager is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .end local v1    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available()Z
    .locals 1

    .line 30
    sget-object v0, Lcom/termux/x11/utils/SamsungDexUtils;->requestMetaKeyEventMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/termux/x11/utils/SamsungDexUtils;->manager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkDeXEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 49
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 50
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "SEM_DESKTOP_MODE_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "semDesktopModeEnabled"

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 50
    :cond_0
    return v1

    .line 52
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 53
    :goto_0
    return v1
.end method

.method public static dexMetaKeyCapture(Landroid/app/Activity;Z)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enable"    # Z

    .line 34
    invoke-static {}, Lcom/termux/x11/utils/SamsungDexUtils;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 38
    :cond_0
    :try_start_0
    sget-object v0, Lcom/termux/x11/utils/SamsungDexUtils;->requestMetaKeyEventMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/termux/x11/utils/SamsungDexUtils;->manager:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "it":Ljava/lang/Exception;
    sget-object v1, Lcom/termux/x11/utils/SamsungDexUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not call com.samsung.android.view.SemWindowManager.requestMetaKeyEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v1, Lcom/termux/x11/utils/SamsungDexUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "it":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

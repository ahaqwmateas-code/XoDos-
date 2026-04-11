.class public Lcom/termux/shared/termux/shell/command/environment/TermuxAPIShellEnvironment;
.super Ljava/lang/Object;
.source "TermuxAPIShellEnvironment.java"


# static fields
.field public static final ENV_TERMUX_API_APP__VERSION_NAME:Ljava/lang/String; = "TERMUX_API_APP__VERSION_NAME"

.field public static final TERMUX_API_APP_ENV_PREFIX:Ljava/lang/String; = "TERMUX_API_APP__"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnvironment(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 5
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->isTermuxAPIAppInstalled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 32
    :cond_0
    const-string v0, "com.termux.api"

    .line 33
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getPackageInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 34
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v1, "environment":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "TERMUX_API_APP__VERSION_NAME"

    invoke-static {v2}, Lcom/termux/shared/android/PackageUtils;->getVersionNameForPackage(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/termux/shared/shell/command/environment/ShellEnvironmentUtils;->putToEnvIfSet(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object v1
.end method

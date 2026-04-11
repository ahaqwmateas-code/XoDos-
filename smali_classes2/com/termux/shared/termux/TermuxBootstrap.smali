.class public Lcom/termux/shared/termux/TermuxBootstrap;
.super Ljava/lang/Object;
.source "TermuxBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;,
        Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;
    }
.end annotation


# static fields
.field public static final BUILD_CONFIG_FIELD_TERMUX_PACKAGE_VARIANT:Ljava/lang/String; = "TERMUX_PACKAGE_VARIANT"

.field private static final LOG_TAG:Ljava/lang/String; = "TermuxBootstrap"

.field public static TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

.field public static TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTermuxAppBuildConfigPackageVariantFromTermuxApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    .line 75
    :try_start_0
    const-string v0, "TERMUX_PACKAGE_VARIANT"

    invoke-static {p0, v0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxAppAPKBuildConfigClassField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TermuxBootstrap"

    const-string v2, "Failed to get \"TERMUX_PACKAGE_VARIANT\" value from \"com.termux.BuildConfig\" class"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isAppPackageManagerAPT()Z
    .locals 2

    .line 86
    sget-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->APT:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    sget-object v1, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAppPackageVariantAPTAndroid5()Z
    .locals 2

    .line 108
    sget-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->APT_ANDROID_5:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    sget-object v1, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAppPackageVariantAPTAndroid7()Z
    .locals 2

    .line 103
    sget-object v0, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->APT_ANDROID_7:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    sget-object v1, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setTermuxPackageManagerAndVariant(Ljava/lang/String;)V
    .locals 6
    .param p0, "packageVariantName"    # Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;->variantOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    .line 29
    sget-object v0, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    const-string v1, "\""

    if-eqz v0, :cond_2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set TERMUX_APP_PACKAGE_VARIANT to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TermuxBootstrap"

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 37
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "packageManagerName":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;->managerOf(Ljava/lang/String;)Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    move-result-object v4

    sput-object v4, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    .line 39
    sget-object v4, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    if-eqz v4, :cond_1

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set TERMUX_APP_PACKAGE_MANAGER to \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 40
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported TERMUX_APP_PACKAGE_MANAGER \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" with variant \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    .end local v0    # "index":I
    .end local v3    # "packageManagerName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported TERMUX_APP_PACKAGE_VARIANT \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTermuxPackageManagerAndVariantFromTermuxApp(Landroid/content/Context;)V
    .locals 3
    .param p0, "currentPackageContext"    # Landroid/content/Context;

    .line 56
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxBootstrap;->getTermuxAppBuildConfigPackageVariantFromTermuxApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "packageVariantName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lcom/termux/shared/termux/TermuxBootstrap;->setTermuxPackageManagerAndVariant(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    const-string v1, "TermuxBootstrap"

    const-string v2, "Failed to set TERMUX_APP_PACKAGE_VARIANT and TERMUX_APP_PACKAGE_MANAGER from the termux app"

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void
.end method

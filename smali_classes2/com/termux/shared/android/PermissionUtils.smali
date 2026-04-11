.class public Lcom/termux/shared/android/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PermissionUtils"

.field public static final REQUEST_DISABLE_BATTERY_OPTIMIZATIONS:I = 0x7d0

.field public static final REQUEST_GRANT_DISPLAY_OVER_OTHER_APPS_PERMISSION:I = 0x7d1

.field public static final REQUEST_GRANT_STORAGE_PERMISSION:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRequestLegacyOrManageExternalStoragePermission(Landroid/content/Context;IZ)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "showErrorMessage"    # Z

    .line 266
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->isLegacyExternalStoragePossible(Landroid/content/Context;)Z

    move-result v0

    .line 267
    .local v0, "requestLegacyStoragePermission":Z
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->checkIfHasRequestedLegacyExternalStorage(Landroid/content/Context;)Z

    move-result v1

    .line 269
    .local v1, "checkIfHasRequestedLegacyExternalStorage":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 271
    invoke-static {p0, p2}, Lcom/termux/shared/android/PermissionUtils;->hasRequestedLegacyExternalStorage(Landroid/content/Context;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    return v2

    .line 275
    :cond_0
    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->checkStoragePermission(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    const/4 v2, 0x1

    return v2

    .line 280
    :cond_1
    sget v3, Lcom/termux/shared/R$string;->msg_storage_permission_not_granted:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "errmsg":Ljava/lang/String;
    const-string v4, "PermissionUtils"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-eqz p2, :cond_2

    .line 283
    invoke-static {p0, v3, v2}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 285
    :cond_2
    if-ltz p1, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_3

    goto :goto_2

    .line 288
    :cond_3
    if-nez v0, :cond_5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_4

    goto :goto_0

    .line 291
    :cond_4
    invoke-static {p0, p1}, Lcom/termux/shared/android/PermissionUtils;->requestManageStorageExternalPermission(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;

    goto :goto_1

    .line 289
    :cond_5
    :goto_0
    invoke-static {p0, p1}, Lcom/termux/shared/android/PermissionUtils;->requestLegacyStorageExternalPermission(Landroid/content/Context;I)Z

    .line 294
    :goto_1
    return v2

    .line 286
    :cond_6
    :goto_2
    return v2
.end method

.method public static checkAndRequestLegacyOrManageExternalStoragePermissionIfPathOnPrimaryExternalStorage(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "showErrorMessage"    # Z

    .line 224
    nop

    .line 225
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sdcard"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 224
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/termux/shared/file/FileUtils;->isPathInDirPaths(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    return v1

    .line 228
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/termux/shared/android/PermissionUtils;->checkAndRequestLegacyOrManageExternalStoragePermission(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static checkDisplayOverOtherAppsPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 452
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 454
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static checkIfBatteryOptimizationsDisabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 529
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 530
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 532
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static checkIfHasRequestedLegacyExternalStorage(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 406
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getTargetSDKForPackage(Landroid/content/Context;)I

    move-result v0

    .line 408
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1d

    if-lt v0, v1, :cond_1

    .line 409
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 410
    :cond_1
    if-ne v0, v4, :cond_3

    .line 411
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 413
    :cond_3
    return v3
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 53
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 65
    invoke-static {p0, p1}, Lcom/termux/shared/android/PermissionUtils;->getPermissionsNotRequested(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "permissionsNotRequested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 67
    sget v1, Lcom/termux/shared/R$string;->error_attempted_to_check_for_permissions_not_requested:I

    .line 69
    const-string v4, ", "

    invoke-static {v4}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 68
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "PermissionUtils"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return v3

    .line 74
    :cond_0
    array-length v1, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p1, v4

    .line 75
    .local v5, "permission":Ljava/lang/String;
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 76
    .local v6, "result":I
    if-eqz v6, :cond_1

    .line 77
    return v3

    .line 74
    .end local v5    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v6    # "result":I
    :cond_2
    return v2
.end method

.method public static checkStoragePermission(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkLegacyStoragePermission"    # Z

    .line 310
    if-nez p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    return v0

    .line 311
    :cond_1
    :goto_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getPermissionsNotRequested(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "permissionsNotRequested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 188
    const/16 v1, 0x1000

    invoke-static {p0, v1}, Lcom/termux/shared/android/PackageUtils;->getPackageInfoForPackage(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 189
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 190
    return-object v0

    .line 194
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "requestedPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    .line 199
    .local v5, "permission":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 200
    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    .end local v5    # "permission":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_3
    return-object v0

    .line 195
    .end local v2    # "requestedPermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static hasRequestedLegacyExternalStorage(Landroid/content/Context;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showErrorMessage"    # Z

    .line 427
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->hasRequestedLegacyExternalStorage(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 428
    .local v0, "hasRequestedLegacyExternalStorage":Ljava/lang/Boolean;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    sget v2, Lcom/termux/shared/R$string;->error_has_not_requested_legacy_external_storage:I

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getTargetSDKForPackage(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v1

    const/4 v3, 0x2

    aput-object v5, v6, v3

    .line 429
    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "errmsg":Ljava/lang/String;
    const-string v3, "PermissionUtils"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz p1, :cond_0

    .line 433
    invoke-static {p0, v2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 434
    :cond_0
    return v7

    .line 437
    .end local v2    # "errmsg":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public static isLegacyExternalStoragePossible(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 391
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getTargetSDKForPackage(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 390
    :goto_1
    return v0
.end method

.method public static isPermissionRequested(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 172
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->getPermissionsNotRequested(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static requestDisableBatteryOptimizations(Landroid/content/Context;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 537
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->requestDisableBatteryOptimizations(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static requestDisableBatteryOptimizations(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .line 554
    const-string v0, "PermissionUtils"

    const-string v1, "Requesting to disable battery optimizations"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 557
    const/4 v0, 0x0

    return-object v0

    .line 559
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 564
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 565
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 567
    :cond_1
    if-ltz p1, :cond_2

    .line 568
    invoke-static {p0, p1, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1

    .line 570
    :cond_2
    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1
.end method

.method public static requestDisplayOverOtherAppsPermission(Landroid/content/Context;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 459
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->requestDisplayOverOtherAppsPermission(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static requestDisplayOverOtherAppsPermission(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .line 474
    const-string v0, "PermissionUtils"

    const-string v1, "Requesting display over apps permission"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 484
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 485
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 487
    :cond_1
    if-ltz p1, :cond_2

    .line 488
    invoke-static {p0, p1, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1

    .line 490
    :cond_2
    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1
.end method

.method public static requestLegacyStorageExternalPermission(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .line 331
    const-string v0, "PermissionUtils"

    const-string v1, "Requesting legacy external storage permission"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/android/PermissionUtils;->requestPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static requestManageStorageExternalPermission(Landroid/content/Context;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 338
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->requestManageStorageExternalPermission(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static requestManageStorageExternalPermission(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .line 354
    const-string v0, "PermissionUtils"

    const-string v1, "Requesting manage external storage permission"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 362
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 363
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_1

    .line 367
    invoke-static {p0, p1, v0, v2, v1}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .local v1, "error":Lcom/termux/shared/errors/Error;
    goto :goto_0

    .line 369
    .end local v1    # "error":Lcom/termux/shared/errors/Error;
    :cond_1
    invoke-static {p0, v0, v2, v1}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 372
    .restart local v1    # "error":Lcom/termux/shared/errors/Error;
    :goto_0
    if-eqz v1, :cond_3

    .line 373
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v0, v2

    .line 374
    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    if-ltz p1, :cond_2

    .line 376
    invoke-static {p0, p1, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivityForResult(Landroid/content/Context;ILandroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    return-object v2

    .line 378
    :cond_2
    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    return-object v2

    .line 381
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public static requestPermission(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 99
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/termux/shared/android/PermissionUtils;->requestPermissions(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static requestPermissions(Landroid/content/Context;[Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 123
    invoke-static {p0, p1}, Lcom/termux/shared/android/PermissionUtils;->getPermissionsNotRequested(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "permissionsNotRequested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "PermissionUtils"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    .line 125
    sget v1, Lcom/termux/shared/R$string;->error_attempted_to_ask_for_permissions_not_requested:I

    .line 127
    const-string v5, ", "

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 126
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p0, v2, v1}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return v4

    .line 131
    :cond_0
    array-length v1, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    aget-object v6, p1, v5

    .line 132
    .local v6, "permission":Ljava/lang/String;
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 134
    .local v7, "result":I
    if-eqz v7, :cond_3

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting Permissions: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x2

    :try_start_0
    instance-of v5, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v5, :cond_1

    .line 139
    move-object v5, p0

    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 140
    :cond_1
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 141
    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 152
    :goto_1
    goto :goto_2

    .line 143
    :cond_2
    sget-object v5, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_PARAMETER_NOT_INSTANCE_OF:Lcom/termux/shared/errors/Errno;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "context"

    aput-object v9, v8, v4

    const-string v9, "requestPermissions"

    aput-object v9, v8, v3

    const-string v9, "Activity or AppCompatActivity"

    aput-object v9, v8, v1

    .line 144
    invoke-virtual {v5, v8}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v5

    .line 143
    invoke-static {p0, v2, v5}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return v4

    .line 147
    :catch_0
    move-exception v5

    .line 148
    .local v5, "e":Ljava/lang/Exception;
    sget v8, Lcom/termux/shared/R$string;->error_failed_to_request_permissions:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v4

    aput-object v10, v1, v3

    invoke-virtual {p0, v8, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "errmsg":Ljava/lang/String;
    invoke-static {v2, v1, v5}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 151
    return v4

    .line 131
    .end local v1    # "errmsg":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "result":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 158
    :cond_4
    :goto_2
    return v3
.end method

.method public static validateDisplayOverOtherAppsPermissionForPostAndroid10(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logResults"    # Z

    .line 503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 505
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->checkDisplayOverOtherAppsPermission(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PermissionUtils"

    if-nez v0, :cond_2

    .line 506
    if-eqz p1, :cond_1

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not have Display over other apps (SYSTEM_ALERT_WINDOW) permission"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 510
    :cond_2
    if-eqz p1, :cond_3

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " already has Display over other apps (SYSTEM_ALERT_WINDOW) permission"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_3
    return v2
.end method

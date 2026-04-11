.class public Lcom/termux/shared/android/resource/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResourceUtils"

.field public static final RES_TYPE_COLOR:Ljava/lang/String; = "color"

.field public static final RES_TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final RES_TYPE_ID:Ljava/lang/String; = "id"

.field public static final RES_TYPE_LAYOUT:Ljava/lang/String; = "layout"

.field public static final RES_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final RES_TYPE_STYLE:Ljava/lang/String; = "style"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defPackage"    # Ljava/lang/String;
    .param p3, "logErrorMessage"    # Z

    .line 78
    const-string v0, "color"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/termux/shared/android/resource/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defPackage"    # Ljava/lang/String;
    .param p3, "logErrorMessage"    # Z

    .line 89
    const-string v0, "drawable"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/termux/shared/android/resource/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getIdResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defPackage"    # Ljava/lang/String;
    .param p3, "logErrorMessage"    # Z

    .line 100
    const-string v0, "id"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/termux/shared/android/resource/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defPackage"    # Ljava/lang/String;
    .param p3, "logErrorMessage"    # Z

    .line 111
    const-string v0, "layout"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/termux/shared/android/resource/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;
    .param p4, "logErrorMessage"    # Z

    .line 51
    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, "resourceId":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 59
    :cond_1
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 61
    :goto_0
    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource id not found. name: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", type: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", package: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", component \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResourceUtils"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_2
    return-object v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "logErrorMessage"    # Z

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/termux/shared/android/resource/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getStringResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defPackage"    # Ljava/lang/String;
    .param p3, "logErrorMessage"    # Z

    .line 122
    const-string v0, "string"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/termux/shared/android/resource/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getStyleResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defPackage"    # Ljava/lang/String;
    .param p3, "logErrorMessage"    # Z

    .line 133
    const-string v0, "style"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/termux/shared/android/resource/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

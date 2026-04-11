.class public Lcom/termux/shared/shell/am/AmSocketServerRunConfig;
.super Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;
.source "AmSocketServerRunConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_CHECK_DISPLAY_OVER_APPS_PERMISSION:Z = true


# instance fields
.field private mCheckDisplayOverAppsPermission:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/net/socket/local/ILocalSocketManager;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "localSocketManagerClient"    # Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/net/socket/local/ILocalSocketManager;)V

    .line 38
    return-void
.end method

.method public static getRunConfigLogString(Lcom/termux/shared/shell/am/AmSocketServerRunConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Lcom/termux/shared/shell/am/AmSocketServerRunConfig;

    .line 61
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->getLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRunConfigMarkdownString(Lcom/termux/shared/shell/am/AmSocketServerRunConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Lcom/termux/shared/shell/am/AmSocketServerRunConfig;

    .line 84
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->getMarkdownString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "logString":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "Am Command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->shouldCheckDisplayOverAppsPermission()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-"

    const-string v4, "CheckDisplayOverAppsPermission"

    invoke-static {v4, v2, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMarkdownString()Ljava/lang/String;
    .locals 5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getMarkdownString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Am Command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->shouldCheckDisplayOverAppsPermission()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-"

    const-string v4, "CheckDisplayOverAppsPermission"

    invoke-static {v4, v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setCheckDisplayOverAppsPermission(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "checkDisplayOverAppsPermission"    # Ljava/lang/Boolean;

    .line 48
    iput-object p1, p0, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->mCheckDisplayOverAppsPermission:Ljava/lang/Boolean;

    .line 49
    return-void
.end method

.method public shouldCheckDisplayOverAppsPermission()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->mCheckDisplayOverAppsPermission:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->mCheckDisplayOverAppsPermission:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->getLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

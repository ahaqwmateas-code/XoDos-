.class public Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;
.super Ljava/lang/Object;
.source "LocalSocketRunConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_BACKLOG:I = 0x32

.field public static final DEFAULT_DEADLINE:I = 0x0

.field public static final DEFAULT_RECEIVE_TIMEOUT:I = 0x2710

.field public static final DEFAULT_SEND_TIMEOUT:I = 0x2710


# instance fields
.field protected final mAbstractNamespaceSocket:Z

.field protected mBacklog:Ljava/lang/Integer;

.field protected mDeadline:Ljava/lang/Long;

.field protected mFD:I

.field protected final mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

.field protected final mPath:Ljava/lang/String;

.field protected mReceiveTimeout:Ljava/lang/Integer;

.field protected mSendTimeout:Ljava/lang/Integer;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/net/socket/local/ILocalSocketManager;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "localSocketManagerClient"    # Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mFD:I

    .line 106
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mTitle:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    .line 108
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mAbstractNamespaceSocket:Z

    .line 110
    iget-boolean v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mAbstractNamespaceSocket:Z

    if-eqz v0, :cond_1

    .line 111
    iput-object p2, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mPath:Ljava/lang/String;

    .line 114
    :goto_0
    return-void
.end method

.method public static getRunConfigLogString(Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 206
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRunConfigMarkdownString(Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    .line 235
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getMarkdownString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBacklog()Ljava/lang/Integer;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mBacklog:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mBacklog:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDeadline()Ljava/lang/Long;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mDeadline:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mDeadline:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getFD()Ljava/lang/Integer;
    .locals 1

    .line 145
    iget v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mFD:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketManagerClient()Lcom/termux/shared/net/socket/local/ILocalSocketManager;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    return-object v0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 6

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "logString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Socket Server Run Config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mPath:Ljava/lang/String;

    const-string v4, "Path"

    const-string v5, "-"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mAbstractNamespaceSocket:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "AbstractNamespaceSocket"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocalSocketManagerClient"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mFD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FD"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ReceiveTimeout"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getReceiveTimeout()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SendTimeout"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getSendTimeout()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Deadline"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getDeadline()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Backlog"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getBacklog()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLogTitle()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/termux/shared/logger/Logger;->getDefaultLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkdownString()Ljava/lang/String;
    .locals 6

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    const-string v1, "## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Socket Server Run Config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mPath:Ljava/lang/String;

    const-string v4, "Path"

    const-string v5, "-"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mAbstractNamespaceSocket:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "AbstractNamespaceSocket"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mLocalSocketManagerClient:Lcom/termux/shared/net/socket/local/ILocalSocketManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocalSocketManagerClient"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mFD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FD"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ReceiveTimeout"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getReceiveTimeout()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SendTimeout"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getSendTimeout()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Deadline"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getDeadline()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Backlog"

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getBacklog()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveTimeout()Ljava/lang/Integer;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mReceiveTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mReceiveTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSendTimeout()Ljava/lang/Integer;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mSendTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mSendTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAbstractNamespaceSocket()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mAbstractNamespaceSocket:Z

    return v0
.end method

.method public setBacklog(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "backlog"    # Ljava/lang/Integer;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mBacklog:Ljava/lang/Integer;

    .line 195
    :cond_0
    return-void
.end method

.method public setDeadline(Ljava/lang/Long;)V
    .locals 0
    .param p1, "deadline"    # Ljava/lang/Long;

    .line 183
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mDeadline:Ljava/lang/Long;

    .line 184
    return-void
.end method

.method public setFD(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 150
    if-ltz p1, :cond_0

    .line 151
    iput p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mFD:I

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mFD:I

    .line 154
    :goto_0
    return-void
.end method

.method public setReceiveTimeout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "receiveTimeout"    # Ljava/lang/Integer;

    .line 163
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mReceiveTimeout:Ljava/lang/Integer;

    .line 164
    return-void
.end method

.method public setSendTimeout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "sendTimeout"    # Ljava/lang/Integer;

    .line 173
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->mSendTimeout:Ljava/lang/Integer;

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;->getLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

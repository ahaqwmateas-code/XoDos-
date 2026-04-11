.class public Lcom/termux/shared/errors/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Error"


# instance fields
.field private code:I

.field private label:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private throwablesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p3, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, v0}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 40
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p4, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v0, p1, v1}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/termux/shared/errors/Error;->InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    .line 65
    return-void
.end method

.method private InitError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p4, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "Error"

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    .line 77
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/termux/shared/errors/Error;->code:I

    goto :goto_1

    .line 80
    :cond_1
    sget-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v0

    iput v0, p0, Lcom/termux/shared/errors/Error;->code:I

    .line 82
    :goto_1
    iput-object p3, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    .line 84
    if-eqz p4, :cond_2

    .line 85
    iput-object p4, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 86
    :cond_2
    return-void
.end method

.method public static getErrorLogString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # Lcom/termux/shared/errors/Error;

    .line 203
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorMarkdownString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # Lcom/termux/shared/errors/Error;

    .line 265
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMinimalErrorLogString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # Lcom/termux/shared/errors/Error;

    .line 225
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getMinimalErrorLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # Lcom/termux/shared/errors/Error;

    .line 245
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getMinimalErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/termux/shared/errors/Error;

    .line 186
    if-nez p2, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/termux/shared/errors/Error;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    return-void
.end method


# virtual methods
.method public appendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->isStateFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    .line 118
    :cond_0
    return-void
.end method

.method public geStackTracesLogString()Ljava/lang/String;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackTraces:"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public geStackTracesMarkdownString()Ljava/lang/String;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackTraces"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget v0, p0, Lcom/termux/shared/errors/Error;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCodeString()Ljava/lang/String;
    .locals 3

    .line 283
    iget v0, p0, Lcom/termux/shared/errors/Error;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "Error Code"

    invoke-static {v2, v0, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorLogString()Ljava/lang/String;
    .locals 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "logString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getCodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getTypeAndMessageLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->geStackTracesLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getErrorMarkdownString()Ljava/lang/String;
    .locals 5

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Error Code"

    const-string v3, "-"

    invoke-static {v2, v1, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 274
    const-string v2, "Error"

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Error Message"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Message ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    .line 273
    invoke-static {v2, v4, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v1, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 276
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->geStackTracesMarkdownString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimalErrorLogString()Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "logString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getCodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getTypeAndMessageLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMinimalErrorString()Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, "logString":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThrowablesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeAndMessageLogString()Ljava/lang/String;
    .locals 3

    .line 287
    const-string v0, "Error"

    iget-object v1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Error Message"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Message ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStateFailed()Z
    .locals 2

    .line 166
    iget v0, p0, Lcom/termux/shared/errors/Error;->code:I

    sget-object v1, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v1}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getErrorLogString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getMinimalErrorLogString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public prependMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->isStateFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    .line 113
    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/termux/shared/errors/Error;->label:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/termux/shared/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 137
    .end local p0    # "this":Lcom/termux/shared/errors/Error;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/termux/shared/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 141
    .end local p0    # "this":Lcom/termux/shared/errors/Error;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(ILjava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p3, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/termux/shared/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 145
    .end local p0    # "this":Lcom/termux/shared/errors/Error;
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/errors/Error;)Z
    .locals 4
    .param p1, "error"    # Lcom/termux/shared/errors/Error;

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 126
    .end local p0    # "this":Lcom/termux/shared/errors/Error;
    .end local p1    # "error":Lcom/termux/shared/errors/Error;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/errors/Error;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "error"    # Lcom/termux/shared/errors/Error;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/termux/shared/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 130
    .end local p0    # "this":Lcom/termux/shared/errors/Error;
    .end local p1    # "error":Lcom/termux/shared/errors/Error;
    .end local p2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Lcom/termux/shared/errors/Error;Ljava/util/List;)Z
    .locals 3
    .param p1, "error"    # Lcom/termux/shared/errors/Error;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/shared/errors/Error;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/termux/shared/errors/Error;->setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 133
    .end local p0    # "this":Lcom/termux/shared/errors/Error;
    .end local p1    # "error":Lcom/termux/shared/errors/Error;
    .end local p2    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStateFailed(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .local p4, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 149
    :try_start_0
    iput-object p3, p0, Lcom/termux/shared/errors/Error;->message:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lcom/termux/shared/errors/Error;->throwablesList:Ljava/util/List;

    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/termux/shared/errors/Error;->type:Ljava/lang/String;

    .line 155
    .end local p0    # "this":Lcom/termux/shared/errors/Error;
    :cond_0
    sget-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_SUCCESS:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 156
    iput p2, p0, Lcom/termux/shared/errors/Error;->code:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 159
    :cond_1
    :try_start_1
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring invalid error code value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\". Force setting it to RESULT_CODE_FAILED \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v2}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/termux/shared/errors/Errno;->ERRNO_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Errno;->getCode()I

    move-result v0

    iput v0, p0, Lcom/termux/shared/errors/Error;->code:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 148
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "code":I
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 173
    invoke-static {p0}, Lcom/termux/shared/errors/Error;->getErrorLogString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

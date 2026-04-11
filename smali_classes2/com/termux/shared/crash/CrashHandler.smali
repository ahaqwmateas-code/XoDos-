.class public Lcom/termux/shared/crash/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CrashUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

.field private final mDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mIsDefaultHandler:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    .param p3, "isDefaultHandler"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    iput-boolean p3, p0, Lcom/termux/shared/crash/CrashHandler;->mIsDefaultHandler:Z

    .line 33
    return-void
.end method

.method public static getCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)Lcom/termux/shared/crash/CrashHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    .line 64
    new-instance v0, Lcom/termux/shared/crash/CrashHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/termux/shared/crash/CrashHandler;-><init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Z)V

    return-object v0
.end method

.method public static logCrash(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logCrash() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashUtils"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/termux/shared/crash/CrashHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/termux/shared/crash/CrashHandler;-><init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Z)V

    invoke-virtual {v0, p2, p3}, Lcom/termux/shared/crash/CrashHandler;->logCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public static setCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/crash/CrashHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/termux/shared/crash/CrashHandler;-><init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Z)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 58
    return-void
.end method

.method public static setDefaultCrashHandler(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    .line 48
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/termux/shared/crash/CrashHandler;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/termux/shared/crash/CrashHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/termux/shared/crash/CrashHandler;-><init>(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Z)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public logCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 83
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    iget-object v1, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->onPreLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/termux/shared/crash/CrashHandler;->logCrashToFile(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mCrashHandlerClient:Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;

    iget-object v1, p0, Lcom/termux/shared/crash/CrashHandler;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->onPostLogCrash(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 87
    :cond_0
    return-void
.end method

.method public logCrashToFile(Landroid/content/Context;Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crashHandlerClient"    # Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;
    .param p3, "thread"    # Ljava/lang/Thread;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "reportString":Ljava/lang/StringBuilder;
    const-string v1, "## Crash Details\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Crash Thread"

    const-string v5, "-"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Crash Timestamp"

    invoke-static {}, Lcom/termux/shared/android/AndroidUtils;->getCurrentMilliSecondUTCTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Crash Message"

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Stacktrace"

    invoke-static {p4}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p2, p1}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "appInfoMarkdownString":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/termux/shared/android/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;)V

    .line 110
    invoke-interface {p2, p1}, Lcom/termux/shared/crash/CrashHandler$CrashHandlerClient;->getCrashLogFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    const-string v5, "crash log"

    const/4 v6, 0x0

    invoke-static {v5, v1, v3, v4, v6}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 112
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz v1, :cond_1

    .line 113
    const-string v3, "CrashUtils"

    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uncaughtException() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashUtils"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/termux/shared/crash/CrashHandler;->logCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 40
    iget-boolean v0, p0, Lcom/termux/shared/crash/CrashHandler;->mIsDefaultHandler:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/termux/shared/crash/CrashHandler;->mDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 42
    :cond_0
    return-void
.end method

.class public abstract Lcom/termux/x11/controller/core/ProcessHelper;
.super Ljava/lang/Object;
.source "ProcessHelper.java"


# static fields
.field public static final PRINT_DEBUG:Z = false

.field private static final SIGCONT:B = 0x12t

.field private static final SIGSTOP:B = 0x13t

.field private static final debugCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/core/Callback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDebugCallback(Lcom/termux/x11/controller/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/x11/controller/core/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p0, "callback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/String;>;"
    sget-object v0, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createDebugThread(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/controller/core/ProcessHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/x11/controller/core/ProcessHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method private static createWaitForThread(Ljava/lang/Process;Lcom/termux/x11/controller/core/Callback;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/Process;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Process;",
            "Lcom/termux/x11/controller/core/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "terminationCallback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/controller/core/ProcessHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/termux/x11/controller/core/ProcessHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Process;Lcom/termux/x11/controller/core/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public static exec(Ljava/lang/String;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/x11/controller/core/ProcessHelper;->exec(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static exec(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envp"    # [Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/termux/x11/controller/core/ProcessHelper;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envp"    # [Ljava/lang/String;
    .param p2, "workingDir"    # Ljava/io/File;

    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/termux/x11/controller/core/ProcessHelper;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Lcom/termux/x11/controller/core/Callback;)I

    move-result v0

    return v0
.end method

.method public static exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Lcom/termux/x11/controller/core/Callback;)I
    .locals 4
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "envp"    # [Ljava/lang/String;
    .param p2, "workingDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/termux/x11/controller/core/Callback<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 41
    .local p3, "terminationCallback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    .line 43
    .local v0, "pid":I
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-static {p0}, Lcom/termux/x11/controller/core/ProcessHelper;->splitCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v1

    .line 44
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "pid"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 45
    .local v2, "pidField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    .line 47
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    sget-object v3, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/x11/controller/core/ProcessHelper;->createDebugThread(Ljava/io/InputStream;)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/x11/controller/core/ProcessHelper;->createDebugThread(Ljava/io/InputStream;)V

    .line 54
    :cond_0
    if-eqz p3, :cond_1

    invoke-static {v1, p3}, Lcom/termux/x11/controller/core/ProcessHelper;->createWaitForThread(Ljava/lang/Process;Lcom/termux/x11/controller/core/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "pidField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    nop

    .line 57
    return v0
.end method

.method public static getAffinityMask(II)I
    .locals 6
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "affinityMask":I
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static getAffinityMask(Ljava/lang/String;)I
    .locals 10
    .param p0, "cpuList"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 167
    .local v2, "affinityMask":I
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 168
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    .line 169
    .local v5, "index":B
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    or-int/2addr v2, v6

    .line 167
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "index":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return v2

    .line 164
    .end local v1    # "values":[Ljava/lang/String;
    .end local v2    # "affinityMask":I
    :cond_2
    :goto_1
    return v0
.end method

.method public static getAffinityMask([Z)I
    .locals 6
    .param p0, "cpuList"    # [Z

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "affinityMask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 177
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    or-int/2addr v0, v2

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static getAffinityMaskAsHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "cpuList"    # Ljava/lang/String;

    .line 154
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 156
    .local v1, "affinityMask":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 157
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    .line 158
    .local v5, "index":B
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    or-int/2addr v1, v6

    .line 156
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "index":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$createDebugThread$0(Ljava/io/InputStream;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 62
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 66
    sget-object v1, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :try_start_2
    sget-object v3, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    sget-object v3, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/x11/controller/core/Callback;

    .local v4, "callback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Lcom/termux/x11/controller/core/Callback;->call(Ljava/lang/Object;)V

    .end local v4    # "callback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/String;>;"
    goto :goto_1

    .line 70
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    .end local v2    # "line":Ljava/lang/String;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 62
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 73
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    :goto_3
    nop

    .line 74
    return-void
.end method

.method static synthetic lambda$createWaitForThread$1(Ljava/lang/Process;Lcom/termux/x11/controller/core/Callback;)V
    .locals 2
    .param p0, "process"    # Ljava/lang/Process;
    .param p1, "terminationCallback"    # Lcom/termux/x11/controller/core/Callback;

    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 81
    .local v0, "status":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/termux/x11/controller/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 84
    return-void
.end method

.method public static removeAllDebugCallbacks()V
    .locals 2

    .line 88
    sget-object v0, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeDebugCallback(Lcom/termux/x11/controller/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/x11/controller/core/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p0, "callback":Lcom/termux/x11/controller/core/Callback;, "Lcom/termux/x11/controller/core/Callback<Ljava/lang/String;>;"
    sget-object v0, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/termux/x11/controller/core/ProcessHelper;->debugCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resumeProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 25
    const/16 v0, 0x12

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 26
    return-void
.end method

.method public static splitCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "command"    # Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "startedQuotes":Z
    const-string v2, ""

    .line 110
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "count":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_8

    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 113
    .local v6, "currChar":C
    const/16 v7, 0x22

    if-eqz v1, :cond_1

    .line 114
    if-ne v6, v7, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v2, ""

    goto/16 :goto_2

    .line 122
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 124
    :cond_1
    if-ne v6, v7, :cond_2

    .line 125
    const/4 v1, 0x1

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 129
    :cond_2
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 130
    .local v5, "nextChar":C
    :cond_3
    const/16 v7, 0x5c

    const/16 v8, 0x20

    if-eq v6, v8, :cond_5

    if-ne v6, v7, :cond_4

    if-ne v5, v8, :cond_4

    goto :goto_1

    .line 141
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    add-int/lit8 v7, v4, -0x1

    if-ne v3, v7, :cond_7

    .line 143
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v2, ""

    goto :goto_2

    .line 131
    :cond_5
    :goto_1
    if-ne v6, v7, :cond_6

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 135
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v2, ""

    .line 110
    .end local v5    # "nextChar":C
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 150
    .end local v3    # "i":I
    .end local v4    # "count":I
    .end local v6    # "currChar":C
    :cond_8
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static suspendProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 21
    const/16 v0, 0x13

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 22
    return-void
.end method

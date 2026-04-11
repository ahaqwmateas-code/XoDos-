.class public Lcom/termux/shared/shell/am/AmSocketServer;
.super Ljava/lang/Object;
.source "AmSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/am/AmSocketServer$AmSocketServerClient;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AmSocketServer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAmCommand(Ljava/lang/String;Ljava/util/List;)Lcom/termux/shared/errors/Error;
    .locals 5
    .param p0, "amCommandString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/termux/shared/errors/Error;"
        }
    .end annotation

    .line 185
    .local p1, "amCommandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/termux/shared/shell/ArgumentTokenizer;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    nop

    .line 195
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/termux/shared/shell/am/AmSocketServerErrno;->ERRNO_PARSE_AM_COMMAND_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static processAmClient(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 13
    .param p0, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p1, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "data":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->readDataOnInputStream(Ljava/lang/StringBuilder;Z)Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 89
    .local v2, "error":Lcom/termux/shared/errors/Error;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v1, v3, v4}, Lcom/termux/shared/shell/am/AmSocketServer;->sendResultToClient(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "amCommandString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "am command received from peer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getPeerCred()Lcom/termux/shared/net/socket/local/PeerCred;

    move-result-object v7

    invoke-virtual {v7}, Lcom/termux/shared/net/socket/local/PeerCred;->getMinimalString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\nam command: `"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "`"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "AmSocketServer"

    invoke-static {v7, v5}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v5, "amCommandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4, v5}, Lcom/termux/shared/shell/am/AmSocketServer;->parseAmCommand(Ljava/lang/String;Ljava/util/List;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {v2}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p1, v1, v3, v6}, Lcom/termux/shared/shell/am/AmSocketServer;->sendResultToClient(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 107
    :cond_1
    const/4 v3, 0x0

    new-array v8, v3, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 109
    .local v8, "amCommandArray":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getPeerCred()Lcom/termux/shared/net/socket/local/PeerCred;

    move-result-object v9

    invoke-virtual {v9}, Lcom/termux/shared/net/socket/local/PeerCred;->getMinimalString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 110
    const-string v9, "am command"

    invoke-static {v9, v8}, Lcom/termux/shared/shell/command/ExecutionCommand;->getArgumentsLogString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {v7, v6}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getLocalSocketRunConfig()Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    move-result-object v6

    check-cast v6, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;

    .line 115
    .local v6, "amSocketServerRunConfig":Lcom/termux/shared/shell/am/AmSocketServerRunConfig;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v7, "stdout":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v9, "stderr":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 118
    invoke-virtual {v6}, Lcom/termux/shared/shell/am/AmSocketServerRunConfig;->shouldCheckDisplayOverAppsPermission()Z

    move-result v11

    .line 117
    invoke-static {v10, v8, v7, v9, v11}, Lcom/termux/shared/shell/am/AmSocketServer;->runAmCommand(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v11

    .line 120
    :goto_0
    invoke-static {p0, p1, v1, v10, v11}, Lcom/termux/shared/shell/am/AmSocketServer;->sendResultToClient(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, p1, v3, v1, v10}, Lcom/termux/shared/shell/am/AmSocketServer;->sendResultToClient(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static runAmCommand(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Lcom/termux/shared/errors/Error;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "amCommandArray"    # [Ljava/lang/String;
    .param p2, "stdout"    # Ljava/lang/StringBuilder;
    .param p3, "stderr"    # Ljava/lang/StringBuilder;
    .param p4, "checkDisplayOverAppsPermission"    # Z

    .line 214
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .local v2, "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 216
    .local v3, "stdoutPrintStream":Ljava/io/PrintStream;
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 217
    .local v4, "stderrByteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 219
    .local v5, "stderrPrintStream":Ljava/io/PrintStream;
    if-eqz p4, :cond_2

    :try_start_4
    array-length v6, p1

    if-lt v6, v0, :cond_2

    aget-object v6, p1, v1

    const-string v7, "start"

    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, p1, v1

    const-string v7, "startservice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    :cond_0
    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->validateDisplayOverOtherAppsPermissionForPostAndroid10(Landroid/content/Context;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    sget v7, Lcom/termux/shared/R$string;->error_display_over_other_apps_permission_not_granted:I

    .line 223
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v8, v9, v1

    .line 222
    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    .end local v4    # "stderrByteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "stderrPrintStream":Ljava/io/PrintStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "amCommandArray":[Ljava/lang/String;
    .end local p2    # "stdout":Ljava/lang/StringBuilder;
    .end local p3    # "stderr":Ljava/lang/StringBuilder;
    .end local p4    # "checkDisplayOverAppsPermission":Z
    throw v6

    .line 226
    .restart local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    .restart local v4    # "stderrByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "stderrPrintStream":Ljava/io/PrintStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "amCommandArray":[Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/lang/StringBuilder;
    .restart local p3    # "stderr":Ljava/lang/StringBuilder;
    .restart local p4    # "checkDisplayOverAppsPermission":Z
    :cond_2
    :goto_0
    new-instance v6, Lcom/termux/am/Am;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Application;

    invoke-direct {v6, v3, v5, v7}, Lcom/termux/am/Am;-><init>(Ljava/io/PrintStream;Ljava/io/PrintStream;Landroid/app/Application;)V

    invoke-virtual {v6, p1}, Lcom/termux/am/Am;->run([Ljava/lang/String;)I

    .line 229
    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 230
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 234
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    :try_start_5
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v5    # "stderrPrintStream":Ljava/io/PrintStream;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .end local v4    # "stderrByteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .end local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 237
    .end local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    nop

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 214
    .restart local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    .restart local v4    # "stderrByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "stderrPrintStream":Ljava/io/PrintStream;
    :catchall_0
    move-exception v6

    :try_start_9
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    .end local v4    # "stderrByteStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "amCommandArray":[Ljava/lang/String;
    .end local p2    # "stdout":Ljava/lang/StringBuilder;
    .end local p3    # "stderr":Ljava/lang/StringBuilder;
    .end local p4    # "checkDisplayOverAppsPermission":Z
    :goto_1
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v5    # "stderrPrintStream":Ljava/io/PrintStream;
    .restart local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    .restart local v4    # "stderrByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "amCommandArray":[Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/lang/StringBuilder;
    .restart local p3    # "stderr":Ljava/lang/StringBuilder;
    .restart local p4    # "checkDisplayOverAppsPermission":Z
    :catchall_2
    move-exception v5

    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v6

    :try_start_c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "amCommandArray":[Ljava/lang/String;
    .end local p2    # "stdout":Ljava/lang/StringBuilder;
    .end local p3    # "stderr":Ljava/lang/StringBuilder;
    .end local p4    # "checkDisplayOverAppsPermission":Z
    :goto_2
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v4    # "stderrByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "amCommandArray":[Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/lang/StringBuilder;
    .restart local p3    # "stderr":Ljava/lang/StringBuilder;
    .restart local p4    # "checkDisplayOverAppsPermission":Z
    :catchall_4
    move-exception v4

    :try_start_d
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v5

    :try_start_e
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "amCommandArray":[Ljava/lang/String;
    .end local p2    # "stdout":Ljava/lang/StringBuilder;
    .end local p3    # "stderr":Ljava/lang/StringBuilder;
    .end local p4    # "checkDisplayOverAppsPermission":Z
    :goto_3
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .end local v3    # "stdoutPrintStream":Ljava/io/PrintStream;
    .restart local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "amCommandArray":[Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/lang/StringBuilder;
    .restart local p3    # "stderr":Ljava/lang/StringBuilder;
    .restart local p4    # "checkDisplayOverAppsPermission":Z
    :catchall_6
    move-exception v3

    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v4

    :try_start_10
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "amCommandArray":[Ljava/lang/String;
    .end local p2    # "stdout":Ljava/lang/StringBuilder;
    .end local p3    # "stderr":Ljava/lang/StringBuilder;
    .end local p4    # "checkDisplayOverAppsPermission":Z
    :goto_4
    throw v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 235
    .end local v2    # "stdoutByteStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "amCommandArray":[Ljava/lang/String;
    .restart local p2    # "stdout":Ljava/lang/StringBuilder;
    .restart local p3    # "stderr":Ljava/lang/StringBuilder;
    .restart local p4    # "checkDisplayOverAppsPermission":Z
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/termux/shared/shell/am/AmSocketServerErrno;->ERRNO_RUN_AM_COMMAND_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    invoke-virtual {v3, v2, v6}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static sanitizeExitCode(Lcom/termux/shared/net/socket/local/LocalClientSocket;I)I
    .locals 2
    .param p0, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p1, "exitCode"    # I

    .line 163
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring invalid peer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->getPeerCred()Lcom/termux/shared/net/socket/local/PeerCred;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/PeerCred;->getMinimalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result value \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" and force setting it to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmSocketServer"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 p1, 0x1

    .line 168
    :cond_1
    return p1
.end method

.method public static sendResultToClient(Lcom/termux/shared/net/socket/local/LocalSocketManager;Lcom/termux/shared/net/socket/local/LocalClientSocket;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "localSocketManager"    # Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .param p1, "clientSocket"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;
    .param p2, "exitCode"    # I
    .param p3, "stdout"    # Ljava/lang/String;
    .param p4, "stderr"    # Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {p1, p2}, Lcom/termux/shared/shell/am/AmSocketServer;->sanitizeExitCode(Lcom/termux/shared/net/socket/local/LocalClientSocket;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    const-string v2, ""

    if-eqz p3, :cond_0

    move-object v3, p3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    if-eqz p4, :cond_1

    move-object v2, p4

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->sendDataToOutputStream(Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 149
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {p0, p1, v1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/net/socket/local/LocalClientSocket;Lcom/termux/shared/errors/Error;)V

    .line 152
    :cond_2
    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;)Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localSocketRunConfig"    # Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;

    const-class v0, Lcom/termux/shared/shell/am/AmSocketServer;

    monitor-enter v0

    .line 72
    :try_start_0
    new-instance v1, Lcom/termux/shared/net/socket/local/LocalSocketManager;

    invoke-direct {v1, p0, p1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;-><init>(Landroid/content/Context;Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;)V

    .line 73
    .local v1, "localSocketManager":Lcom/termux/shared/net/socket/local/LocalSocketManager;
    invoke-virtual {v1}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->start()Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 74
    .local v2, "error":Lcom/termux/shared/errors/Error;
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v1, v2}, Lcom/termux/shared/net/socket/local/LocalSocketManager;->onError(Lcom/termux/shared/errors/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    monitor-exit v0

    return-object v1

    .line 71
    .end local v1    # "localSocketManager":Lcom/termux/shared/net/socket/local/LocalSocketManager;
    .end local v2    # "error":Lcom/termux/shared/errors/Error;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "localSocketRunConfig":Lcom/termux/shared/net/socket/local/LocalSocketRunConfig;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

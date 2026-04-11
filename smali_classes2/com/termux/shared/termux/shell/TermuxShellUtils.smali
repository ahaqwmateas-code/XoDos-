.class public Lcom/termux/shared/termux/shell/TermuxShellUtils;
.super Ljava/lang/Object;
.source "TermuxShellUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxShellUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTermuxTMPDIR(Z)V
    .locals 10
    .param p0, "onlyIfExists"    # Z

    .line 92
    const-string v0, "/data/data/com.termux/files/usr/tmp"

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getProperties()Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    .line 98
    .local v1, "properties":Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;
    invoke-virtual {v1}, Lcom/termux/shared/termux/settings/properties/TermuxAppSharedProperties;->getDeleteTMPDIRFilesOlderThanXDaysOnExit()I

    move-result v2

    .line 101
    .local v2, "days":I
    if-lez v2, :cond_1

    .line 102
    const/4 v2, 0x0

    .line 104
    :cond_1
    const-string v9, "TermuxShellUtils"

    if-gez v2, :cond_2

    .line 105
    const-string v0, "Not clearing termux $TMPDIR"

    invoke-static {v9, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 107
    nop

    .line 108
    invoke-static {v0, v3}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v3, "$TMPDIR"

    invoke-static {v3, v0}, Lcom/termux/shared/file/FileUtils;->clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 109
    .local v0, "error":Lcom/termux/shared/errors/Error;
    if-eqz v0, :cond_4

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clear termux $TMPDIR\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    :cond_3
    nop

    .line 114
    invoke-static {v0, v3}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 113
    const-string v3, "$TMPDIR"

    const/4 v7, 0x1

    const v8, 0x7fffffff

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/termux/shared/file/FileUtils;->deleteFilesOlderThanXDays(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/filefilter/IOFileFilter;IZI)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 116
    .restart local v0    # "error":Lcom/termux/shared/errors/Error;
    if-eqz v0, :cond_4

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete files from termux $TMPDIR older than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " days\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    :cond_4
    :goto_0
    return-void
.end method

.method public static setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "executable"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "interpreter":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v3, "in":Ljava/io/FileInputStream;
    const/16 v4, 0x100

    :try_start_1
    new-array v4, v4, [B

    .line 42
    .local v4, "buffer":[B
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 43
    .local v5, "bytesRead":I
    const/4 v6, 0x4

    if-le v5, v6, :cond_7

    .line 44
    aget-byte v6, v4, v1

    const/16 v7, 0x7f

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    aget-byte v6, v4, v8

    const/16 v7, 0x45

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_0

    const/4 v6, 0x3

    aget-byte v6, v4, v6

    const/16 v7, 0x46

    if-ne v6, v7, :cond_0

    goto :goto_3

    .line 46
    :cond_0
    aget-byte v6, v4, v1

    const/16 v7, 0x23

    if-ne v6, v7, :cond_6

    aget-byte v6, v4, v8

    const/16 v7, 0x21

    if-ne v6, v7, :cond_6

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v6, "builder":Ljava/lang/StringBuilder;
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_5

    .line 50
    aget-byte v9, v4, v7

    int-to-char v9, v9

    .line 51
    .local v9, "c":C
    const/16 v10, 0x20

    if-eq v9, v10, :cond_2

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 49
    .end local v9    # "c":C
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 56
    .restart local v9    # "c":C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, "shebangExecutable":Ljava/lang/String;
    const-string v11, "/usr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "/bin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 58
    :cond_4
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 59
    .local v11, "parts":[Ljava/lang/String;
    array-length v12, v11

    sub-int/2addr v12, v8

    aget-object v8, v11, v12

    .line 60
    .local v8, "binary":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/com.termux/files/usr/bin/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 61
    .end local v8    # "binary":Ljava/lang/String;
    .end local v11    # "parts":[Ljava/lang/String;
    nop

    .line 68
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "i":I
    .end local v9    # "c":C
    .end local v10    # "shebangExecutable":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 70
    :cond_6
    const-string v6, "/data/data/com.termux/files/usr/bin/sh"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 73
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    :cond_7
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 40
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "interpreter":Ljava/lang/String;
    .end local p0    # "executable":Ljava/lang/String;
    .end local p1    # "arguments":[Ljava/lang/String;
    :goto_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 74
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "interpreter":Ljava/lang/String;
    .restart local p0    # "executable":Ljava/lang/String;
    .restart local p1    # "arguments":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 78
    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_8
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    if-eqz p1, :cond_9

    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 82
    :cond_9
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

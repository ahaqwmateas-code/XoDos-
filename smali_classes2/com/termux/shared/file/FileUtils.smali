.class public Lcom/termux/shared/file/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    }
.end annotation


# static fields
.field public static final APP_EXECUTABLE_FILE_PERMISSIONS:Ljava/lang/String; = "r-x"

.field public static final APP_WORKING_DIRECTORY_PERMISSIONS:Ljava/lang/String; = "rwx"

.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 7
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToCheck"    # Ljava/lang/String;
    .param p3, "ignoreIfNotExecutable"    # Z

    .line 1942
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    move-object p0, v0

    .line 1943
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 1945
    :cond_2
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid permissionsToCheck passed to checkMissingFilePermissions: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUtils"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_INVALID_FILE_PERMISSIONS_STRING_TO_CHECK:Lcom/termux/shared/errors/Errno;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Errno;->getError()Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1950
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v3, "file":Ljava/io/File;
    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "file"

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1954
    sget-object v4, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_READABLE:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {v4, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1958
    :cond_4
    const-string v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1959
    sget-object v4, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_WRITABLE:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {v4, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1963
    :cond_5
    const-string v4, "x"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez p3, :cond_6

    .line 1964
    sget-object v4, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_EXECUTABLE:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {v4, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1967
    :cond_6
    const/4 v0, 0x0

    return-object v0

    .line 1943
    .end local v3    # "file":Ljava/io/File;
    :cond_7
    :goto_2
    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    const-string v1, "checkMissingFilePermissions"

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "permissionsToCheck"    # Ljava/lang/String;
    .param p2, "ignoreIfNotExecutable"    # Z

    .line 1928
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static clearDirectory(Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1376
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/termux/shared/file/FileUtils;->clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1391
    const-string v0, "directory"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    :goto_1
    move-object p0, v1

    .line 1392
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    .line 1397
    :cond_2
    :try_start_0
    const-string v4, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "directory at path \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1400
    .local v4, "file":Ljava/io/File;
    invoke-static {p1, v3}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v5

    .line 1403
    .local v5, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v5, v6, :cond_3

    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v5, v6, :cond_3

    .line 1404
    sget-object v6, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v3

    aput-object p1, v8, v2

    invoke-virtual {v6, v8}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1408
    :cond_3
    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v5, v6, :cond_5

    .line 1409
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_4

    .line 1413
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    new-array v7, v2, [Lcom/google/common/io/RecursiveDeleteOption;

    sget-object v8, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContents(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    goto :goto_2

    .line 1416
    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V

    goto :goto_2

    .line 1421
    :cond_5
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    .local v0, "error":Lcom/termux/shared/errors/Error;
    if-eqz v0, :cond_6

    .line 1423
    return-object v0

    .line 1427
    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    :cond_6
    :goto_2
    nop

    .line 1429
    const/4 v0, 0x0

    return-object v0

    .line 1425
    :catch_0
    move-exception v4

    .line 1426
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CLEARING_DIRECTORY_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object p1, v7, v2

    aput-object v6, v7, v1

    invoke-virtual {v5, v4, v7}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1392
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "clearDirectory"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static closeCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 1787
    if-eqz p0, :cond_0

    .line 1789
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    goto :goto_0

    .line 1791
    :catch_0
    move-exception v0

    .line 1795
    :cond_0
    :goto_0
    return-void
.end method

.method public static copyDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z

    .line 905
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    .line 906
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 905
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z

    .line 993
    sget v5, Lcom/termux/shared/file/filesystem/FileTypes;->FILE_TYPE_NORMAL_FLAGS:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;
    .locals 22
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "moveFile"    # Z
    .param p4, "ignoreNonExistentSrcFile"    # Z
    .param p5, "allowedFileTypeFlags"    # I
    .param p6, "overwrite"    # Z
    .param p7, "overwriteOnlyIfDestSameFileTypeAsSrc"    # Z

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "FileUtils"

    const-string v4, " "

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    :goto_0
    const-string v5, ""

    .line 1055
    .end local p0    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    :goto_1
    const-string v0, "copyOrMoveFile"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_7

    .line 1056
    :cond_2
    if-eqz v2, :cond_17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_6

    .line 1058
    :cond_3
    if-eqz p3, :cond_4

    const-string v0, "Moving"

    goto :goto_2

    :cond_4
    const-string v0, "Copying"

    :goto_2
    move-object v9, v0

    .line 1059
    .local v9, "mode":Ljava/lang/String;
    if-eqz p3, :cond_5

    const-string v0, "moved"

    goto :goto_3

    :cond_5
    const-string v0, "copied"

    :goto_3
    move-object v10, v0

    .line 1064
    .local v10, "modePast":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "source file from \""

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "\" to destination \""

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "\""

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v0, "srcFile":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v13, "destFile":Ljava/io/File;
    invoke-static {v1, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v14

    .line 1070
    .local v14, "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    invoke-static {v2, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v15

    .line 1072
    .local v15, "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p0, v16

    .line 1073
    .local p0, "srcFileCanonicalPath":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1076
    .local v17, "destFileCanonicalPath":Ljava/lang/String;
    sget-object v11, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v12, "source file"

    const/16 v18, 0x0

    if-ne v14, v11, :cond_7

    .line 1078
    if-eqz p4, :cond_6

    .line 1079
    return-object v18

    .line 1082
    :cond_6
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 1083
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v5, v11, v7

    aput-object v1, v11, v8

    invoke-virtual {v3, v11}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 1178
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v13    # "destFile":Ljava/io/File;
    .end local v14    # "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v15    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v17    # "destFileCanonicalPath":Ljava/lang/String;
    .end local p0    # "srcFileCanonicalPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 p0, v10

    goto/16 :goto_5

    .line 1088
    .restart local v0    # "srcFile":Ljava/io/File;
    .restart local v13    # "destFile":Ljava/io/File;
    .restart local v14    # "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v15    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v17    # "destFileCanonicalPath":Ljava/lang/String;
    .restart local p0    # "srcFileCanonicalPath":Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-virtual {v14}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    and-int v11, p5, v11

    if-gtz v11, :cond_8

    .line 1089
    :try_start_3
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/errors/Errno;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "source file meant to be "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p5 .. p5}, Lcom/termux/shared/file/filesystem/FileTypes;->convertFileTypeFlagsToNamesString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v11, v8, v7

    const/4 v6, 0x1

    aput-object v1, v8, v6

    const/4 v6, 0x2

    aput-object v12, v8, v6

    invoke-virtual {v3, v8}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v3

    .line 1092
    :cond_8
    move-object/from16 v6, p0

    move-object/from16 v8, v17

    .end local v17    # "destFileCanonicalPath":Ljava/lang/String;
    .end local p0    # "srcFileCanonicalPath":Ljava/lang/String;
    .local v6, "srcFileCanonicalPath":Ljava/lang/String;
    .local v8, "destFileCanonicalPath":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1093
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_COPYING_OR_MOVING_FILE_TO_SAME_PATH:Lcom/termux/shared/errors/Errno;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 p0, v10

    const/4 v12, 0x3

    .end local v10    # "modePast":Ljava/lang/String;
    .local p0, "modePast":Ljava/lang/String;
    :try_start_5
    new-array v10, v12, [Ljava/lang/Object;

    aput-object v11, v10, v7

    const/4 v11, 0x1

    aput-object v1, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-virtual {v3, v10}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 1096
    .end local p0    # "modePast":Ljava/lang/String;
    .restart local v10    # "modePast":Ljava/lang/String;
    :cond_9
    move-object/from16 p0, v10

    .end local v10    # "modePast":Ljava/lang/String;
    .restart local p0    # "modePast":Ljava/lang/String;
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v15, v10, :cond_c

    .line 1098
    if-nez p6, :cond_a

    .line 1099
    return-object v18

    .line 1103
    :cond_a
    if-eqz p7, :cond_b

    if-eq v15, v14, :cond_b

    .line 1104
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CANNOT_OVERWRITE_A_DIFFERENT_FILE_TYPE:Lcom/termux/shared/errors/Errno;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v17

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v10, v7, v18

    const/4 v10, 0x1

    aput-object v11, v7, v10

    const/4 v10, 0x2

    aput-object v1, v7, v10

    const/4 v10, 0x3

    aput-object v2, v7, v10

    const/4 v10, 0x4

    aput-object v12, v7, v10

    const/4 v10, 0x5

    aput-object v17, v7, v10

    invoke-virtual {v3, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 1107
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "destination"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-static {v7, v2, v10}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v7

    .line 1108
    .local v7, "error":Lcom/termux/shared/errors/Error;
    if-eqz v7, :cond_c

    .line 1109
    return-object v7

    .line 1114
    .end local v7    # "error":Lcom/termux/shared/errors/Error;
    :cond_c
    xor-int/lit8 v7, p3, 0x1

    .line 1117
    .local v7, "copyFile":Z
    if-eqz p3, :cond_e

    .line 1119
    const-string v10, "Attempting to rename source to destination."

    invoke-static {v3, v10}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1127
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v14, v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1128
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CANNOT_MOVE_DIRECTORY_TO_SUB_DIRECTORY_OF_ITSELF:Lcom/termux/shared/errors/Errno;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "source directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    const/4 v10, 0x1

    aput-object v1, v12, v10

    const/4 v10, 0x2

    aput-object v2, v12, v10

    invoke-virtual {v3, v12}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 1131
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Renaming "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "source file to destination failed, attempting to copy."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v7, 0x1

    .line 1137
    :cond_e
    if-eqz v7, :cond_14

    .line 1138
    const-string v10, "Attempting to copy source to destination."

    invoke-static {v3, v10}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "dest file parent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v10

    .line 1142
    .local v10, "error":Lcom/termux/shared/errors/Error;
    if-eqz v10, :cond_f

    .line 1143
    return-object v10

    .line 1145
    :cond_f
    sget-object v11, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v14, v11, :cond_10

    .line 1147
    const/4 v11, 0x1

    invoke-static {v0, v13, v11}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V

    move-object/from16 v17, v6

    move/from16 v21, v7

    goto/16 :goto_4

    .line 1148
    :cond_10
    sget-object v11, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    const/16 v12, 0x1a

    if-ne v14, v11, :cond_12

    .line 1149
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v12, :cond_11

    .line 1150
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    move-object/from16 v17, v6

    move/from16 v21, v7

    const/4 v6, 0x2

    .end local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v7    # "copyFile":Z
    .local v17, "srcFileCanonicalPath":Ljava/lang/String;
    .local v21, "copyFile":Z
    new-array v7, v6, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/16 v20, 0x0

    aput-object v6, v7, v20

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/16 v19, 0x1

    aput-object v6, v7, v19

    invoke-static {v11, v12, v7}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    goto :goto_4

    .line 1154
    .end local v17    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v21    # "copyFile":Z
    .restart local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v7    # "copyFile":Z
    :cond_11
    move-object/from16 v17, v6

    move/from16 v21, v7

    .end local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v7    # "copyFile":Z
    .restart local v17    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v21    # "copyFile":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dest"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v6

    .line 1155
    .end local v10    # "error":Lcom/termux/shared/errors/Error;
    .local v6, "error":Lcom/termux/shared/errors/Error;
    if-eqz v6, :cond_15

    .line 1156
    return-object v6

    .line 1159
    .end local v17    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v21    # "copyFile":Z
    .local v6, "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v7    # "copyFile":Z
    .restart local v10    # "error":Lcom/termux/shared/errors/Error;
    :cond_12
    move-object/from16 v17, v6

    move/from16 v21, v7

    .end local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v7    # "copyFile":Z
    .restart local v17    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v21    # "copyFile":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v12, :cond_13

    .line 1160
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/nio/file/CopyOption;

    sget-object v11, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/16 v20, 0x0

    aput-object v11, v12, v20

    sget-object v11, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/16 v19, 0x1

    aput-object v11, v12, v19

    invoke-static {v6, v7, v12}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    goto :goto_4

    .line 1163
    :cond_13
    const/4 v6, 0x1

    invoke-static {v0, v13, v6}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_4

    .line 1137
    .end local v10    # "error":Lcom/termux/shared/errors/Error;
    .end local v17    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v21    # "copyFile":Z
    .restart local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v7    # "copyFile":Z
    :cond_14
    move-object/from16 v17, v6

    move/from16 v21, v7

    .line 1169
    .end local v6    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v7    # "copyFile":Z
    .restart local v17    # "srcFileCanonicalPath":Ljava/lang/String;
    .restart local v21    # "copyFile":Z
    :cond_15
    :goto_4
    if-eqz p3, :cond_16

    .line 1171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "source"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v1, v7}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v6

    .line 1172
    .local v6, "error":Lcom/termux/shared/errors/Error;
    if-eqz v6, :cond_16

    .line 1173
    return-object v6

    .line 1176
    .end local v6    # "error":Lcom/termux/shared/errors/Error;
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successful."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1180
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v8    # "destFileCanonicalPath":Ljava/lang/String;
    .end local v13    # "destFile":Ljava/io/File;
    .end local v14    # "srcFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v15    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v17    # "srcFileCanonicalPath":Ljava/lang/String;
    .end local v21    # "copyFile":Z
    nop

    .line 1182
    return-object v18

    .line 1178
    :catch_1
    move-exception v0

    goto :goto_5

    .end local p0    # "modePast":Ljava/lang/String;
    .local v10, "modePast":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 p0, v10

    .line 1179
    .end local v10    # "modePast":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local p0    # "modePast":Ljava/lang/String;
    :goto_5
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_COPYING_OR_MOVING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "file"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v1, v7, v4

    const/4 v4, 0x2

    aput-object v2, v7, v4

    const/4 v4, 0x3

    aput-object v6, v7, v4

    invoke-virtual {v3, v0, v7}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 1056
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "mode":Ljava/lang/String;
    .end local p0    # "modePast":Ljava/lang/String;
    :cond_17
    :goto_6
    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "destination file path"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v0, v6, v4

    invoke-virtual {v3, v6}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1055
    :cond_18
    :goto_7
    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "source file path"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v0, v6, v4

    invoke-virtual {v3, v6}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static copyRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z

    .line 861
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    .line 862
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 861
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static copySymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z

    .line 949
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    .line 950
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 949
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectoryFile(Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 679
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 694
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToCheck"    # Ljava/lang/String;
    .param p3, "setPermissions"    # Z
    .param p4, "setMissingPermissionsOnly"    # Z

    .line 716
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v8}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 4
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 656
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "fileParentPath":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 662
    invoke-static {p0, v2, v3, v0, v0}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 665
    :cond_1
    return-object v3

    .line 656
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileParentPath":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v1, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "createParentDirectoryFile"

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createRegularFile(Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 567
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/termux/shared/file/FileUtils;->createRegularFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createRegularFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 582
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/termux/shared/file/FileUtils;->createRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/termux/shared/errors/Error;
    .locals 13
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToCheck"    # Ljava/lang/String;
    .param p3, "setPermissions"    # Z
    .param p4, "setMissingPermissionsOnly"    # Z

    .line 604
    move-object v0, p0

    move-object v7, p1

    const-string v1, "regular file"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, ""

    :goto_1
    move-object v8, v2

    .line 605
    .end local p0    # "label":Ljava/lang/String;
    .local v8, "label":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 609
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 610
    .local v9, "file":Ljava/io/File;
    invoke-static {p1, v4}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v10

    .line 613
    .local v10, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v10, v0, :cond_3

    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v10, v0, :cond_3

    .line 614
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "file"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v7, v3, v2

    invoke-virtual {v0, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 618
    :cond_3
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v10, v0, :cond_4

    .line 619
    const/4 v0, 0x0

    return-object v0

    .line 623
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "regular file parent"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v11

    .line 624
    .local v11, "error":Lcom/termux/shared/errors/Error;
    if-eqz v11, :cond_5

    .line 625
    return-object v11

    .line 628
    :cond_5
    :try_start_0
    const-string v0, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "regular file at path \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_6

    .line 631
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/errors/Errno;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v4

    aput-object v7, v6, v2

    invoke-virtual {v0, v6}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 634
    :cond_6
    nop

    .line 636
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Lcom/termux/shared/file/FileUtils;->validateRegularFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v1, v12, v4

    aput-object v7, v12, v2

    aput-object v6, v12, v3

    invoke-virtual {v5, v0, v12}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    return-object v1

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v11    # "error":Lcom/termux/shared/errors/Error;
    :cond_7
    :goto_2
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "file path"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "createRegularFile"

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createSymlinkFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 6
    .param p0, "targetFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .line 739
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 6
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "targetFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .line 759
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/errors/Error;
    .locals 16
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "targetFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "allowDangling"    # Z
    .param p4, "overwrite"    # Z
    .param p5, "overwriteOnlyIfDestIsASymlink"    # Z

    .line 781
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "/"

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, ""

    .line 782
    .end local p0    # "label":Ljava/lang/String;
    .local v4, "label":Ljava/lang/String;
    :goto_1
    const-string v0, "createSymlinkFile"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_3

    .line 783
    :cond_2
    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_2

    .line 788
    :cond_3
    const/4 v8, 0x3

    const/4 v9, 0x4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, "destFile":Ljava/io/File;
    move-object/from16 v10, p1

    .line 792
    .local v10, "targetFileAbsolutePath":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 793
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    .line 794
    .local v11, "destFileParentPath":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 795
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 798
    .end local v11    # "destFileParentPath":Ljava/lang/String;
    :cond_4
    invoke-static {v10, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v3

    .line 799
    .local v3, "targetFileType":Lcom/termux/shared/file/filesystem/FileType;
    invoke-static {v2, v7}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v11

    .line 802
    .local v11, "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v3, v12, :cond_5

    .line 804
    if-nez p3, :cond_5

    .line 805
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "symlink target file"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 806
    sget-object v12, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v4, v13, v7

    aput-object v10, v13, v6

    invoke-virtual {v12, v13}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v5

    return-object v5

    .line 811
    :cond_5
    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v13, 0x0

    if-eq v11, v12, :cond_8

    .line 813
    if-nez p4, :cond_6

    .line 814
    return-object v13

    .line 818
    :cond_6
    if-eqz p5, :cond_7

    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v11, v12, :cond_7

    .line 819
    sget-object v12, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CANNOT_OVERWRITE_A_NON_SYMLINK_FILE_TYPE:Lcom/termux/shared/errors/Errno;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v14

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v13, v15, v7

    aput-object v2, v15, v6

    aput-object v1, v15, v5

    aput-object v14, v15, v8

    invoke-virtual {v12, v15}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v5

    return-object v5

    .line 822
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "symlink destination"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2, v6}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v12

    .line 823
    .local v12, "error":Lcom/termux/shared/errors/Error;
    if-eqz v12, :cond_9

    .line 824
    return-object v12

    .line 827
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "symlink destination file parent"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v12

    .line 828
    .restart local v12    # "error":Lcom/termux/shared/errors/Error;
    if-eqz v12, :cond_9

    .line 829
    return-object v12

    .line 833
    :cond_9
    const-string v14, "FileUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "symlink file at path \""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "\" to \""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "\""

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-static/range {p1 .. p2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .end local v0    # "destFile":Ljava/io/File;
    .end local v3    # "targetFileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "targetFileAbsolutePath":Ljava/lang/String;
    .end local v11    # "destFileType":Lcom/termux/shared/file/filesystem/FileType;
    nop

    .line 839
    return-object v13

    .line 835
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CREATING_SYMLINK_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "symlink file"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v7

    aput-object v2, v9, v6

    aput-object v1, v9, v5

    const/4 v5, 0x3

    aput-object v10, v9, v5

    invoke-virtual {v3, v0, v9}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 783
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_2
    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "destination file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v7

    aput-object v0, v5, v6

    invoke-virtual {v3, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 782
    :cond_b
    :goto_3
    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "target file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v7

    aput-object v0, v5, v6

    invoke-virtual {v3, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteDirectoryFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z

    .line 1214
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z

    .line 1259
    const/4 v0, 0x0

    sget v1, Lcom/termux/shared/file/filesystem/FileTypes;->FILE_TYPE_NORMAL_FLAGS:I

    invoke-static {p0, p1, p2, v0, v1}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;
    .locals 15
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z
    .param p3, "ignoreWrongFileType"    # Z
    .param p4, "allowedFileTypeFlags"    # I

    .line 1284
    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "\""

    const-string v3, "\" of type \""

    const-string v4, "file at path \""

    const-string v5, "FileUtils"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    :goto_0
    const-string v6, ""

    .line 1285
    .end local p0    # "label":Ljava/lang/String;
    .local v6, "label":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 1288
    :cond_2
    const/4 v10, 0x3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v0, "file":Ljava/io/File;
    invoke-static {v1, v9}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v11

    .line 1291
    .local v11, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Processing delete of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "file meant to be deleted"

    const/4 v14, 0x0

    if-ne v11, v12, :cond_4

    .line 1296
    if-eqz p2, :cond_3

    .line 1297
    return-object v14

    .line 1300
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1301
    sget-object v2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v6, v3, v9

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    return-object v2

    .line 1306
    :cond_4
    invoke-virtual {v11}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v12

    and-int v12, p4, v12

    if-gtz v12, :cond_6

    .line 1308
    if-eqz p3, :cond_5

    .line 1309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring deletion of "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not matching allowed file types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/termux/shared/file/filesystem/FileTypes;->convertFileTypeFlagsToNamesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    return-object v14

    .line 1314
    :cond_5
    sget-object v2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_AN_ALLOWED_FILE_TYPE:Lcom/termux/shared/errors/Errno;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/termux/shared/file/filesystem/FileType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Lcom/termux/shared/file/filesystem/FileTypes;->convertFileTypeFlagsToNamesString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v9

    aput-object v1, v12, v8

    aput-object v4, v12, v7

    aput-object v5, v12, v10

    invoke-virtual {v2, v12}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    return-object v2

    .line 1317
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleting "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_7

    .line 1339
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v8, [Lcom/google/common/io/RecursiveDeleteOption;

    sget-object v4, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/google/common/io/MoreFiles;->deleteRecursively(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    goto :goto_2

    .line 1341
    :cond_7
    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v11, v2, :cond_8

    .line 1344
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    goto :goto_2

    .line 1347
    :cond_8
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 1352
    :goto_2
    invoke-static {v1, v9}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v2

    .line 1353
    .end local v11    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .local v2, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v3, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v2, v3, :cond_9

    .line 1354
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_STILL_EXISTS_AFTER_DELETING:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v9

    aput-object v1, v5, v8

    invoke-virtual {v3, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 1358
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    :cond_9
    nop

    .line 1360
    return-object v14

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_DELETING_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v3, v5, v9

    aput-object v1, v5, v8

    aput-object v4, v5, v7

    invoke-virtual {v2, v0, v5}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    return-object v2

    .line 1285
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_3
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const-string v2, "deleteFile"

    aput-object v2, v3, v8

    invoke-virtual {v0, v3}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFilesOlderThanXDays(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/filefilter/IOFileFilter;IZI)Lcom/termux/shared/errors/Error;
    .locals 16
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "dirFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p3, "days"    # I
    .param p4, "ignoreNonExistentFile"    # Z
    .param p5, "allowedFileTypeFlags"    # I

    .line 1454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "directory"

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, ""

    .line 1455
    .end local p0    # "label":Ljava/lang/String;
    .local v4, "label":Ljava/lang/String;
    :goto_1
    const-string v0, "deleteFilesOlderThanXDays"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object/from16 v13, p2

    move/from16 v5, p5

    goto/16 :goto_5

    .line 1456
    :cond_2
    const/4 v8, 0x3

    if-gez v2, :cond_3

    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_INVALID_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "days"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v0, v8, v7

    const-string v0, " It must be >= 0."

    aput-object v0, v8, v5

    invoke-virtual {v3, v8}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1461
    :cond_3
    :try_start_0
    const-string v0, "FileUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting files under "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "directory at path \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" older than "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " days"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v0, "file":Ljava/io/File;
    invoke-static {v1, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v9

    .line 1467
    .local v9, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v10, :cond_4

    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v10, :cond_4

    .line 1468
    sget-object v10, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v11, v12, v6

    aput-object v1, v12, v7

    invoke-virtual {v10, v12}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 1472
    :cond_4
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v11, 0x0

    if-ne v9, v10, :cond_6

    .line 1474
    if-eqz p4, :cond_5

    .line 1475
    return-object v11

    .line 1478
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "directory under which files had to be deleted"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 1479
    sget-object v10, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v4, v11, v6

    aput-object v1, v11, v7

    invoke-virtual {v10, v11}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 1488
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1489
    .local v10, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x5

    neg-int v13, v2

    invoke-virtual {v10, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 1491
    new-instance v12, Lorg/apache/commons/io/filefilter/AgeFileFilter;

    .line 1492
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v13, p2

    :try_start_1
    invoke-static {v0, v12, v13}, Lorg/apache/commons/io/FileUtils;->iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;

    move-result-object v12

    .line 1493
    .local v12, "filesToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1494
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    .line 1495
    .local v14, "subFile":Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v8, " directory sub"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v5, p5

    :try_start_2
    invoke-static {v8, v15, v7, v7, v5}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1496
    .local v8, "error":Lcom/termux/shared/errors/Error;
    if-eqz v8, :cond_7

    .line 1497
    return-object v8

    .line 1498
    .end local v14    # "subFile":Ljava/io/File;
    :cond_7
    const/4 v5, 0x2

    const/4 v8, 0x3

    goto :goto_2

    .line 1499
    .end local v0    # "file":Ljava/io/File;
    .end local v8    # "error":Lcom/termux/shared/errors/Error;
    .end local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v12    # "filesToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1493
    .restart local v0    # "file":Ljava/io/File;
    .restart local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v10    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "filesToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_8
    move/from16 v5, p5

    .line 1501
    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v12    # "filesToDelete":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    nop

    .line 1503
    return-object v11

    .line 1499
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v13, p2

    :goto_3
    move/from16 v5, p5

    .line 1500
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    sget-object v8, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_DELETING_FILES_OLDER_THAN_X_DAYS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v6

    aput-object v1, v11, v7

    const/4 v3, 0x2

    aput-object v9, v11, v3

    const/4 v3, 0x3

    aput-object v10, v11, v3

    invoke-virtual {v8, v0, v11}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 1455
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v13, p2

    move/from16 v5, p5

    :goto_5
    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v6

    aput-object v0, v9, v7

    invoke-virtual {v3, v9}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteRegularFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z

    .line 1199
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteSocketFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z

    .line 1244
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->SOCKET:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static deleteSymlinkFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "ignoreNonExistentFile"    # Z

    .line 1229
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static directoryFileExists(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z

    .line 324
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static fileExists(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z

    .line 361
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "prefixForNonAbsolutePath"    # Ljava/lang/String;

    .line 72
    if-nez p0, :cond_0

    const-string p0, ""

    .line 77
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    move-object v0, p0

    .local v0, "absolutePath":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0    # "absolutePath":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "absolutePath":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0    # "absolutePath":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "absolutePath":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 88
    :catch_0
    move-exception v1

    .line 91
    return-object v0
.end method

.method public static getFileBasename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 2026
    invoke-static {p0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2027
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2028
    .local v0, "lastSlash":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getFileBasenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 2038
    invoke-static {p0}, Lcom/termux/shared/file/FileUtils;->getFileBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2039
    .local v0, "fileBasename":Ljava/lang/String;
    invoke-static {v0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2040
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2041
    .local v1, "lastDot":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static getFileDirname(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 2014
    invoke-static {p0}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2015
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2016
    .local v0, "lastSlash":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z

    .line 380
    invoke-static {p0, p1}, Lcom/termux/shared/file/filesystem/FileTypes;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    return-object v0
.end method

.method public static getShortFileUtilsError(Lcom/termux/shared/errors/Error;)Lcom/termux/shared/errors/Error;
    .locals 8
    .param p0, "error"    # Lcom/termux/shared/errors/Error;

    .line 1993
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1994
    .local v0, "type":Ljava/lang/String;
    const-string v1, "FileUtils Error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 1996
    :cond_0
    sget-object v1, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_SHORT_MAPPING:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/errors/Errno;->valueOf(Ljava/lang/String;Ljava/lang/Integer;)Lcom/termux/shared/errors/Errno;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/errors/Errno;

    .line 1997
    .local v1, "shortErrno":Lcom/termux/shared/errors/Errno;
    if-nez v1, :cond_1

    return-object p0

    .line 1999
    :cond_1
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getThrowablesList()Ljava/util/List;

    move-result-object v2

    .line 2000
    .local v2, "throwables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "file"

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 2001
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {v1, v4}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 2003
    :cond_2
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->getLabel()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v6

    aput-object v5, v7, v4

    invoke-virtual {v1, v2, v7}, Lcom/termux/shared/errors/Errno;->getError(Ljava/util/List;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3
.end method

.method public static isCharsetSupported(Ljava/nio/charset/Charset;)Lcom/termux/shared/errors/Error;
    .locals 7
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    .line 1766
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "charset"

    aput-object v4, v0, v2

    const-string v2, "isCharsetSupported"

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1769
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1770
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_UNSUPPORTED_CHARSET:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-virtual {v3, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1774
    :cond_1
    nop

    .line 1776
    const/4 v0, 0x0

    return-object v0

    .line 1772
    :catch_0
    move-exception v3

    .line 1773
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CHECKING_IF_CHARSET_SUPPORTED_FAILED:Lcom/termux/shared/errors/Errno;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    aput-object v6, v0, v1

    invoke-virtual {v4, v3, v0}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "ensureUnder"    # Z

    .line 150
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/termux/shared/file/FileUtils;->isPathInDirPaths(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public static isPathInDirPaths(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "ensureUnder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 164
    .local p1, "dirPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 167
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    .line 170
    nop

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "dirPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/termux/shared/file/FileUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "normalizedDirPath":Ljava/lang/String;
    const-string v5, "/"

    if-eqz p2, :cond_2

    .line 178
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .local v5, "isPathInDirPaths":Z
    :goto_1
    goto :goto_2

    .line 180
    .end local v5    # "isPathInDirPaths":Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 182
    .restart local v5    # "isPathInDirPaths":Z
    :goto_2
    if-eqz v5, :cond_3

    return v2

    .line 183
    .end local v3    # "dirPath":Ljava/lang/String;
    .end local v4    # "normalizedDirPath":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 185
    .end local v5    # "isPathInDirPaths":Z
    :cond_4
    return v0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return v0
.end method

.method public static isValidPermissionString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 1980
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1981
    :cond_0
    const-string v1, "^([r-])[w-][x-]$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0

    .line 1980
    :cond_1
    :goto_0
    return v0
.end method

.method public static moveDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z

    .line 927
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    .line 928
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 927
    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z

    .line 1015
    sget v5, Lcom/termux/shared/file/filesystem/FileTypes;->FILE_TYPE_NORMAL_FLAGS:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static moveRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z

    .line 883
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    .line 884
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 883
    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static moveSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentSrcFile"    # Z

    .line 971
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    .line 972
    invoke-virtual {v0}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v6

    .line 971
    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/file/FileUtils;->copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZZ)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static nonIgnoredSubFileExists([Ljava/io/File;Ljava/util/List;)Z
    .locals 11
    .param p0, "subFiles"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 269
    .local p1, "ignoredSubFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 272
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    .line 273
    .local v3, "subFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "subFilePath":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    .line 276
    const/4 v5, 0x0

    .line 277
    .local v5, "isParentPath":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 278
    .local v8, "ignoredSubFilePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8, v0}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 279
    const/4 v5, 0x1

    .line 280
    goto :goto_2

    .line 282
    .end local v8    # "ignoredSubFilePath":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 284
    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 285
    return v6

    .line 289
    .end local v5    # "isParentPath":Z
    :cond_3
    invoke-static {v4, v0}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v5

    sget-object v7, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v5, v7, :cond_4

    .line 291
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/termux/shared/file/FileUtils;->nonIgnoredSubFileExists([Ljava/io/File;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 292
    return v6

    .line 272
    .end local v3    # "subFile":Ljava/io/File;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v4    # "subFilePath":Ljava/lang/String;
    :cond_5
    return v0

    .line 269
    :cond_6
    :goto_3
    return v0
.end method

.method public static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 104
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    const-string v0, "/+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    const-string v0, "\\./"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "/+$"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    :cond_1
    return-object p0
.end method

.method private static preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;
    .locals 6
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1742
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v1

    .line 1745
    .local v1, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v1, v2, :cond_0

    .line 1746
    sget-object v2, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-virtual {v2, v5}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1750
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "file parent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/termux/shared/file/FileUtils;->createParentDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 1751
    .local v0, "error":Lcom/termux/shared/errors/Error;
    if-eqz v0, :cond_1

    .line 1752
    return-object v0

    .line 1754
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static readSerializableObjectFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    .locals 16
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;"
        }
    .end annotation

    .line 1605
    .local p2, "readObjectType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, ""

    .line 1606
    .end local p0    # "label":Ljava/lang/String;
    .local v2, "label":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v11, p2

    goto/16 :goto_4

    .line 1608
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading serializable object from "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "file at path \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "FileUtils"

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    invoke-static {v1, v5}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v7

    .line 1615
    .local v7, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const-string v8, "file"

    if-eq v7, v0, :cond_3

    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v7, v0, :cond_3

    .line 1616
    new-instance v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v9, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v10, v4, v5

    aput-object v1, v4, v3

    invoke-virtual {v9, v4}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object v0

    .line 1620
    :cond_3
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v7, v0, :cond_5

    .line 1622
    if-eqz p3, :cond_4

    .line 1623
    new-instance v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    invoke-direct {v0, v6, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object v0

    .line 1626
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "file meant to be read"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1627
    .end local v2    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    new-instance v2, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v8, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v3

    invoke-virtual {v8, v4}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object v2

    .line 1631
    .end local v0    # "label":Ljava/lang/String;
    .restart local v2    # "label":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    .line 1632
    .local v9, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 1635
    .local v10, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 1636
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 1638
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v11, p2

    :try_start_1
    invoke-virtual {v11, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1644
    .local v0, "serializableObject":Ljava/io/Serializable;, "TT;"
    invoke-static {v9}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1645
    invoke-static {v10}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1646
    nop

    .line 1648
    new-instance v3, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    invoke-direct {v3, v6, v0}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object v3

    .line 1641
    .end local v0    # "serializableObject":Ljava/io/Serializable;, "TT;"
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1644
    :catchall_0
    move-exception v0

    move-object/from16 v11, p2

    goto :goto_3

    .line 1641
    :catch_1
    move-exception v0

    move-object/from16 v11, p2

    .line 1642
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v12, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v13, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_READING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v8, v15, v5

    aput-object v1, v15, v3

    aput-object v14, v15, v4

    invoke-virtual {v13, v0, v15}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    invoke-direct {v12, v3, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1644
    invoke-static {v9}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1645
    invoke-static {v10}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1642
    return-object v12

    .line 1644
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v9}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1645
    invoke-static {v10}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1646
    throw v0

    .line 1606
    .end local v7    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_6
    move-object/from16 v11, p2

    :goto_4
    new-instance v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    sget-object v7, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v5

    const-string v5, "readSerializableObjectFromFile"

    aput-object v5, v4, v3

    invoke-virtual {v7, v4}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;-><init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public static readTextFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Z)Lcom/termux/shared/errors/Error;
    .locals 16
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataStringBuilder"    # Ljava/lang/StringBuilder;
    .param p4, "ignoreNonExistentFile"    # Z

    .line 1524
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, ""

    .line 1525
    .end local p0    # "label":Ljava/lang/String;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 1527
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading text from "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "file at path \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "FileUtils"

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-static {v1, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v8

    .line 1534
    .local v8, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const-string v9, "file"

    if-eq v8, v0, :cond_3

    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v8, v0, :cond_3

    .line 1535
    sget-object v0, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 1539
    :cond_3
    sget-object v0, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v10, 0x0

    if-ne v8, v0, :cond_5

    .line 1541
    if-eqz p4, :cond_4

    .line 1542
    return-object v10

    .line 1545
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "file meant to be read"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1546
    .end local v3    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    sget-object v3, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    return-object v3

    .line 1550
    .end local v0    # "label":Ljava/lang/String;
    .restart local v3    # "label":Ljava/lang/String;
    :cond_5
    if-nez p2, :cond_6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    move-object v11, v0

    .end local p2    # "charset":Ljava/nio/charset/Charset;
    .local v0, "charset":Ljava/nio/charset/Charset;
    goto :goto_2

    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .restart local p2    # "charset":Ljava/nio/charset/Charset;
    :cond_6
    move-object/from16 v11, p2

    .line 1553
    .end local p2    # "charset":Ljava/nio/charset/Charset;
    .local v11, "charset":Ljava/nio/charset/Charset;
    :goto_2
    invoke-static {v11}, Lcom/termux/shared/file/FileUtils;->isCharsetSupported(Ljava/nio/charset/Charset;)Lcom/termux/shared/errors/Error;

    move-result-object v12

    .line 1554
    .local v12, "error":Lcom/termux/shared/errors/Error;
    if-eqz v12, :cond_7

    .line 1555
    return-object v12

    .line 1557
    :cond_7
    const/4 v13, 0x0

    .line 1558
    .local v13, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 1561
    .local v14, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 1562
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v13, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v14, v0

    .line 1566
    const/4 v0, 0x1

    .line 1567
    .local v0, "firstLine":Z
    :goto_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p0, v15

    .local p0, "receiveString":Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 1568
    if-nez v0, :cond_8

    const-string v15, "\n"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 1569
    :goto_4
    move-object/from16 v15, p0

    .end local p0    # "receiveString":Ljava/lang/String;
    .local v15, "receiveString":Ljava/lang/String;
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1572
    .end local v15    # "receiveString":Ljava/lang/String;
    .restart local p0    # "receiveString":Ljava/lang/String;
    :cond_9
    move-object/from16 v15, p0

    .end local p0    # "receiveString":Ljava/lang/String;
    .restart local v15    # "receiveString":Ljava/lang/String;
    const-string v4, "String"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move/from16 p2, v0

    .end local v0    # "firstLine":Z
    .local p2, "firstLine":Z
    const/16 v0, 0xfa0

    invoke-static {v10, v0, v5, v6, v5}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    const-string v10, "-"

    invoke-static {v4, v0, v10}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    .end local v15    # "receiveString":Ljava/lang/String;
    .end local p2    # "firstLine":Z
    invoke-static {v13}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1577
    invoke-static {v14}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1578
    nop

    .line 1580
    const/4 v0, 0x0

    return-object v0

    .line 1576
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_READING_TEXT_FROM_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v6

    aput-object v1, v10, v5

    const/4 v5, 0x2

    aput-object v9, v10, v5

    invoke-virtual {v4, v0, v10}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1576
    invoke-static {v13}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1577
    invoke-static {v14}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1574
    return-object v4

    .line 1576
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v13}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1577
    invoke-static {v14}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1578
    throw v0

    .line 1525
    .end local v8    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v11    # "charset":Ljava/nio/charset/Charset;
    .end local v12    # "error":Lcom/termux/shared/errors/Error;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v14    # "bufferedReader":Ljava/io/BufferedReader;
    .local p2, "charset":Ljava/nio/charset/Charset;
    :cond_a
    :goto_6
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "file path"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v6

    const-string v4, "readStringFromFile"

    aput-object v4, v7, v5

    invoke-virtual {v0, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static regularFileExists(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z

    .line 311
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static regularOrDirectoryFileExists(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "followLinks"    # Z

    .line 347
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v0

    .line 348
    .local v0, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "sanitizeWhitespaces"    # Z
    .param p2, "toLower"    # Z

    .line 126
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    const-string v0, "_"

    if-eqz p1, :cond_1

    .line 129
    const-string v1, "[\\\\/:*?\"<>| \t\n]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 131
    :cond_1
    const-string v1, "[\\\\/:*?\"<>|]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    :goto_0
    if-eqz p2, :cond_2

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_2
    return-object p0
.end method

.method public static setFilePermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "permissionsToSet"    # Ljava/lang/String;

    .line 1807
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/termux/shared/file/FileUtils;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    return-void
.end method

.method public static setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToSet"    # Ljava/lang/String;

    .line 1819
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    move-object p0, v0

    .line 1820
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 1822
    :cond_2
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\""

    const-string v2, "FileUtils"

    if-nez v0, :cond_3

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid permissionsToSet passed to setFilePermissions: \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    return-void

    .line 1827
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1829
    .local v0, "file":Ljava/io/File;
    const-string v3, "r"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "file at path \""

    if-eqz v3, :cond_4

    .line 1830
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting read permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v0, v4}, Ljava/io/File;->setReadable(Z)Z

    goto :goto_2

    .line 1835
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing read permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v0, v5}, Ljava/io/File;->setReadable(Z)Z

    .line 1842
    :cond_5
    :goto_2
    const-string v3, "w"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1843
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting write permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, v4}, Ljava/io/File;->setWritable(Z)Z

    goto :goto_3

    .line 1848
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing write permissions for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v0, v5}, Ljava/io/File;->setWritable(Z)Z

    .line 1855
    :cond_7
    :goto_3
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1856
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting execute permissions for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0, v4}, Ljava/io/File;->setExecutable(Z)Z

    goto :goto_4

    .line 1861
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing execute permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v0, v5}, Ljava/io/File;->setExecutable(Z)Z

    .line 1866
    :cond_9
    :goto_4
    return-void

    .line 1820
    .end local v0    # "file":Ljava/io/File;
    :cond_a
    :goto_5
    return-void
.end method

.method public static setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "permissionsToSet"    # Ljava/lang/String;

    .line 1878
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    return-void
.end method

.method public static setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "permissionsToSet"    # Ljava/lang/String;

    .line 1890
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    move-object p0, v0

    .line 1891
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 1893
    :cond_2
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isValidPermissionString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\""

    const-string v2, "FileUtils"

    if-nez v0, :cond_3

    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid permissionsToSet passed to setMissingFilePermissions: \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    return-void

    .line 1898
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1900
    .local v0, "file":Ljava/io/File;
    const-string v3, "r"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "file at path \""

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting missing read permissions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v0, v4}, Ljava/io/File;->setReadable(Z)Z

    .line 1905
    :cond_4
    const-string v3, "w"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting missing write permissions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    invoke-virtual {v0, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 1910
    :cond_5
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting missing execute permissions for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v0, v4}, Ljava/io/File;->setExecutable(Z)Z

    .line 1914
    :cond_6
    return-void

    .line 1891
    .end local v0    # "file":Ljava/io/File;
    :cond_7
    :goto_2
    return-void
.end method

.method public static symlinkFileExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v1

    sget-object v2, Lcom/termux/shared/file/filesystem/FileType;->SYMLINK:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static validateDirectoryFileEmptyOrOnlyContainsSpecificFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/termux/shared/errors/Error;
    .locals 9
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p3, "ignoreNonExistentFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/termux/shared/errors/Error;"
        }
    .end annotation

    .line 210
    .local p2, "ignoredSubFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "directory"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    :goto_1
    move-object p0, v1

    .line 211
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 214
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v4, "file":Ljava/io/File;
    invoke-static {p1, v3}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v5

    .line 218
    .local v5, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v5, v6, :cond_3

    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v5, v6, :cond_3

    .line 219
    sget-object v6, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v3

    aput-object p1, v8, v1

    invoke-virtual {v6, v8}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 223
    :cond_3
    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_5

    .line 225
    if-eqz p3, :cond_4

    .line 226
    return-object v7

    .line 228
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "directory to check if is empty or only contains specific files"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object p0, v6

    .line 229
    sget-object v6, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p0, v7, v3

    aput-object p1, v7, v1

    invoke-virtual {v6, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 233
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 234
    .local v6, "subFiles":[Ljava/io/File;
    if-eqz v6, :cond_a

    array-length v8, v6

    if-nez v8, :cond_6

    goto :goto_3

    .line 238
    :cond_6
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 242
    :cond_7
    invoke-static {v6, p2}, Lcom/termux/shared/file/FileUtils;->nonIgnoredSubFileExists([Ljava/io/File;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 243
    sget-object v7, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/errors/Errno;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p0, v8, v3

    aput-object p1, v8, v1

    invoke-virtual {v7, v8}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 248
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v6    # "subFiles":[Ljava/io/File;
    :cond_8
    nop

    .line 250
    return-object v7

    .line 239
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v6    # "subFiles":[Ljava/io/File;
    :cond_9
    :goto_2
    sget-object v7, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/errors/Errno;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p0, v8, v3

    aput-object p1, v8, v1

    invoke-virtual {v7, v8}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 235
    :cond_a
    :goto_3
    return-object v7

    .line 246
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v6    # "subFiles":[Ljava/io/File;
    :catch_0
    move-exception v4

    .line 247
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_VALIDATE_DIRECTORY_EMPTY_OR_ONLY_CONTAINS_SPECIFIC_FILES_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object p1, v7, v1

    aput-object v6, v7, v2

    invoke-virtual {v5, v4, v7}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 211
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_4
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    const-string v3, "isDirectoryFileEmptyOrOnlyContainsSpecificFiles"

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static validateDirectoryFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Lcom/termux/shared/errors/Error;
    .locals 15
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "parentDirPath"    # Ljava/lang/String;
    .param p3, "createDirectoryIfMissing"    # Z
    .param p4, "permissionsToCheck"    # Ljava/lang/String;
    .param p5, "setPermissions"    # Z
    .param p6, "setMissingPermissionsOnly"    # Z
    .param p7, "ignoreErrorsIfPathIsInParentDirPath"    # Z
    .param p8, "ignoreIfNotExecutable"    # Z

    .line 490
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "directory file"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    :goto_0
    const-string v5, ""

    .line 491
    .end local p0    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v12, p8

    goto/16 :goto_6

    .line 494
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, "file":Ljava/io/File;
    invoke-static {v1, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v9

    .line 498
    .local v9, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, "directory"

    if-eq v9, v10, :cond_3

    :try_start_1
    sget-object v10, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v10, :cond_3

    .line 499
    sget-object v10, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_DIRECTORY_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v12, v13, v8

    aput-object v1, v13, v6

    invoke-virtual {v10, v13}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    return-object v4

    .line 502
    :cond_3
    const/4 v10, 0x0

    .line 503
    .local v10, "isPathInParentDirPath":Z
    if-eqz v2, :cond_4

    .line 505
    invoke-static {v1, v2, v8}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    move v10, v12

    .line 508
    :cond_4
    if-nez p3, :cond_5

    if-eqz p5, :cond_9

    .line 510
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v10, :cond_9

    invoke-static {v2, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v12

    sget-object v13, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v12, v13, :cond_9

    .line 512
    :cond_6
    if-eqz p3, :cond_7

    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v9, v12, :cond_7

    .line 513
    const-string v12, "FileUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Creating "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "directory file at path \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v12

    .line 517
    .local v12, "result":Z
    invoke-static {v1, v8}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v13

    move-object v9, v13

    .line 518
    if-nez v12, :cond_7

    sget-object v13, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v13, :cond_7

    .line 519
    sget-object v11, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_CREATING_FILE_FAILED:Lcom/termux/shared/errors/Errno;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v13, v14, v8

    aput-object v1, v14, v6

    invoke-virtual {v11, v14}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    return-object v4

    .line 523
    .end local v12    # "result":Z
    :cond_7
    if-eqz p5, :cond_9

    if-eqz v3, :cond_9

    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v9, v12, :cond_9

    .line 524
    if-eqz p6, :cond_8

    .line 525
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1, v3}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 527
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1, v3}, Lcom/termux/shared/file/FileUtils;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_9
    :goto_2
    if-eqz v2, :cond_b

    if-eqz v10, :cond_b

    if-nez p7, :cond_a

    goto :goto_3

    :cond_a
    move/from16 v12, p8

    goto :goto_4

    .line 537
    :cond_b
    :goto_3
    sget-object v12, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v9, v12, :cond_c

    .line 538
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 539
    sget-object v11, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v5, v12, v8

    aput-object v1, v12, v6

    invoke-virtual {v11, v12}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    return-object v4

    .line 542
    :cond_c
    if-eqz v3, :cond_d

    .line 544
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v12, p8

    :try_start_2
    invoke-static {v11, v1, v3, v12}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .line 547
    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "isPathInParentDirPath":Z
    :catch_0
    move-exception v0

    goto :goto_5

    .line 542
    .restart local v0    # "file":Ljava/io/File;
    .restart local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .restart local v10    # "isPathInParentDirPath":Z
    :cond_d
    move/from16 v12, p8

    .line 549
    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v10    # "isPathInParentDirPath":Z
    :goto_4
    nop

    .line 551
    const/4 v0, 0x0

    return-object v0

    .line 547
    :catch_1
    move-exception v0

    move/from16 v12, p8

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    sget-object v9, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_VALIDATE_DIRECTORY_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v8

    aput-object v1, v11, v6

    aput-object v10, v11, v7

    invoke-virtual {v9, v0, v11}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    return-object v4

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    move/from16 v12, p8

    :goto_6
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "directory file path"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    const-string v4, "validateDirectoryExistenceAndPermissions"

    aput-object v4, v7, v6

    invoke-virtual {v0, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static validateRegularFileExistenceAndPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/termux/shared/errors/Error;
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "parentDirPath"    # Ljava/lang/String;
    .param p3, "permissionsToCheck"    # Ljava/lang/String;
    .param p4, "setPermissions"    # Z
    .param p5, "setMissingPermissionsOnly"    # Z
    .param p6, "ignoreErrorsIfPathIsUnderParentDirPath"    # Z

    .line 409
    const-string v0, "file"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    :goto_1
    move-object p0, v1

    .line 410
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    .line 413
    :cond_2
    :try_start_0
    invoke-static {p1, v3}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v4

    .line 416
    .local v4, "fileType":Lcom/termux/shared/file/filesystem/FileType;
    sget-object v5, Lcom/termux/shared/file/filesystem/FileType;->NO_EXIST:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v4, v5, :cond_3

    .line 417
    sget-object v5, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_REGULAR_FILE_FOUND:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v3

    aput-object p1, v7, v2

    invoke-virtual {v5, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 420
    :cond_3
    const/4 v5, 0x0

    .line 421
    .local v5, "isPathUnderParentDirPath":Z
    if-eqz p2, :cond_4

    .line 423
    invoke-static {p1, p2, v2}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    move v5, v6

    .line 427
    :cond_4
    if-eqz p4, :cond_7

    if-eqz p3, :cond_7

    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v4, v6, :cond_7

    .line 429
    if-eqz p2, :cond_5

    if-eqz v5, :cond_7

    invoke-static {p2, v3}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    move-result-object v6

    sget-object v7, Lcom/termux/shared/file/filesystem/FileType;->DIRECTORY:Lcom/termux/shared/file/filesystem/FileType;

    if-ne v6, v7, :cond_7

    .line 430
    :cond_5
    if-eqz p5, :cond_6

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p3}, Lcom/termux/shared/file/FileUtils;->setMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 433
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p3}, Lcom/termux/shared/file/FileUtils;->setFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_7
    :goto_2
    sget-object v6, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    if-eq v4, v6, :cond_8

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "regular file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object p0, v6

    .line 441
    sget-object v6, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_FILE_NOT_FOUND_AT_PATH:Lcom/termux/shared/errors/Errno;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v3

    aput-object p1, v7, v2

    invoke-virtual {v6, v7}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/termux/shared/errors/Error;->setLabel(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 446
    :cond_8
    if-eqz p2, :cond_9

    if-eqz v5, :cond_9

    if-nez p6, :cond_a

    .line 447
    :cond_9
    if-eqz p3, :cond_a

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "regular"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p3, v3}, Lcom/termux/shared/file/FileUtils;->checkMissingFilePermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 454
    .end local v4    # "fileType":Lcom/termux/shared/file/filesystem/FileType;
    .end local v5    # "isPathUnderParentDirPath":Z
    :cond_a
    nop

    .line 456
    const/4 v0, 0x0

    return-object v0

    .line 452
    :catch_0
    move-exception v4

    .line 453
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_VALIDATE_FILE_EXISTENCE_AND_PERMISSIONS_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object p1, v7, v2

    aput-object v6, v7, v1

    invoke-virtual {v5, v4, v7}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0

    .line 410
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_3
    sget-object v0, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "regular file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "validateRegularFileExistenceAndPermissions"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static writeSerializableObjectToFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Lcom/termux/shared/errors/Error;
    .locals 11
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/termux/shared/errors/Error;"
        }
    .end annotation

    .line 1709
    .local p2, "serializableObject":Ljava/io/Serializable;, "TT;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    move-object p0, v0

    .line 1710
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 1712
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing serializable object to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file at path \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileUtils"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 1717
    .local v3, "error":Lcom/termux/shared/errors/Error;
    if-eqz v3, :cond_3

    .line 1718
    return-object v3

    .line 1720
    :cond_3
    const/4 v4, 0x0

    .line 1721
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1724
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 1725
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 1727
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1728
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1733
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1734
    nop

    .line 1736
    const/4 v0, 0x0

    return-object v0

    .line 1732
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1729
    :catch_0
    move-exception v6

    .line 1730
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v7, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_WRITING_SERIALIZABLE_OBJECT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v1

    aput-object p1, v10, v0

    aput-object v9, v10, v2

    invoke-virtual {v7, v6, v10}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1732
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1733
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1730
    return-object v0

    .line 1732
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1733
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1734
    throw v0

    .line 1710
    .end local v3    # "error":Lcom/termux/shared/errors/Error;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_4
    :goto_3
    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    const-string v1, "writeSerializableObjectToFile"

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;
    .locals 11
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataString"    # Ljava/lang/String;
    .param p4, "append"    # Z

    .line 1663
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    move-object p0, v0

    .line 1664
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 1666
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing text to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file at path \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xfa0

    invoke-static {p3, v4, v2, v1, v2}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-static {v3, v4, v5}, Lcom/termux/shared/logger/Logger;->getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileUtils"

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->preWriteToFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 1671
    .local v3, "error":Lcom/termux/shared/errors/Error;
    if-eqz v3, :cond_3

    .line 1672
    return-object v3

    .line 1674
    :cond_3
    if-nez p2, :cond_4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    .line 1677
    :cond_4
    invoke-static {p2}, Lcom/termux/shared/file/FileUtils;->isCharsetSupported(Ljava/nio/charset/Charset;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 1678
    if-eqz v3, :cond_5

    .line 1679
    return-object v3

    .line 1681
    :cond_5
    const/4 v4, 0x0

    .line 1682
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1685
    .local v5, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v4, v6

    .line 1686
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v4, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v5, v6

    .line 1688
    invoke-virtual {v5, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1693
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1694
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1695
    nop

    .line 1697
    const/4 v0, 0x0

    return-object v0

    .line 1693
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1690
    :catch_0
    move-exception v6

    .line 1691
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v7, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_WRITING_TEXT_TO_FILE_FAILED_WITH_EXCEPTION:Lcom/termux/shared/errors/Errno;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v1

    aput-object p1, v10, v2

    aput-object v9, v10, v0

    invoke-virtual {v7, v6, v10}, Lcom/termux/shared/errors/Errno;->getError(Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1693
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1694
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1691
    return-object v0

    .line 1693
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1694
    invoke-static {v5}, Lcom/termux/shared/file/FileUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 1695
    throw v0

    .line 1664
    .end local v3    # "error":Lcom/termux/shared/errors/Error;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "bufferedWriter":Ljava/io/BufferedWriter;
    :cond_6
    :goto_3
    sget-object v3, Lcom/termux/shared/errors/FunctionErrno;->ERRNO_NULL_OR_EMPTY_PARAMETER:Lcom/termux/shared/errors/Errno;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    const-string v1, "writeStringToFile"

    aput-object v1, v0, v2

    invoke-virtual {v3, v0}, Lcom/termux/shared/errors/Errno;->getError([Ljava/lang/Object;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    return-object v0
.end method

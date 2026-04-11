.class public Lcom/termux/shared/file/tests/FileUtilsTests;
.super Ljava/lang/Object;
.source "FileUtilsTests.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileUtilsTests"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Lcom/termux/shared/errors/Error;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/termux/shared/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 364
    .local v0, "actualString":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->equalsRegardingNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nexpected: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\nactual: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\nFull Error:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 366
    :cond_2
    return-void
.end method

.method public static assertEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    invoke-static {p1, p2}, Lcom/termux/shared/file/tests/FileUtilsTests;->equalsRegardingNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexpected: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\nactual: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method

.method public static assertErrnoEqual(Ljava/lang/String;Lcom/termux/shared/errors/Errno;Lcom/termux/shared/errors/Error;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Lcom/termux/shared/errors/Errno;
    .param p2, "actual"    # Lcom/termux/shared/errors/Error;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/termux/shared/errors/Errno;->equalsErrorTypeAndCode(Lcom/termux/shared/errors/Error;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexpected: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\nactual: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\nFull Error:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 384
    :cond_3
    return-void
.end method

.method private static equalsRegardingNull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 374
    if-nez p0, :cond_1

    .line 375
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 378
    :cond_1
    invoke-static {p0, p1}, Lcom/termux/shared/file/tests/FileUtilsTests;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 389
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static runTests(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "testRootDirectoryPath"    # Ljava/lang/String;

    .line 36
    const-string v0, "FileUtilsTests"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Running tests"

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testRootDirectoryPath: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p1, v1}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "fileUtilsTestsDirectoryCanonicalPath":Ljava/lang/String;
    const-string v3, "FileUtilsTests directory path is not a canonical path"

    invoke-static {v3, p1, v2}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/termux/shared/file/tests/FileUtilsTests;->runTestsInner(Ljava/lang/String;)V

    .line 43
    const-string v3, "All tests successful"

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "fileUtilsTestsDirectoryCanonicalPath":Ljava/lang/String;
    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?s)\nFull Error:\n.*"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 48
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static runTestsInner(Ljava/lang/String;)V
    .locals 47
    .param p0, "testRootDirectoryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    move-object/from16 v0, p0

    const-string v1, "dir1"

    .line 70
    .local v1, "dir1_label":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dir1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "dir1_path":Ljava/lang/String;
    const-string v3, "dir1/sub_dir1"

    .line 73
    .local v3, "dir1__sub_dir1_label":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sub_dir1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "dir1__sub_dir1_path":Ljava/lang/String;
    const-string v5, "dir1/sub_dir2"

    .line 76
    .local v5, "dir1__sub_dir2_label":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sub_dir2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "dir1__sub_dir2_path":Ljava/lang/String;
    const-string v7, "dir1/sub_dir3"

    .line 79
    .local v7, "dir1__sub_dir3_label":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/sub_dir3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "dir1__sub_dir3_path":Ljava/lang/String;
    const-string v9, "dir1/sub_dir3/sub_reg1"

    .line 82
    .local v9, "dir1__sub_dir3__sub_reg1_label":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/sub_reg1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, "dir1__sub_dir3__sub_reg1_path":Ljava/lang/String;
    const-string v12, "dir1/sub_reg1"

    .line 85
    .local v12, "dir1__sub_reg1_label":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, "dir1__sub_reg1_path":Ljava/lang/String;
    const-string v14, "dir1/sub_sym1"

    .line 88
    .local v14, "dir1__sub_sym1_label":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v5

    .end local v5    # "dir1__sub_dir2_label":Ljava/lang/String;
    .local v16, "dir1__sub_dir2_label":Ljava/lang/String;
    const-string v5, "/sub_sym1"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "dir1__sub_sym1_path":Ljava/lang/String;
    const-string v15, "dir1/sub_sym2"

    .line 91
    .local v15, "dir1__sub_sym2_label":Ljava/lang/String;
    move-object/from16 v17, v9

    .end local v9    # "dir1__sub_dir3__sub_reg1_label":Ljava/lang/String;
    .local v17, "dir1__sub_dir3__sub_reg1_label":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v18, v8

    .end local v8    # "dir1__sub_dir3_path":Ljava/lang/String;
    .local v18, "dir1__sub_dir3_path":Ljava/lang/String;
    const-string v8, "/sub_sym2"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "dir1__sub_sym2_path":Ljava/lang/String;
    const-string v9, "dir1/sub_sym3"

    .line 94
    .local v9, "dir1__sub_sym3_label":Ljava/lang/String;
    move-object/from16 v19, v7

    .end local v7    # "dir1__sub_dir3_label":Ljava/lang/String;
    .local v19, "dir1__sub_dir3_label":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v20, v6

    .end local v6    # "dir1__sub_dir2_path":Ljava/lang/String;
    .local v20, "dir1__sub_dir2_path":Ljava/lang/String;
    const-string v6, "/sub_sym3"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "dir1__sub_sym3_path":Ljava/lang/String;
    const-string v7, "dir2"

    .line 98
    .local v7, "dir2_label":Ljava/lang/String;
    move-object/from16 v21, v10

    .end local v10    # "dir1__sub_dir3__sub_reg1_path":Ljava/lang/String;
    .local v21, "dir1__sub_dir3__sub_reg1_path":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v22, v6

    .end local v6    # "dir1__sub_sym3_path":Ljava/lang/String;
    .local v22, "dir1__sub_sym3_path":Ljava/lang/String;
    const-string v6, "/dir2"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "dir2_path":Ljava/lang/String;
    const-string v10, "dir2/sub_reg1"

    .line 101
    .local v10, "dir2__sub_reg1_label":Ljava/lang/String;
    move-object/from16 v23, v9

    .end local v9    # "dir1__sub_sym3_label":Ljava/lang/String;
    .local v23, "dir1__sub_sym3_label":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "dir2__sub_reg1_path":Ljava/lang/String;
    const-string v11, "dir2/sub_reg2"

    .line 104
    .local v11, "dir2__sub_reg2_label":Ljava/lang/String;
    move-object/from16 v24, v11

    .end local v11    # "dir2__sub_reg2_label":Ljava/lang/String;
    .local v24, "dir2__sub_reg2_label":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v25, v9

    .end local v9    # "dir2__sub_reg1_path":Ljava/lang/String;
    .local v25, "dir2__sub_reg1_path":Ljava/lang/String;
    const-string v9, "/sub_reg2"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "dir2__sub_reg2_path":Ljava/lang/String;
    const-string v11, "dir3"

    .line 108
    .local v11, "dir3_label":Ljava/lang/String;
    move-object/from16 v26, v11

    .end local v11    # "dir3_label":Ljava/lang/String;
    .local v26, "dir3_label":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v27, v9

    .end local v9    # "dir2__sub_reg2_path":Ljava/lang/String;
    .local v27, "dir2__sub_reg2_path":Ljava/lang/String;
    const-string v9, "/dir3"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "dir3_path":Ljava/lang/String;
    const-string v11, "dir4"

    .line 111
    .local v11, "dir4_label":Ljava/lang/String;
    move-object/from16 v28, v11

    .end local v11    # "dir4_label":Ljava/lang/String;
    .local v28, "dir4_label":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v29, v9

    .end local v9    # "dir3_path":Ljava/lang/String;
    .local v29, "dir3_path":Ljava/lang/String;
    const-string v9, "/dir4"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "dir4_path":Ljava/lang/String;
    const-string v11, "testRootDirectoryPath"

    .line 119
    .local v11, "label":Ljava/lang/String;
    move-object/from16 v30, v9

    .end local v9    # "dir4_path":Ljava/lang/String;
    .local v30, "dir4_path":Ljava/lang/String;
    invoke-static {v11, v0}, Lcom/termux/shared/file/FileUtils;->clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v9

    .line 120
    .local v9, "error":Lcom/termux/shared/errors/Error;
    move-object/from16 v31, v10

    .end local v10    # "dir2__sub_reg1_label":Ljava/lang/String;
    .local v31, "dir2__sub_reg1_label":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v8

    .end local v8    # "dir1__sub_sym2_path":Ljava/lang/String;
    .local v32, "dir1__sub_sym2_path":Ljava/lang/String;
    const-string v8, "Failed to create "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v33, v15

    .end local v15    # "dir1__sub_sym2_label":Ljava/lang/String;
    .local v33, "dir1__sub_sym2_label":Ljava/lang/String;
    const-string v15, " directory file"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v34, v5

    .end local v5    # "dir1__sub_sym1_path":Ljava/lang/String;
    .local v34, "dir1__sub_sym1_path":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v10, v5, v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 122
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v35

    const-string v10, " directory file does not exist as expected after creation"

    const-string v5, "The "

    if-nez v35, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-static {v1, v2}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 128
    .end local v9    # "error":Lcom/termux/shared/errors/Error;
    .local v0, "error":Lcom/termux/shared/errors/Error;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v35, v11

    const/4 v11, 0x0

    .end local v11    # "label":Ljava/lang/String;
    .local v35, "label":Ljava/lang/String;
    invoke-static {v9, v11, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 131
    invoke-static {v7, v6}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 139
    move-object v9, v3

    .end local v35    # "label":Ljava/lang/String;
    .local v9, "label":Ljava/lang/String;
    move-object v11, v4

    .line 140
    .local v11, "path":Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 141
    move-object/from16 v35, v4

    .end local v4    # "dir1__sub_dir1_path":Ljava/lang/String;
    .local v35, "dir1__sub_dir1_path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v3

    const/4 v3, 0x0

    .end local v3    # "dir1__sub_dir1_label":Ljava/lang/String;
    .local v36, "dir1__sub_dir1_label":Ljava/lang/String;
    invoke-static {v4, v3, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 142
    const/4 v3, 0x0

    invoke-static {v11, v3}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 146
    :cond_1
    move-object v3, v12

    .end local v9    # "label":Ljava/lang/String;
    .local v3, "label":Ljava/lang/String;
    move-object v4, v13

    .line 147
    .end local v11    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/termux/shared/file/FileUtils;->createRegularFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " regular file"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v37, v12

    const/4 v12, 0x0

    .end local v12    # "dir1__sub_reg1_label":Ljava/lang/String;
    .local v37, "dir1__sub_reg1_label":Ljava/lang/String;
    invoke-static {v9, v12, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 149
    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_2

    .line 150
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " regular file does not exist as expected after creation"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 153
    :cond_2
    move-object v3, v14

    move-object/from16 v4, v34

    .line 154
    invoke-static {v3, v6, v4}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 155
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " symlink file"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v38, v13

    const/4 v13, 0x0

    .end local v13    # "dir1__sub_reg1_path":Ljava/lang/String;
    .local v38, "dir1__sub_reg1_path":Ljava/lang/String;
    invoke-static {v9, v13, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 156
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->symlinkFileExists(Ljava/lang/String;)Z

    move-result v9

    const-string v13, " symlink file does not exist as expected after creation"

    if-nez v9, :cond_3

    .line 157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 160
    :cond_3
    move-object/from16 v3, v33

    move-object/from16 v4, v32

    .line 161
    move-object/from16 v39, v10

    move-object/from16 v9, v34

    move-object/from16 v34, v0

    const/4 v0, 0x0

    .end local v0    # "error":Lcom/termux/shared/errors/Error;
    .local v9, "dir1__sub_sym1_path":Ljava/lang/String;
    .local v34, "error":Lcom/termux/shared/errors/Error;
    invoke-static {v3, v9, v4, v0}, Lcom/termux/shared/file/FileUtils;->copySymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v10

    .line 162
    .end local v34    # "error":Lcom/termux/shared/errors/Error;
    .local v10, "error":Lcom/termux/shared/errors/Error;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v9

    .end local v9    # "dir1__sub_sym1_path":Ljava/lang/String;
    .local v34, "dir1__sub_sym1_path":Ljava/lang/String;
    const-string v9, "Failed to copy "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v40, v11

    const-string v11, " symlink file to "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v0, v11, v10}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 163
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->symlinkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " symlink file does not exist as expected after copying it from "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 165
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " symlink file does not point to "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 173
    :cond_5
    move-object/from16 v0, v31

    .end local v3    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    move-object/from16 v3, v25

    .line 174
    .end local v4    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v11, "line1"

    move-object/from16 v41, v10

    const/4 v10, 0x0

    .end local v10    # "error":Lcom/termux/shared/errors/Error;
    .local v41, "error":Lcom/termux/shared/errors/Error;
    invoke-static {v0, v3, v4, v11, v10}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 175
    .end local v41    # "error":Lcom/termux/shared/errors/Error;
    .local v4, "error":Lcom/termux/shared/errors/Error;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v14

    .end local v14    # "dir1__sub_sym1_label":Ljava/lang/String;
    .local v41, "dir1__sub_sym1_label":Ljava/lang/String;
    const-string v14, "Failed to write string to "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v42, v11

    const-string v11, " file with append mode false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v43, v11

    const/4 v11, 0x0

    invoke-static {v10, v11, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 176
    const/4 v10, 0x0

    invoke-static {v3, v10}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v11

    const-string v10, " file does not exist as expected after writing to it with append mode false"

    if-nez v11, :cond_6

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 180
    :cond_6
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    move-object/from16 v44, v4

    .end local v4    # "error":Lcom/termux/shared/errors/Error;
    .local v44, "error":Lcom/termux/shared/errors/Error;
    const-string v4, "\nline2"

    move-object/from16 v45, v10

    const/4 v10, 0x1

    invoke-static {v0, v3, v11, v4, v10}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 181
    .end local v44    # "error":Lcom/termux/shared/errors/Error;
    .restart local v4    # "error":Lcom/termux/shared/errors/Error;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " file with append mode true"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v10, "dataStringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    move-object/from16 v44, v4

    const/4 v4, 0x0

    .end local v4    # "error":Lcom/termux/shared/errors/Error;
    .restart local v44    # "error":Lcom/termux/shared/errors/Error;
    invoke-static {v0, v3, v11, v10, v4}, Lcom/termux/shared/file/FileUtils;->readTextFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Z)Lcom/termux/shared/errors/Error;

    move-result-object v11

    .line 186
    .end local v44    # "error":Lcom/termux/shared/errors/Error;
    .local v11, "error":Lcom/termux/shared/errors/Error;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v44, v3

    .end local v3    # "path":Ljava/lang/String;
    .local v44, "path":Ljava/lang/String;
    const-string v3, "Failed to read from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v11}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The data read from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file in not as expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "line1\nline2"

    move-object/from16 v46, v0

    .end local v0    # "label":Ljava/lang/String;
    .local v46, "label":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, v24

    .end local v46    # "label":Ljava/lang/String;
    .restart local v0    # "label":Ljava/lang/String;
    move-object/from16 v3, v27

    .line 191
    .end local v44    # "path":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    move-object/from16 v4, v25

    move-object/from16 v25, v10

    const/4 v10, 0x0

    .end local v10    # "dataStringBuilder":Ljava/lang/StringBuilder;
    .local v4, "dir2__sub_reg1_path":Ljava/lang/String;
    .local v25, "dataStringBuilder":Ljava/lang/StringBuilder;
    invoke-static {v0, v4, v3, v10}, Lcom/termux/shared/file/FileUtils;->copyRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v11

    .line 192
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v44, v14

    move-object/from16 v14, v31

    .end local v31    # "dir2__sub_reg1_label":Ljava/lang/String;
    .local v14, "dir2__sub_reg1_label":Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v31, v4

    .end local v4    # "dir2__sub_reg1_path":Ljava/lang/String;
    .local v31, "dir2__sub_reg1_path":Ljava/lang/String;
    const-string v4, " regular file to "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-static {v4, v10, v11}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 193
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_7

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " regular file does not exist as expected after copying it from "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 201
    :cond_7
    move-object/from16 v0, v26

    move-object/from16 v3, v29

    .line 202
    const/4 v4, 0x0

    invoke-static {v0, v6, v3, v4}, Lcom/termux/shared/file/FileUtils;->copyDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v10

    .line 203
    .end local v11    # "error":Lcom/termux/shared/errors/Error;
    .local v10, "error":Lcom/termux/shared/errors/Error;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " directory file to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v46, v14

    const/4 v14, 0x0

    .end local v14    # "dir2__sub_reg1_label":Ljava/lang/String;
    .local v46, "dir2__sub_reg1_label":Ljava/lang/String;
    invoke-static {v4, v14, v10}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 204
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v14

    const-string v4, " directory file does not exist as expected after copying it from "

    if-nez v14, :cond_8

    .line 205
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 208
    :cond_8
    move-object/from16 v0, v26

    move-object/from16 v3, v29

    .line 209
    const/4 v14, 0x0

    invoke-static {v0, v6, v3, v14}, Lcom/termux/shared/file/FileUtils;->copyDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v10

    .line 210
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    invoke-static {v9, v14, v10}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 211
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_9

    .line 212
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 215
    :cond_9
    move-object/from16 v0, v28

    move-object/from16 v3, v30

    .line 216
    move-object/from16 v9, v29

    const/4 v14, 0x0

    .end local v29    # "dir3_path":Ljava/lang/String;
    .local v9, "dir3_path":Ljava/lang/String;
    invoke-static {v0, v9, v3, v14}, Lcom/termux/shared/file/FileUtils;->moveDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v10

    .line 217
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .end local v9    # "dir3_path":Ljava/lang/String;
    .restart local v29    # "dir3_path":Ljava/lang/String;
    const-string v9, "Failed to move "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v14, v26

    .end local v26    # "dir3_label":Ljava/lang/String;
    .local v14, "dir3_label":Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 218
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_a

    .line 219
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 226
    :cond_a
    move-object/from16 v0, v23

    move-object/from16 v3, v22

    .line 227
    const-string v4, "../dir4"

    invoke-static {v0, v4, v3}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 228
    .end local v10    # "error":Lcom/termux/shared/errors/Error;
    .local v4, "error":Lcom/termux/shared/errors/Error;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 229
    invoke-static {v3}, Lcom/termux/shared/file/FileUtils;->symlinkFileExists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 230
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 234
    :cond_b
    move-object/from16 v0, v23

    move-object/from16 v3, v22

    .line 235
    const-string v9, "../dirX"

    invoke-static {v0, v9, v3}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 236
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 237
    invoke-static {v3}, Lcom/termux/shared/file/FileUtils;->symlinkFileExists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dangling symlink file does not exist as expected after creation"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 245
    :cond_c
    move-object/from16 v0, v33

    move-object/from16 v3, v32

    .line 246
    const/4 v9, 0x0

    invoke-static {v0, v3, v9}, Lcom/termux/shared/file/FileUtils;->deleteSymlinkFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to delete "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v10, v12, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 248
    invoke-static {v3, v9}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " symlink file still exist after deletion"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 253
    :cond_d
    move-object v0, v7

    move-object v3, v6

    .line 254
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v10

    const-string v9, " directory file has unexpectedly been deleted after deletion of "

    if-nez v10, :cond_e

    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v12, v33

    .end local v33    # "dir1__sub_sym2_label":Ljava/lang/String;
    .local v12, "dir1__sub_sym2_label":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v12    # "dir1__sub_sym2_label":Ljava/lang/String;
    .restart local v33    # "dir1__sub_sym2_label":Ljava/lang/String;
    :cond_e
    move-object/from16 v12, v33

    .line 262
    .end local v33    # "dir1__sub_sym2_label":Ljava/lang/String;
    .restart local v12    # "dir1__sub_sym2_label":Ljava/lang/String;
    :goto_0
    move-object v0, v1

    move-object v3, v2

    .line 263
    const/4 v10, 0x0

    invoke-static {v0, v3, v10}, Lcom/termux/shared/file/FileUtils;->deleteDirectoryFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 264
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    invoke-static {v13, v10, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 265
    const/4 v10, 0x0

    invoke-static {v3, v10}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 266
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " directory file still exist after deletion"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 272
    :cond_f
    move-object v0, v7

    move-object v3, v6

    .line 273
    const/4 v10, 0x0

    invoke-static {v3, v10}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_10

    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 275
    :cond_10
    move-object/from16 v0, v46

    move-object/from16 v3, v31

    .line 276
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_11

    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " regular file has unexpectedly been deleted after deletion of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 284
    :cond_11
    move-object/from16 v0, v46

    move-object/from16 v3, v31

    .line 285
    const/4 v9, 0x0

    invoke-static {v0, v3, v9}, Lcom/termux/shared/file/FileUtils;->deleteRegularFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 286
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v13, v40

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    invoke-static {v10, v13, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 287
    invoke-static {v3, v9}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " regular file still exist after deletion"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 291
    :cond_12
    move-object/from16 v9, v20

    move-object/from16 v10, v21

    .end local v20    # "dir1__sub_dir2_path":Ljava/lang/String;
    .end local v21    # "dir1__sub_dir3__sub_reg1_path":Ljava/lang/String;
    .local v9, "dir1__sub_dir2_path":Ljava/lang/String;
    .local v10, "dir1__sub_dir3__sub_reg1_path":Ljava/lang/String;
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 294
    .local v13, "ignoredSubFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 295
    move-object/from16 v20, v0

    .end local v0    # "label":Ljava/lang/String;
    .local v20, "label":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "path":Ljava/lang/String;
    .local v21, "path":Ljava/lang/String;
    invoke-static {v0, v3, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 298
    const/4 v0, 0x0

    invoke-static {v1, v2, v13, v0}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileEmptyOrOnlyContainsSpecificFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 299
    .end local v4    # "error":Lcom/termux/shared/errors/Error;
    .local v3, "error":Lcom/termux/shared/errors/Error;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to validate if "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v26, v6

    .end local v6    # "dir2_path":Ljava/lang/String;
    .local v26, "dir2_path":Ljava/lang/String;
    const-string v6, " directory file is empty"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 303
    move-object/from16 v0, v19

    .end local v20    # "label":Ljava/lang/String;
    .restart local v0    # "label":Ljava/lang/String;
    move-object/from16 v6, v18

    .line 304
    .end local v21    # "path":Ljava/lang/String;
    .local v6, "path":Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 305
    move-object/from16 v20, v7

    .end local v7    # "dir2_label":Ljava/lang/String;
    .local v20, "dir2_label":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v33, v12

    const/4 v12, 0x0

    .end local v12    # "dir1__sub_sym2_label":Ljava/lang/String;
    .restart local v33    # "dir1__sub_sym2_label":Ljava/lang/String;
    invoke-static {v7, v12, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 306
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_13

    .line 307
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v12, v39

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_13
    move-object/from16 v12, v39

    .line 310
    :goto_1
    const/4 v7, 0x0

    invoke-static {v1, v2, v13, v7}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileEmptyOrOnlyContainsSpecificFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v21, v0

    .end local v0    # "label":Ljava/lang/String;
    .local v21, "label":Ljava/lang/String;
    const-string v0, " directory file is empty with parent dir existing of non existing ignored regular file"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/errors/Errno;

    invoke-static {v0, v7, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertErrnoEqual(Ljava/lang/String;Lcom/termux/shared/errors/Errno;Lcom/termux/shared/errors/Error;)V

    .line 315
    move-object/from16 v0, v17

    .end local v21    # "label":Ljava/lang/String;
    .restart local v0    # "label":Ljava/lang/String;
    move-object v6, v10

    .line 316
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    move-object/from16 v21, v3

    move-object/from16 v39, v10

    move-object/from16 v3, v42

    const/4 v10, 0x0

    .end local v3    # "error":Lcom/termux/shared/errors/Error;
    .end local v10    # "dir1__sub_dir3__sub_reg1_path":Ljava/lang/String;
    .local v21, "error":Lcom/termux/shared/errors/Error;
    .local v39, "dir1__sub_dir3__sub_reg1_path":Ljava/lang/String;
    invoke-static {v0, v6, v7, v3, v10}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 317
    .end local v21    # "error":Lcom/termux/shared/errors/Error;
    .restart local v3    # "error":Lcom/termux/shared/errors/Error;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v44

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v10, v43

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 318
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_14

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v10, v45

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 322
    :cond_14
    const/4 v7, 0x0

    invoke-static {v1, v2, v13, v7}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileEmptyOrOnlyContainsSpecificFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " directory file is empty with ignored regular file existing"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 327
    move-object/from16 v0, v16

    move-object v6, v9

    .line 328
    invoke-static {v0, v6}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 330
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_15

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 334
    :cond_15
    const/4 v7, 0x0

    invoke-static {v1, v2, v13, v7}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileEmptyOrOnlyContainsSpecificFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " directory file is empty with ignored dir file existing"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 339
    move-object/from16 v0, v36

    move-object/from16 v6, v35

    .line 340
    invoke-static {v0, v6}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 342
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_16

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 346
    :cond_16
    const/4 v5, 0x0

    invoke-static {v1, v2, v13, v5}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileEmptyOrOnlyContainsSpecificFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " directory file is empty with non ignored dir file existing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/termux/shared/file/FileUtilsErrno;->ERRNO_NON_EMPTY_DIRECTORY_FILE:Lcom/termux/shared/errors/Errno;

    invoke-static {v4, v5, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertErrnoEqual(Ljava/lang/String;Lcom/termux/shared/errors/Errno;Lcom/termux/shared/errors/Error;)V

    .line 351
    move-object v0, v1

    move-object v4, v2

    .line 352
    .end local v6    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/termux/shared/file/FileUtils;->deleteDirectoryFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object v3

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/errors/Error;)V

    .line 356
    const-string v6, "/dev/ptmx"

    invoke-static {v6, v5}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    .line 357
    const-string v6, "/dev/null"

    invoke-static {v6, v5}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    .line 358
    return-void
.end method

.method public static throwException(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

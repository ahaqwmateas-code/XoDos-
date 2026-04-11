.class public Lorg/apache/commons/compress/archivers/examples/Expander;
.super Ljava/lang/Object;
.source "Expander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;,
        Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V
    .locals 9
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">(",
            "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier<",
            "TT;>;",
            "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer<",
            "TT;>;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p1, "supplier":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;, "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier<TT;>;"
    .local p2, "writer":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;, "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer<TT;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 68
    .local v1, "nullTarget":Z
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v3

    .line 69
    .local v3, "targetDirPath":Ljava/nio/file/Path;
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;->get()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    .line 70
    .local v4, "nextEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TT;"
    :goto_2
    if-eqz v4, :cond_d

    .line 71
    if-eqz v1, :cond_2

    move-object v5, v2

    goto :goto_3

    :cond_2
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 74
    .local v5, "targetPath":Ljava/nio/file/Path;
    :goto_3
    if-nez v1, :cond_4

    invoke-interface {v5}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {p3, v5}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    .line 75
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expanding "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " would create file outside of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_4
    :goto_4
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v6

    const-string v7, "Failed to create directory "

    if-eqz v6, :cond_6

    .line 78
    if-nez v1, :cond_b

    new-array v6, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-nez v6, :cond_b

    new-array v6, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_7

    .line 79
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_6
    if-eqz v1, :cond_7

    move-object v6, v2

    goto :goto_5

    :cond_7
    invoke-interface {v5}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v6

    .line 83
    .local v6, "parent":Ljava/nio/file/Path;
    :goto_5
    if-nez v1, :cond_9

    new-array v8, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v8}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    if-nez v8, :cond_9

    new-array v8, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v6, v8}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v8

    if-eqz v8, :cond_8

    goto :goto_6

    .line 84
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 87
    invoke-interface {p2, v4, v2}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;->accept(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V

    goto :goto_7

    .line 89
    :cond_a
    new-array v7, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v7}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v7

    .line 90
    .local v7, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface {p2, v4, v7}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;->accept(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 94
    .end local v6    # "parent":Ljava/nio/file/Path;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_b
    :goto_7
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;->get()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    .line 95
    .end local v5    # "targetPath":Ljava/nio/file/Path;
    goto/16 :goto_2

    .line 89
    .restart local v5    # "targetPath":Ljava/nio/file/Path;
    .restart local v6    # "parent":Ljava/nio/file/Path;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    .end local v1    # "nullTarget":Z
    .end local v3    # "targetDirPath":Ljava/nio/file/Path;
    .end local v4    # "nextEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TT;"
    .end local v5    # "targetPath":Ljava/nio/file/Path;
    .end local v6    # "parent":Ljava/nio/file/Path;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "supplier":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;, "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier<TT;>;"
    .end local p2    # "writer":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;, "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer<TT;>;"
    .end local p3    # "targetDirectory":Ljava/nio/file/Path;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .restart local v1    # "nullTarget":Z
    .restart local v3    # "targetDirPath":Ljava/nio/file/Path;
    .restart local v4    # "nextEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TT;"
    .restart local v5    # "targetPath":Ljava/nio/file/Path;
    .restart local v6    # "parent":Ljava/nio/file/Path;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "supplier":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;, "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier<TT;>;"
    .restart local p2    # "writer":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;, "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer<TT;>;"
    .restart local p3    # "targetDirectory":Ljava/nio/file/Path;
    :catchall_1
    move-exception v2

    if-eqz v7, :cond_c

    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v8

    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    throw v2

    .line 96
    .end local v5    # "targetPath":Ljava/nio/file/Path;
    .end local v6    # "parent":Ljava/nio/file/Path;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_d
    return-void
.end method

.method static synthetic lambda$expand$0(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 2
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    .line 120
    .local v0, "next":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$expand$1(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-static {p0, p2}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method

.method static synthetic lambda$expand$2(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 232
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "n":I
    const/4 v3, -0x1

    if-eq v3, v1, :cond_1

    .line 233
    if-eqz p2, :cond_0

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 237
    :cond_1
    return-void
.end method

.method static synthetic lambda$expand$3(Ljava/util/Iterator;)Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 1
    .param p0, "entryIterator"    # Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$expand$4(Lorg/apache/commons/compress/archivers/tar/TarFile;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/tar/TarFile;
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getInputStream(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 460
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p2}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 462
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 459
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "archive":Lorg/apache/commons/compress/archivers/tar/TarFile;
    .end local p1    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .end local p2    # "out":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 461
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "archive":Lorg/apache/commons/compress/archivers/tar/TarFile;
    .restart local p1    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .restart local p2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method static synthetic lambda$expand$5(Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 3
    .param p0, "entries"    # Ljava/util/Enumeration;
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 489
    .local v0, "next":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    move-object v0, v2

    goto :goto_0

    .line 492
    :cond_2
    return-object v0
.end method

.method static synthetic lambda$expand$6(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 495
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p2}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 497
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 494
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "archive":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local p1    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local p2    # "out":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 496
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "archive":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local p1    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local p2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method private prefersSeekableByteChannel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 501
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    const-string v0, "7z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 501
    :goto_1
    return v0
.end method

.method private toPath(Ljava/io/File;)Ljava/nio/file/Path;
    .locals 1
    .param p1, "targetDirectory"    # Ljava/io/File;

    .line 507
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public expand(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 139
    return-void
.end method

.method public expand(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Ljava/io/InputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 160
    return-void
.end method

.method public expand(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "archive"    # Ljava/io/InputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .param p3, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p3}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 184
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->DEFAULT:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 187
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 183
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "archive":Ljava/io/InputStream;
    .end local p2    # "targetDirectory":Ljava/io/File;
    .end local p3    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "archive":Ljava/io/InputStream;
    .restart local p2    # "targetDirectory":Ljava/io/File;
    .restart local p3    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public expand(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/File;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 251
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 252
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/InputStream;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 274
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/InputStream;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 297
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 298
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/InputStream;
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 321
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 322
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->DEFAULT:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 325
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 321
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/io/InputStream;
    .end local p3    # "targetDirectory":Ljava/nio/file/Path;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/io/InputStream;
    .restart local p3    # "targetDirectory":Ljava/nio/file/Path;
    .restart local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 370
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 393
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 394
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 418
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 419
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    invoke-static {p2}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    sget-object v2, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v1, p3, v2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    goto :goto_0

    .line 421
    :cond_0
    const-string v1, "tar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarFile;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/tar/TarFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/tar/TarFile;Ljava/nio/file/Path;)V

    goto :goto_0

    .line 423
    :cond_1
    const-string v1, "zip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/nio/file/Path;)V

    goto :goto_0

    .line 425
    :cond_2
    const-string v1, "7z"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 432
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 429
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :cond_3
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t know how to handle format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .end local p3    # "targetDirectory":Ljava/nio/file/Path;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .restart local p3    # "targetDirectory":Ljava/nio/file/Path;
    .restart local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_0
    move-exception v1

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .end local p3    # "targetDirectory":Ljava/nio/file/Path;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 431
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .restart local p3    # "targetDirectory":Ljava/nio/file/Path;
    .restart local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public expand(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/file/Path;
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 339
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 340
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 341
    .local v0, "channel":Ljava/nio/channels/SeekableByteChannel;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 343
    .end local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    :cond_0
    return-void

    .line 340
    .restart local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    :catchall_0
    move-exception v1

    .end local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/nio/file/Path;
    .end local p3    # "targetDirectory":Ljava/nio/file/Path;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 342
    .restart local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/nio/file/Path;
    .restart local p3    # "targetDirectory":Ljava/nio/file/Path;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 345
    .end local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 346
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_3
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 347
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 348
    .end local v0    # "inputStream":Ljava/io/InputStream;
    return-void

    .line 345
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/nio/file/Path;
    .end local p3    # "targetDirectory":Ljava/nio/file/Path;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 347
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/nio/file/Path;
    .restart local p3    # "targetDirectory":Ljava/nio/file/Path;
    :catchall_4
    move-exception v2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public expand(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 5
    .param p1, "archive"    # Ljava/nio/file/Path;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 203
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 204
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 205
    .end local v1    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 206
    return-void

    .line 202
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "archive":Ljava/nio/file/Path;
    .end local p2    # "targetDirectory":Ljava/nio/file/Path;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    .restart local v0    # "format":Ljava/lang/String;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "archive":Ljava/nio/file/Path;
    .restart local p2    # "targetDirectory":Ljava/nio/file/Path;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method public expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/nio/file/Path;)V

    .line 107
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V

    .line 125
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/nio/file/Path;)V

    .line 217
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V

    .line 238
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/tar/TarFile;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/tar/TarFile;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/tar/TarFile;Ljava/nio/file/Path;)V

    .line 444
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/tar/TarFile;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/tar/TarFile;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 457
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;>;"
    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda2;-><init>(Ljava/util/Iterator;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/archivers/tar/TarFile;)V

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V

    .line 463
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/nio/file/Path;)V

    .line 474
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 487
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;-><init>(Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V

    .line 498
    return-void
.end method

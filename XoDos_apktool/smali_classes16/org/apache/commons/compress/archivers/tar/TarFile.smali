.class public Lorg/apache/commons/compress/archivers/tar/TarFile;
.super Ljava/lang/Object;
.source "TarFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;
    }
.end annotation


# static fields
.field private static final SMALL_BUFFER_SIZE:I = 0x100


# instance fields
.field private final archive:Ljava/nio/channels/SeekableByteChannel;

.field private final blockSize:I

.field private currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field private final entries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private globalPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final globalSparseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation
.end field

.field private hasHitEOF:Z

.field private final lenient:Z

.field private final recordBuffer:Ljava/nio/ByteBuffer;

.field private final recordSize:I

.field private final smallBuf:[B

.field private final sparseInputStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/file/Path;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/file/Path;Z)V

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 6
    .param p1, "content"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x2800

    const/16 v3, 0x200

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;IILjava/lang/String;Z)V

    .line 293
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;IILjava/lang/String;Z)V
    .locals 2
    .param p1, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->smallBuf:[B

    .line 158
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->entries:Ljava/util/LinkedList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalSparseHeaders:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalPaxHeaders:Ljava/util/Map;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->sparseInputStreams:Ljava/util/Map;

    .line 308
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    .line 309
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 310
    iput p3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    .line 311
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordBuffer:Ljava/nio/ByteBuffer;

    .line 312
    iput p2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->blockSize:I

    .line 313
    iput-boolean p5, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->lenient:Z

    .line 316
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    move-object v1, v0

    .local v1, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->entries:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 7
    .param p1, "archivePath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x2800

    const/16 v4, 0x200

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;IILjava/lang/String;Z)V

    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 7
    .param p1, "archivePath"    # Ljava/nio/file/Path;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    const/16 v4, 0x200

    const/4 v6, 0x0

    const/16 v3, 0x2800

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;IILjava/lang/String;Z)V

    .line 283
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Z)V
    .locals 7
    .param p1, "archivePath"    # Ljava/nio/file/Path;
    .param p2, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    const/16 v4, 0x200

    const/4 v5, 0x0

    const/16 v3, 0x2800

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;IILjava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    .line 191
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 6
    .param p1, "content"    # [B
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v1, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    const/16 v3, 0x200

    const/4 v5, 0x0

    const/16 v2, 0x2800

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;IILjava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 6
    .param p1, "content"    # [B
    .param p2, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v1, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    const/16 v3, 0x200

    const/4 v4, 0x0

    const/16 v2, 0x2800

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;IILjava/lang/String;Z)V

    .line 204
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/tar/TarFile;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/tar/TarFile;

    .line 49
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->sparseInputStreams:Ljava/util/Map;

    return-object v0
.end method

.method private applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->updateEntryFromPaxHeaders(Ljava/util/Map;)V

    .line 329
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSparseHeaders(Ljava/util/List;)V

    .line 330
    return-void
.end method

.method private buildSparseInputStreams()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "streams":Ljava/util/List;, "Ljava/util/List<Ljava/io/InputStream;>;"
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getOrderedSparseHeaders()Ljava/util/List;

    move-result-object v2

    .line 346
    .local v2, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseZeroInputStream;

    invoke-direct {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseZeroInputStream;-><init>()V

    .line 348
    .local v3, "zeroInputStream":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    .line 349
    .local v4, "offset":J
    const-wide/16 v6, 0x0

    .line 350
    .local v6, "numberOfZeroBytesInSparseEntry":J
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 351
    .local v9, "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v10

    sub-long/2addr v10, v4

    .line 352
    .local v10, "zeroBlockSize":J
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-ltz v14, :cond_3

    .line 358
    cmp-long v14, v10, v12

    if-lez v14, :cond_0

    .line 359
    new-instance v14, Lorg/apache/commons/compress/utils/BoundedInputStream;

    invoke-direct {v14, v3, v10, v11}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    add-long/2addr v6, v10

    .line 364
    :cond_0
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v14

    cmp-long v16, v14, v12

    if-lez v16, :cond_2

    .line 365
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 366
    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v12

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v14

    add-long/2addr v12, v14

    sub-long/2addr v12, v6

    .line 367
    .local v12, "start":J
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v14

    add-long/2addr v14, v12

    cmp-long v16, v14, v12

    if-ltz v16, :cond_1

    .line 371
    new-instance v15, Lorg/apache/commons/compress/utils/BoundedSeekableByteChannelInputStream;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v17

    iget-object v14, v0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    move-object/from16 v19, v14

    move-object v14, v15

    move-object/from16 v20, v2

    move-object v2, v15

    .end local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .local v20, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    move-wide v15, v12

    invoke-direct/range {v14 .. v19}, Lorg/apache/commons/compress/utils/BoundedSeekableByteChannelInputStream;-><init>(JJLjava/nio/channels/SeekableByteChannel;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    .end local v20    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    :cond_1
    move-object/from16 v20, v2

    .end local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v20    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    new-instance v2, Ljava/io/IOException;

    const-string v8, "Unreadable TAR archive, sparse block offset or length too big"

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    .end local v12    # "start":J
    .end local v20    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    :cond_2
    move-object/from16 v20, v2

    .line 374
    .end local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v20    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    :goto_1
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v12

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v14

    add-long v4, v12, v14

    .line 375
    .end local v9    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    .end local v10    # "zeroBlockSize":J
    move-object/from16 v2, v20

    goto :goto_0

    .line 354
    .end local v20    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v9    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    .restart local v10    # "zeroBlockSize":J
    :cond_3
    move-object/from16 v20, v2

    .end local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v20    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    new-instance v2, Ljava/io/IOException;

    const-string v8, "Corrupted struct sparse detected"

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    .end local v9    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    .end local v10    # "zeroBlockSize":J
    .end local v20    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    :cond_4
    move-object/from16 v20, v2

    .end local v2    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v20    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/tar/TarFile;->sparseInputStreams:Ljava/util/Map;

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-void
.end method

.method private consumeRemainderOfLastBlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->blockSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    .line 392
    .local v0, "bytesReadOfLastBlock":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 393
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->blockSize:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarFile;->repositionForwardBy(J)V

    .line 395
    :cond_0
    return-void
.end method

.method private getLongNameData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 429
    .local v0, "longName":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getInputStream(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 430
    .local v1, "in":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->smallBuf:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    if-ltz v2, :cond_0

    .line 431
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->smallBuf:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 433
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 434
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 435
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-nez v1, :cond_2

    .line 438
    const/4 v1, 0x0

    return-object v1

    .line 440
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 442
    .local v1, "longNameData":[B
    array-length v2, v1

    .line 443
    .end local v3    # "length":I
    .local v2, "length":I
    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v1, v3

    if-nez v3, :cond_3

    .line 444
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 446
    :cond_3
    array-length v3, v1

    if-eq v2, v3, :cond_4

    .line 447
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 449
    :cond_4
    return-object v1

    .line 429
    .end local v2    # "length":I
    .local v1, "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "longName":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "in":Ljava/io/InputStream;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    .restart local v0    # "longName":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v3
.end method

.method private getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->isAtEOF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 467
    return-object v1

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarFile;->repositionForwardTo(J)V

    .line 473
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->throwExceptionIfPositionIsNotInArchive()V

    .line 474
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->skipRecordPadding()V

    .line 477
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getRecord()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 478
    .local v0, "headerBuf":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_2

    .line 480
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 481
    return-object v1

    .line 485
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    .line 486
    .local v8, "position":J
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalPaxHeaders:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->lenient:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZJ)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    .end local v8    # "position":J
    nop

    .line 491
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongLinkEntry()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getLongNameData()[B

    move-result-object v2

    .line 493
    .local v2, "longLinkData":[B
    if-nez v2, :cond_3

    .line 497
    return-object v1

    .line 499
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    .line 502
    .end local v2    # "longLinkData":[B
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongNameEntry()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 503
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getLongNameData()[B

    move-result-object v2

    .line 504
    .local v2, "longNameData":[B
    if-nez v2, :cond_5

    .line 508
    return-object v1

    .line 512
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 514
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 515
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 519
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "longNameData":[B
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 520
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->readGlobalPaxHeaders()V

    .line 524
    :cond_7
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 525
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->paxHeaders()V

    goto :goto_0

    .line 526
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalPaxHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 527
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalPaxHeaders:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalSparseHeaders:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarFile;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 531
    :cond_9
    :goto_0
    nop

    .line 533
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 534
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->readOldGNUSparse()V

    .line 537
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v1

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error detected parsing the pax header"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 487
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error detected parsing the header"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getRecord()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->readRecord()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 556
    .local v0, "headerBuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->isEOFRecord(Ljava/nio/ByteBuffer;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->setAtEOF(Z)V

    .line 557
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->isAtEOF()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 559
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->tryToConsumeSecondEOFRecord()V

    .line 560
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->consumeRemainderOfLastBlock()V

    .line 561
    const/4 v0, 0x0

    .line 563
    :cond_0
    return-object v0
.end method

.method private isDirectory()Z
    .locals 1

    .line 571
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEOFRecord(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p1, "headerBuf"    # Ljava/nio/ByteBuffer;

    .line 575
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isArrayZero([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private paxHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getInputStream(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 611
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalPaxHeaders:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v3

    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 612
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 615
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_0
    const-string v1, "GNU.sparse.map"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 616
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseFromPAX01SparseHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v3

    .line 618
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 619
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v1, :cond_5

    .line 622
    invoke-direct {p0, v2, v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V

    .line 625
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxGNU1XSparse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 626
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getInputStream(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 627
    .restart local v1    # "input":Ljava/io/InputStream;
    :try_start_1
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parsePAX1XSparseHeaders(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 628
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 629
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSparseHeaders(Ljava/util/List;)V

    .line 631
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v3

    iget v5, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDataOffset(J)V

    goto :goto_1

    .line 626
    .restart local v1    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    .end local v0    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 628
    .restart local v0    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v4

    .line 636
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->buildSparseInputStreams()V

    .line 637
    return-void

    .line 620
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v3, "premature end of tar archive. Didn\'t find any entry after PAX header."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "input":Ljava/io/InputStream;
    :catchall_3
    move-exception v2

    .end local v0    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .end local v1    # "input":Ljava/io/InputStream;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 612
    .restart local v0    # "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .restart local v1    # "input":Ljava/io/InputStream;
    :catchall_4
    move-exception v3

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v3
.end method

.method private readGlobalPaxHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getInputStream(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 641
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalSparseHeaders:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalPaxHeaders:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 642
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v3

    .line 641
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->globalPaxHeaders:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 644
    .end local v0    # "input":Ljava/io/InputStream;
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 646
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_1

    .line 649
    return-void

    .line 647
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error detected parsing the pax header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    .restart local v0    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "input":Ljava/io/InputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 643
    .restart local v0    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method private readOldGNUSparse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getRecord()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 662
    .local v0, "headerBuf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1

    .line 665
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;-><init>([B)V

    .line 666
    .local v1, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v3

    iget v5, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDataOffset(J)V

    .line 668
    .end local v0    # "headerBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 663
    .end local v1    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
    .restart local v0    # "headerBuf":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "premature end of tar archive. Didn\'t find extended_header after header with extended flag."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    .end local v0    # "headerBuf":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->buildSparseInputStreams()V

    .line 674
    return-void
.end method

.method private readRecord()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 684
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 685
    .local v0, "readNow":I
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    if-eq v0, v1, :cond_0

    .line 686
    const/4 v1, 0x0

    return-object v1

    .line 688
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordBuffer:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private repositionForwardBy(J)V
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->repositionForwardTo(J)V

    .line 693
    return-void
.end method

.method private repositionForwardTo(J)V
    .locals 4
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    .line 697
    .local v0, "currPosition":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 700
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 701
    return-void

    .line 698
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "trying to move backwards inside of the archive"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private skipRecordPadding()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v0

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    int-to-long v4, v4

    rem-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 715
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 716
    .local v0, "numRecords":J
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 717
    .local v2, "padding":J
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarFile;->repositionForwardBy(J)V

    .line 718
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->throwExceptionIfPositionIsNotInArchive()V

    .line 720
    .end local v0    # "numRecords":J
    .end local v2    # "padding":J
    :cond_0
    return-void
.end method

.method private throwExceptionIfPositionIsNotInArchive()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 730
    return-void

    .line 728
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Truncated TAR archive"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryToConsumeSecondEOFRecord()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    const/4 v0, 0x1

    .line 748
    .local v0, "shouldReset":Z
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->readRecord()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->isEOFRecord(Ljava/nio/ByteBuffer;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 750
    if-eqz v0, :cond_0

    .line 751
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 754
    :cond_0
    return-void

    .line 750
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 751
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v3

    iget v5, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->recordSize:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 753
    :cond_1
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 383
    return-void
.end method

.method public getEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->entries:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Ljava/io/InputStream;
    .locals 3
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;-><init>(Lorg/apache/commons/compress/archivers/tar/TarFile;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/nio/channels/SeekableByteChannel;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupted TAR archive. Can\'t read entry"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final isAtEOF()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->hasHitEOF:Z

    return v0
.end method

.method protected final setAtEOF(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 704
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile;->hasHitEOF:Z

    .line 705
    return-void
.end method

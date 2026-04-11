.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_NAME:Ljava/lang/String; = "unknown archive"

.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private channel:Ljava/nio/channels/SeekableByteChannel;

.field private compressedBytesReadFromCurrentEntry:J

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private final options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

.field private password:[B

.field private uncompressedBytesReadFromCurrentEntry:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "fileName"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .param p1, "fileName"    # Ljava/io/File;
    .param p2, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 347
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 9
    .param p1, "fileName"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    .line 308
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    .line 307
    const/4 v7, 0x1

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 309
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1
    .param p1, "fileName"    # Ljava/io/File;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 321
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 9
    .param p1, "fileName"    # Ljava/io/File;
    .param p2, "password"    # [C
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    .line 334
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v6

    .line 333
    const/4 v7, 0x1

    move-object v3, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 362
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 451
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 549
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    const/4 v4, 0x0

    sget-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 473
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .param p4, "closeOnError"    # Z
    .param p5, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 271
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "succeeded":Z
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 479
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 480
    iput-object p5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    .line 482
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 483
    if-eqz p3, :cond_0

    .line 484
    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_0

    .line 486
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :goto_0
    const/4 v0, 0x1

    .line 490
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 491
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 494
    :cond_1
    return-void

    .line 490
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 491
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 493
    :cond_2
    throw v1
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 512
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 531
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    const-string v0, "unknown archive"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 434
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[C)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 400
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [C
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 418
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 92
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p1, "x1"    # J

    .line 92
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 92
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method private static assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I
    .locals 4
    .param p0, "what"    # Ljava/lang/String;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 178
    long-to-int v0, p1

    return v0

    .line 176
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Cannot handle % %,d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 16
    .param p1, "folder"    # Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .param p2, "folderOffset"    # J
    .param p4, "firstPackStreamIndex"    # I
    .param p5, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    move-wide/from16 v3, p2

    invoke-interface {v2, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 554
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v8, v8, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v9, v8, p4

    invoke-direct {v6, v7, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V

    .line 584
    .local v2, "inputStreamStack":Ljava/io/InputStream;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 585
    .local v5, "methods":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 586
    .local v14, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v9, 0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    iget-wide v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    .line 589
    iget-object v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v15

    .line 590
    .local v15, "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 591
    invoke-virtual {v1, v14}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v9

    iget-object v12, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v13

    .line 590
    move-object v8, v2

    move-object v11, v14

    invoke-static/range {v7 .. v13}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;

    move-result-object v2

    .line 592
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 593
    invoke-static {v15}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;

    move-result-object v8

    invoke-virtual {v8, v14, v2}, Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v15, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    .line 592
    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 594
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .end local v15    # "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    goto :goto_0

    .line 587
    .restart local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Multi input/output stream coders are not yet supported"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 595
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    move-object/from16 v6, p5

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 596
    iget-boolean v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v7, :cond_2

    .line 597
    new-instance v13, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 598
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v9

    iget-wide v11, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v7, v13

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 597
    return-object v13

    .line 600
    :cond_2
    return-object v2
.end method

.method private buildDecodingStream(IZ)V
    .locals 11
    .param p1, "entryIndex"    # I
    .param p2, "isRandomAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    if-eqz v0, :cond_7

    .line 619
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aget v0, v0, p1

    .line 620
    .local v0, "folderIndex":I
    if-gez v0, :cond_0

    .line 621
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 624
    return-void

    .line 626
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v1, v1, p1

    .line 627
    .local v1, "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    const/4 v2, 0x0

    .line 628
    .local v2, "isInSameFolder":Z
    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    if-ne v3, v0, :cond_3

    .line 634
    if-lez p1, :cond_1

    .line 635
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 641
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 642
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aget v3, v3, v0

    .line 643
    .local v3, "folderFirstFileIndex":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v4, v4, v3

    .line 644
    .local v4, "folderFirstFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 646
    .end local v3    # "folderFirstFileIndex":I
    .end local v4    # "folderFirstFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 648
    :cond_3
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 650
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    .line 653
    :goto_0
    const/4 v3, 0x0

    .line 654
    .local v3, "haveSkippedEntries":Z
    if-eqz p2, :cond_4

    .line 656
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipEntriesWhenNeeded(IZI)Z

    move-result v3

    .line 659
    :cond_4
    if-eqz p2, :cond_5

    iget v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-ne v4, p1, :cond_5

    if-nez v3, :cond_5

    .line 665
    return-void

    .line 668
    :cond_5
    new-instance v6, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 669
    .local v6, "fileStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 670
    new-instance v4, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v9

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .end local v6    # "fileStream":Ljava/io/InputStream;
    .local v4, "fileStream":Ljava/io/InputStream;
    goto :goto_1

    .line 669
    .end local v4    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    :cond_6
    move-object v4, v6

    .line 673
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "fileStream":Ljava/io/InputStream;
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    return-void

    .line 617
    .end local v0    # "folderIndex":I
    .end local v1    # "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v2    # "isInSameFolder":Z
    .end local v3    # "haveSkippedEntries":Z
    .end local v4    # "fileStream":Ljava/io/InputStream;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Archive doesn\'t contain stream information to read entries"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 11
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>()V

    .line 679
    .local v0, "streamMap":Lorg/apache/commons/compress/archivers/sevenz/StreamMap;
    const/4 v1, 0x0

    .line 680
    .local v1, "nextFolderPackStreamIndex":I
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 681
    .local v2, "numFolders":I
    :goto_0
    new-array v3, v2, [I

    iput-object v3, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 682
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 683
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aput v1, v4, v3

    .line 684
    iget-object v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v4, v4, v3

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v4, v4

    add-int/2addr v1, v4

    .line 682
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 687
    .end local v3    # "i":I
    :cond_1
    const-wide/16 v3, 0x0

    .line 688
    .local v3, "nextPackStreamOffset":J
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v5, v5

    .line 689
    .local v5, "numPackSizes":I
    new-array v6, v5, [J

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 690
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_2

    .line 691
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aput-wide v3, v7, v6

    .line 692
    iget-object v7, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v8, v7, v6

    add-long/2addr v3, v8

    .line 690
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 695
    .end local v6    # "i":I
    :cond_2
    new-array v6, v2, [I

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 696
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 697
    const/4 v6, 0x0

    .line 698
    .local v6, "nextFolderIndex":I
    const/4 v7, 0x0

    .line 699
    .local v7, "nextFolderUnpackStreamIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v9, v9

    if-ge v8, v9, :cond_a

    .line 700
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v7, :cond_3

    .line 701
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    const/4 v10, -0x1

    aput v10, v9, v8

    .line 702
    goto :goto_7

    .line 704
    :cond_3
    if-nez v7, :cond_7

    .line 705
    :goto_4
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v6, v9, :cond_5

    .line 706
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aput v8, v9, v6

    .line 707
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v9, :cond_4

    .line 708
    goto :goto_5

    .line 705
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 711
    :cond_5
    :goto_5
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v6, v9, :cond_6

    goto :goto_6

    .line 712
    :cond_6
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Too few folders in archive"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 715
    :cond_7
    :goto_6
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aput v6, v9, v8

    .line 716
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_8

    .line 717
    goto :goto_7

    .line 719
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 720
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v7, v9, :cond_9

    .line 721
    add-int/lit8 v6, v6, 0x1

    .line 722
    const/4 v7, 0x0

    .line 699
    :cond_9
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 726
    .end local v8    # "i":I
    :cond_a
    iput-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 727
    return-void
.end method

.method private static checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "expectRemaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 183
    .local v0, "remaining":I
    if-lt v0, p1, :cond_0

    .line 186
    return-object p0

    .line 184
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "remaining %,d < expectRemaining %,d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkEntryIsInitialized(Ljava/util/Map;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;I)V"
        }
    .end annotation

    .line 730
    .local p1, "archiveEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 731
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_0
    return-void
.end method

.method private static get(Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "to"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 190
    array-length v0, p1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 191
    return-void
.end method

.method private static getChar(Ljava/nio/ByteBuffer;)C
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 756
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/apache/commons/compress/utils/ByteUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 758
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 762
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-le v0, v1, :cond_3

    .line 766
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 767
    .local v0, "stream":Ljava/io/InputStream;
    const-wide v4, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {v0, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 769
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_1
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    goto :goto_0

    .line 766
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 768
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2

    .line 772
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 759
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInt(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private static getLong(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 202
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 207
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private hasCurrentEntryBeenRead()Z
    .locals 9

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "hasCurrentEntryBeenRead":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 904
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 907
    .local v1, "currentEntryInputStream":Ljava/io/InputStream;
    instance-of v2, v1, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 908
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->getBytesRemaining()J

    move-result-wide v5

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 911
    :cond_1
    instance-of v2, v1, Lorg/apache/commons/compress/utils/BoundedInputStream;

    if-eqz v2, :cond_3

    .line 912
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/compress/utils/BoundedInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/utils/BoundedInputStream;->getBytesRemaining()J

    move-result-wide v5

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 915
    .end local v1    # "currentEntryInputStream":Ljava/io/InputStream;
    :cond_3
    return v0
.end method

.method private initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 9
    .param p1, "startHeader"    # Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .param p2, "password"    # [B
    .param p3, "verifyCrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    const-string v0, "nextHeaderSize"

    iget-wide v1, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 920
    iget-wide v0, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    long-to-int v1, v0

    .line 921
    .local v1, "nextHeaderSizeInt":I
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v2, 0x20

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    add-long/2addr v4, v2

    invoke-interface {v0, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 922
    if-eqz p3, :cond_2

    .line 923
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v2

    .line 924
    .local v2, "position":J
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v4}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v4, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 925
    .local v0, "cis":Ljava/util/zip/CheckedInputStream;
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/zip/CheckedInputStream;->skip(J)J

    move-result-wide v4

    int-to-long v6, v1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 928
    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 931
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_0

    .line 929
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NextHeader CRC-32 mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 926
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Problem computing NextHeader CRC-32"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 933
    .end local v0    # "cis":Ljava/util/zip/CheckedInputStream;
    .end local v2    # "position":J
    :cond_2
    :goto_0
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 934
    .local v0, "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 935
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 936
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 937
    .local v3, "nid":I
    const/16 v4, 0x17

    if-ne v3, v4, :cond_3

    .line 938
    invoke-direct {p0, v2, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 940
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    move-object v0, v4

    .line 941
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 943
    :cond_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 946
    invoke-direct {p0, v2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 947
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 948
    return-object v0

    .line 944
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Broken or unsupported archive: no Header"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static synthetic lambda$readFilesInfo$0(I)[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 1
    .param p0, "x$0"    # I

    .line 1226
    new-array v0, p0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    return-object v0
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 223
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 224
    return v1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 228
    aget-byte v2, p0, v0

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 229
    return v1

    .line 227
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 4
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1002
    .local v0, "areAllDefined":I
    if-eqz v0, :cond_1

    .line 1003
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 1004
    .local v1, "bits":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 1005
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 1004
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 1008
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    .line 1010
    .restart local v1    # "bits":Ljava/util/BitSet;
    :goto_1
    return-object v1
.end method

.method private readArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1016
    .local v0, "nid":I
    :goto_0
    if-eqz v0, :cond_0

    .line 1017
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 1018
    .local v1, "propertySize":J
    long-to-int v3, v1

    new-array v3, v3, [B

    .line 1019
    .local v3, "property":[B
    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1020
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1021
    .end local v1    # "propertySize":J
    .end local v3    # "property":[B
    goto :goto_0

    .line 1022
    :cond_0
    return-void
.end method

.method private readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 5
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 1026
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v1, 0x0

    .line 1027
    .local v1, "mask":I
    const/4 v2, 0x0

    .line 1028
    .local v2, "cache":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_2

    .line 1029
    if-nez v1, :cond_0

    .line 1030
    const/16 v1, 0x80

    .line 1031
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1033
    :cond_0
    and-int v4, v2, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 1034
    ushr-int/lit8 v1, v1, 0x1

    .line 1028
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1036
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method private readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;
    .locals 19
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 1042
    .local v3, "pos":I
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V

    .line 1043
    .local v4, "stats":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1044
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->assertValidity(I)V

    .line 1045
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1047
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1049
    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v5, v5

    if-eqz v5, :cond_5

    .line 1052
    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v5, :cond_4

    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 1057
    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 1058
    .local v5, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const/4 v7, 0x0

    .line 1059
    .local v7, "firstPackStreamIndex":I
    const-wide/16 v8, 0x20

    iget-wide v10, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v10, v8

    const-wide/16 v8, 0x0

    add-long/2addr v10, v8

    .line 1062
    .local v10, "folderOffset":J
    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v8, v10, v11}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1063
    new-instance v8, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v13, v12, v6

    invoke-direct {v8, v9, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    move-object v6, v8

    .line 1065
    .local v6, "inputStreamStack":Ljava/io/InputStream;
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1066
    .local v9, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v12, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v14, 0x1

    cmp-long v16, v12, v14

    if-nez v16, :cond_0

    iget-wide v12, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v16, v12, v14

    if-nez v16, :cond_0

    .line 1069
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 1070
    invoke-virtual {v5, v9}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v14

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v18

    .line 1069
    move-object v13, v6

    move-object/from16 v16, v9

    move-object/from16 v17, p3

    invoke-static/range {v12 .. v18}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;

    move-result-object v6

    .line 1071
    .end local v9    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    goto :goto_0

    .line 1067
    .restart local v9    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v8, Ljava/io/IOException;

    const-string v12, "Multi input/output stream coders are not yet supported"

    invoke-direct {v8, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1072
    .end local v9    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    iget-boolean v8, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v8, :cond_2

    .line 1073
    new-instance v8, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 1074
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v14

    iget-wide v12, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-wide/from16 v16, v12

    move-object v12, v8

    move-object v13, v6

    invoke-direct/range {v12 .. v17}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v6, v8

    .line 1076
    :cond_2
    const-string v8, "unpackSize"

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v12

    invoke-static {v8, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    .line 1077
    .local v8, "unpackSize":I
    invoke-static {v6, v8}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/io/InputStream;I)[B

    move-result-object v9

    .line 1078
    .local v9, "nextHeader":[B
    array-length v12, v9

    if-lt v12, v8, :cond_3

    .line 1081
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1082
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    return-object v12

    .line 1079
    :cond_3
    new-instance v12, Ljava/io/IOException;

    const-string v13, "premature end of stream"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1053
    .end local v5    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v6    # "inputStreamStack":Ljava/io/InputStream;
    .end local v7    # "firstPackStreamIndex":I
    .end local v8    # "unpackSize":I
    .end local v9    # "nextHeader":[B
    .end local v10    # "folderOffset":J
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v6, "no packed streams, can\'t read encoded header"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1050
    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "no folders, can\'t read encoded header"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 19
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 1087
    .local v4, "numFilesInt":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1088
    .local v3, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    const/4 v5, 0x0

    .line 1089
    .local v5, "isEmptyStream":Ljava/util/BitSet;
    const/4 v6, 0x0

    .line 1090
    .local v6, "isEmptyFile":Ljava/util/BitSet;
    const/4 v7, 0x0

    .line 1092
    .local v7, "isAnti":Ljava/util/BitSet;
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 1093
    .local v8, "propertyType":I
    if-nez v8, :cond_a

    .line 1094
    nop

    .line 1197
    .end local v8    # "propertyType":I
    const/4 v8, 0x0

    .line 1198
    .local v8, "nonEmptyFileCounter":I
    const/4 v9, 0x0

    .line 1199
    .local v9, "emptyFileCounter":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_9

    .line 1200
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1201
    .local v11, "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    if-nez v11, :cond_0

    .line 1202
    goto/16 :goto_7

    .line 1204
    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 1205
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1206
    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    if-eqz v14, :cond_4

    .line 1209
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 1210
    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 1211
    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v14, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 1212
    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v12, v14, v8

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 1213
    iget-object v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v13, v12, v8

    invoke-virtual {v11, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 1214
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_3

    .line 1217
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1215
    :cond_3
    new-instance v12, Ljava/io/IOException;

    const-string v13, "broken archive, entry with negative size"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1207
    :cond_4
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Archive contains file with streams but no subStreamsInfo"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1219
    :cond_5
    if-eqz v6, :cond_7

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 1220
    if-eqz v7, :cond_8

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v11, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 1221
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 1222
    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 1223
    add-int/lit8 v9, v9, 0x1

    .line 1199
    .end local v11    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1226
    .end local v10    # "i":I
    :cond_9
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v10}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v10, v11}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v10, v11}, Lj$/util/stream/Stream;->toArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iput-object v10, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1227
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1228
    return-void

    .line 1096
    .end local v9    # "emptyFileCounter":I
    .local v8, "propertyType":I
    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    .line 1097
    .local v9, "size":J
    packed-switch v8, :pswitch_data_0

    .line 1192
    :pswitch_0
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .local v16, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .local v17, "isEmptyFile":Ljava/util/BitSet;
    .local v18, "isAnti":Ljava/util/BitSet;
    invoke-static {v1, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    goto/16 :goto_e

    .line 1186
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :pswitch_1
    invoke-static {v1, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    .line 1187
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1170
    :pswitch_2
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1171
    .local v11, "attributesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1172
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v12, v4, :cond_c

    .line 1173
    invoke-direct {v0, v3, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1174
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1175
    .local v13, "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 1176
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1177
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    .line 1172
    .end local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1180
    .end local v12    # "i":I
    :cond_c
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1157
    .end local v11    # "attributesDefined":Ljava/util/BitSet;
    :pswitch_3
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1158
    .local v11, "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1159
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_9
    if-ge v12, v4, :cond_e

    .line 1160
    invoke-direct {v0, v3, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1161
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1162
    .restart local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 1163
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1164
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    .line 1159
    .end local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1167
    .end local v12    # "i":I
    :cond_e
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1144
    .end local v11    # "timesDefined":Ljava/util/BitSet;
    :pswitch_4
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1145
    .restart local v11    # "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1146
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    if-ge v12, v4, :cond_10

    .line 1147
    invoke-direct {v0, v3, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1148
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1149
    .restart local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 1150
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1151
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    .line 1146
    .end local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 1154
    .end local v12    # "i":I
    :cond_10
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1131
    .end local v11    # "timesDefined":Ljava/util/BitSet;
    :pswitch_5
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1132
    .restart local v11    # "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1133
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_b
    if-ge v12, v4, :cond_12

    .line 1134
    invoke-direct {v0, v3, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1135
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1136
    .restart local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 1137
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1138
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    .line 1133
    .end local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1141
    .end local v12    # "i":I
    :cond_12
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1111
    .end local v11    # "timesDefined":Ljava/util/BitSet;
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1112
    const-wide/16 v11, 0x1

    sub-long v11, v9, v11

    long-to-int v12, v11

    new-array v11, v12, [B

    .line 1113
    .local v11, "names":[B
    array-length v12, v11

    .line 1114
    .local v12, "namesLength":I
    invoke-static {v1, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1115
    const/4 v13, 0x0

    .line 1116
    .local v13, "nextFile":I
    const/4 v14, 0x0

    .line 1117
    .local v14, "nextName":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c
    if-ge v15, v12, :cond_14

    .line 1118
    aget-byte v16, v11, v15

    if-nez v16, :cond_13

    add-int/lit8 v16, v15, 0x1

    aget-byte v16, v11, v16

    if-nez v16, :cond_13

    .line 1119
    invoke-direct {v0, v3, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1120
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-object/from16 v16, v3

    .end local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    new-instance v3, Ljava/lang/String;

    move-object/from16 v17, v6

    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    sub-int v6, v15, v14

    move-object/from16 v18, v7

    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v3, v11, v14, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 1121
    add-int/lit8 v2, v15, 0x2

    .line 1122
    .end local v14    # "nextName":I
    .local v2, "nextName":I
    add-int/lit8 v13, v13, 0x1

    move v14, v2

    goto :goto_d

    .line 1118
    .end local v2    # "nextName":I
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v14    # "nextName":I
    :cond_13
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 1117
    .end local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    :goto_d
    add-int/lit8 v15, v15, 0x2

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_c

    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :cond_14
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 1125
    .end local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .end local v15    # "i":I
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    if-ne v14, v12, :cond_15

    if-ne v13, v4, :cond_15

    goto :goto_e

    .line 1126
    :cond_15
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error parsing file names"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1107
    .end local v11    # "names":[B
    .end local v12    # "namesLength":I
    .end local v13    # "nextFile":I
    .end local v14    # "nextName":I
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :pswitch_7
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 1108
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .local v2, "isAnti":Ljava/util/BitSet;
    move-object v7, v2

    goto :goto_f

    .line 1103
    .end local v2    # "isAnti":Ljava/util/BitSet;
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :pswitch_8
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 1104
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .local v2, "isEmptyFile":Ljava/util/BitSet;
    move-object v6, v2

    goto :goto_f

    .line 1099
    .end local v2    # "isEmptyFile":Ljava/util/BitSet;
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :pswitch_9
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v3    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 1100
    .end local v5    # "isEmptyStream":Ljava/util/BitSet;
    .local v2, "isEmptyStream":Ljava/util/BitSet;
    move-object v5, v2

    goto :goto_f

    .line 1196
    .end local v2    # "isEmptyStream":Ljava/util/BitSet;
    .end local v8    # "propertyType":I
    .end local v9    # "size":J
    .restart local v5    # "isEmptyStream":Ljava/util/BitSet;
    :goto_e
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :goto_f
    move-object/from16 v2, p2

    move-object/from16 v3, v16

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 20
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1231
    move-object/from16 v0, p1

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 1233
    .local v1, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1234
    .local v2, "numCoders":J
    long-to-int v4, v2

    new-array v4, v4, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1235
    .local v4, "coders":[Lorg/apache/commons/compress/archivers/sevenz/Coder;
    const-wide/16 v5, 0x0

    .line 1236
    .local v5, "totalInStreams":J
    const-wide/16 v7, 0x0

    .line 1237
    .local v7, "totalOutStreams":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v4

    if-ge v9, v10, :cond_6

    .line 1238
    new-instance v10, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    invoke-direct {v10}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>()V

    aput-object v10, v4, v9

    .line 1239
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 1240
    .local v10, "bits":I
    and-int/lit8 v14, v10, 0xf

    .line 1241
    .local v14, "idSize":I
    and-int/lit8 v15, v10, 0x10

    const/16 v16, 0x1

    if-nez v15, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 1242
    .local v15, "isSimple":Z
    :goto_1
    and-int/lit8 v17, v10, 0x20

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    .line 1243
    .local v17, "hasAttributes":Z
    :goto_2
    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 1245
    .local v11, "moreAlternativeMethods":Z
    :goto_3
    aget-object v12, v4, v9

    new-array v13, v14, [B

    iput-object v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 1246
    aget-object v12, v4, v9

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v0, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1247
    if-eqz v15, :cond_3

    .line 1248
    aget-object v12, v4, v9

    move-wide/from16 v18, v2

    const-wide/16 v2, 0x1

    .end local v2    # "numCoders":J
    .local v18, "numCoders":J
    iput-wide v2, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 1249
    aget-object v12, v4, v9

    iput-wide v2, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    goto :goto_4

    .line 1251
    .end local v18    # "numCoders":J
    .restart local v2    # "numCoders":J
    :cond_3
    move-wide/from16 v18, v2

    .end local v2    # "numCoders":J
    .restart local v18    # "numCoders":J
    aget-object v2, v4, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 1252
    aget-object v2, v4, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 1254
    :goto_4
    aget-object v2, v4, v9

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    add-long/2addr v5, v2

    .line 1255
    aget-object v2, v4, v9

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    add-long/2addr v7, v2

    .line 1256
    if-eqz v17, :cond_4

    .line 1257
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1258
    .local v2, "propertiesSize":J
    aget-object v12, v4, v9

    long-to-int v13, v2

    new-array v13, v13, [B

    iput-object v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 1259
    aget-object v12, v4, v9

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    invoke-static {v0, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1262
    .end local v2    # "propertiesSize":J
    :cond_4
    if-nez v11, :cond_5

    .line 1237
    .end local v10    # "bits":I
    .end local v11    # "moreAlternativeMethods":Z
    .end local v14    # "idSize":I
    .end local v15    # "isSimple":Z
    .end local v17    # "hasAttributes":Z
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v2, v18

    goto :goto_0

    .line 1263
    .restart local v10    # "bits":I
    .restart local v11    # "moreAlternativeMethods":Z
    .restart local v14    # "idSize":I
    .restart local v15    # "isSimple":Z
    .restart local v17    # "hasAttributes":Z
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1237
    .end local v10    # "bits":I
    .end local v11    # "moreAlternativeMethods":Z
    .end local v14    # "idSize":I
    .end local v15    # "isSimple":Z
    .end local v17    # "hasAttributes":Z
    .end local v18    # "numCoders":J
    .local v2, "numCoders":J
    :cond_6
    move-wide/from16 v18, v2

    .line 1267
    .end local v2    # "numCoders":J
    .end local v9    # "i":I
    .restart local v18    # "numCoders":J
    iput-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1268
    iput-wide v5, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 1269
    iput-wide v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 1271
    const-wide/16 v2, 0x1

    sub-long v9, v7, v2

    .line 1272
    .local v9, "numBindPairs":J
    long-to-int v2, v9

    new-array v2, v2, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 1273
    .local v2, "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    array-length v11, v2

    if-ge v3, v11, :cond_7

    .line 1274
    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>()V

    aput-object v11, v2, v3

    .line 1275
    aget-object v11, v2, v3

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 1276
    aget-object v11, v2, v3

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 1273
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1278
    .end local v3    # "i":I
    :cond_7
    iput-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 1280
    sub-long v11, v5, v9

    .line 1281
    .local v11, "numPackedStreams":J
    long-to-int v3, v11

    new-array v3, v3, [J

    .line 1282
    .local v3, "packedStreams":[J
    const-wide/16 v13, 0x1

    cmp-long v15, v11, v13

    if-nez v15, :cond_a

    .line 1284
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    long-to-int v14, v5

    if-ge v13, v14, :cond_9

    .line 1285
    invoke-virtual {v1, v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v14

    if-gez v14, :cond_8

    .line 1286
    goto :goto_7

    .line 1284
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1289
    :cond_9
    :goto_7
    int-to-long v14, v13

    const/16 v16, 0x0

    aput-wide v14, v3, v16

    .line 1290
    .end local v13    # "i":I
    goto :goto_9

    .line 1291
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    long-to-int v14, v11

    if-ge v13, v14, :cond_b

    .line 1292
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    aput-wide v14, v3, v13

    .line 1291
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 1295
    .end local v13    # "i":I
    :cond_b
    :goto_9
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 1297
    return-object v1
.end method

.method private readFully(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1302
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1303
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1304
    return-void
.end method

.method private readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 5
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1307
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1308
    .local v0, "pos":I
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckAndCollectStatistics(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    move-result-object v1

    .line 1309
    .local v1, "stats":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->assertValidity(I)V

    .line 1310
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1312
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1314
    .local v2, "nid":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1315
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 1316
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1319
    :cond_0
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 1324
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1325
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1326
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1329
    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1330
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1331
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1333
    :cond_2
    return-void

    .line 1320
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Additional streams unsupported"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 12
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1336
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1337
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1338
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 1339
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 1340
    .local v1, "signature":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1341
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1345
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1346
    .local v2, "archiveVersionMajor":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1347
    .local v3, "archiveVersionMinor":B
    const/4 v4, 0x1

    if-nez v2, :cond_5

    .line 1352
    const/4 v5, 0x0

    .line 1353
    .local v5, "headerLooksValid":Z
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 1354
    .local v6, "startHeaderCrc":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    .line 1356
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v8}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    .line 1357
    .local v8, "currentPosition":J
    const/16 v10, 0x14

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 1358
    .local v10, "peekBuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 1359
    iget-object v11, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v11, v8, v9}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1361
    :cond_0
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1362
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    if-eqz v11, :cond_0

    .line 1363
    const/4 v5, 0x1

    .line 1364
    nop

    .line 1367
    .end local v8    # "currentPosition":J
    .end local v10    # "peekBuf":Ljava/nio/ByteBuffer;
    :cond_1
    goto :goto_0

    .line 1368
    :cond_2
    const/4 v5, 0x1

    .line 1371
    :goto_0
    if-eqz v5, :cond_3

    .line 1372
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v8

    invoke-direct {p0, v8, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v4

    return-object v4

    .line 1375
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getTryToRecoverBrokenArchives()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1376
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->tryToLocateEndHeader([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v4

    return-object v4

    .line 1378
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v8, "archive seems to be invalid.\nYou may want to retry and enable the tryToRecoverBrokenArchives if the archive could be a multi volume archive that has been closed prematurely."

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1348
    .end local v5    # "headerLooksValid":Z
    .end local v6    # "startHeaderCrc":J
    :cond_5
    new-instance v5, Ljava/io/IOException;

    .line 1349
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v7, v8, v4

    .line 1348
    const-string v4, "Unsupported 7z version (%d,%d)"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1342
    .end local v2    # "archiveVersionMajor":B
    .end local v3    # "archiveVersionMinor":B
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad 7z signature"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 8
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1384
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 1385
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 1386
    .local v1, "numPackStreamsInt":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1387
    .local v0, "nid":I
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 1388
    new-array v2, v1, [J

    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 1389
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1390
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 1389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1392
    .end local v2    # "i":I
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1395
    :cond_1
    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    .line 1396
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 1397
    new-array v2, v1, [J

    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 1398
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1399
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1400
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 1398
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1404
    .end local v2    # "i":I
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1406
    :cond_4
    return-void
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 9
    .param p1, "startHeaderCrc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1409
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V

    .line 1412
    .local v0, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v8, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v4, 0x14

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    move-object v2, v8

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1414
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 1415
    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    const-wide/16 v4, 0x20

    add-long/2addr v2, v4

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 1416
    invoke-interface {v6}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    .line 1420
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 1421
    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    iget-wide v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    add-long/2addr v2, v6

    .line 1422
    .local v2, "nextHeaderEnd":J
    iget-wide v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    add-long/2addr v4, v2

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 1423
    invoke-interface {v6}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    .line 1427
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iput-wide v4, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    nop

    .line 1430
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 1429
    return-object v0

    .line 1424
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "nextHeaderSize is out of bounds"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "startHeaderCrc":J
    throw v4

    .line 1417
    .end local v2    # "nextHeaderEnd":J
    .restart local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "startHeaderCrc":J
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "nextHeaderOffset is out of bounds"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "startHeaderCrc":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1412
    .restart local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "startHeaderCrc":J
    :catchall_0
    move-exception v2

    .end local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "startHeaderCrc":J
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1430
    .restart local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "startHeaderCrc":J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method

.method private readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 2
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1434
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1436
    .local v0, "nid":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1437
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1438
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1441
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1442
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1443
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1446
    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->EMPTY_FOLDER_ARRAY:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 1449
    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1450
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1451
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1453
    :cond_2
    return-void
.end method

.method private readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 24
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 1457
    .local v6, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iput v5, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 1456
    .end local v6    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1459
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    int-to-long v1, v1

    .line 1461
    .local v1, "unpackStreamsCount":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1462
    .local v4, "nid":I
    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    .line 1463
    const-wide/16 v1, 0x0

    .line 1464
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 1465
    .local v9, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 1466
    .local v10, "numStreams":J
    long-to-int v12, v10

    iput v12, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 1467
    add-long/2addr v1, v10

    .line 1464
    .end local v9    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v10    # "numStreams":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1469
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1472
    :cond_2
    long-to-int v6, v1

    .line 1473
    .local v6, "totalUnpackStreams":I
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>()V

    .line 1474
    .local v7, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    new-array v8, v6, [J

    iput-object v8, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 1475
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v6}, Ljava/util/BitSet;-><init>(I)V

    iput-object v8, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 1476
    new-array v8, v6, [J

    iput-object v8, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 1478
    const/4 v8, 0x0

    .line 1479
    .local v8, "nextUnpackStream":I
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    const/16 v12, 0x9

    if-ge v11, v10, :cond_6

    aget-object v13, v9, v11

    .line 1480
    .local v13, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v14, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-nez v14, :cond_3

    .line 1481
    goto :goto_4

    .line 1483
    :cond_3
    const-wide/16 v14, 0x0

    .line 1484
    .local v14, "sum":J
    if-ne v4, v12, :cond_4

    .line 1485
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    iget v3, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    sub-int/2addr v3, v5

    if-ge v12, v3, :cond_4

    .line 1486
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v17

    .line 1487
    .local v17, "size":J
    iget-object v3, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v19, v8, 0x1

    .end local v8    # "nextUnpackStream":I
    .local v19, "nextUnpackStream":I
    aput-wide v17, v3, v8

    .line 1488
    add-long v14, v14, v17

    .line 1485
    .end local v17    # "size":J
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v19

    goto :goto_3

    .line 1491
    .end local v12    # "i":I
    .end local v19    # "nextUnpackStream":I
    .restart local v8    # "nextUnpackStream":I
    :cond_4
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v17

    cmp-long v3, v14, v17

    if-gtz v3, :cond_5

    .line 1494
    iget-object v3, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "nextUnpackStream":I
    .local v12, "nextUnpackStream":I
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v17

    sub-long v17, v17, v14

    aput-wide v17, v3, v8

    move v8, v12

    .line 1479
    .end local v12    # "nextUnpackStream":I
    .end local v13    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v14    # "sum":J
    .restart local v8    # "nextUnpackStream":I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1492
    .restart local v13    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v14    # "sum":J
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v5, "sum of unpack sizes of folder exceeds total unpack size"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1496
    .end local v13    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v14    # "sum":J
    :cond_6
    if-ne v4, v12, :cond_7

    .line 1497
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1500
    :cond_7
    const/4 v3, 0x0

    .line 1501
    .local v3, "numDigests":I
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_a

    aget-object v12, v9, v11

    .line 1502
    .local v12, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v13, v5, :cond_8

    iget-boolean v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-nez v13, :cond_9

    .line 1503
    :cond_8
    iget v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/2addr v3, v13

    .line 1501
    .end local v12    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1507
    :cond_a
    const/16 v9, 0xa

    if-ne v4, v9, :cond_10

    .line 1508
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1509
    .local v11, "hasMissingCrc":Ljava/util/BitSet;
    new-array v12, v3, [J

    .line 1510
    .local v12, "missingCrcs":[J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    if-ge v13, v3, :cond_c

    .line 1511
    invoke-virtual {v11, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1512
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v14

    int-to-long v14, v14

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    aput-wide v14, v12, v13

    .line 1510
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1515
    .end local v13    # "i":I
    :cond_c
    const/4 v13, 0x0

    .line 1516
    .local v13, "nextCrc":I
    const/4 v14, 0x0

    .line 1517
    .local v14, "nextMissingCrc":I
    iget-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v5, v15

    move/from16 v16, v14

    move v14, v13

    const/4 v13, 0x0

    .end local v13    # "nextCrc":I
    .local v14, "nextCrc":I
    .local v16, "nextMissingCrc":I
    :goto_7
    if-ge v13, v5, :cond_f

    move-wide/from16 v18, v1

    .end local v1    # "unpackStreamsCount":J
    .local v18, "unpackStreamsCount":J
    aget-object v1, v15, v13

    .line 1518
    .local v1, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v20, v3

    const/4 v3, 0x1

    .end local v3    # "numDigests":I
    .local v20, "numDigests":I
    if-ne v2, v3, :cond_d

    iget-boolean v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v2, :cond_d

    .line 1519
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v2, v14, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 1520
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    move/from16 v17, v4

    .end local v4    # "nid":I
    .local v17, "nid":I
    iget-wide v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    aput-wide v3, v2, v14

    .line 1521
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1518
    .end local v17    # "nid":I
    .restart local v4    # "nid":I
    :cond_d
    move/from16 v17, v4

    .line 1523
    .end local v4    # "nid":I
    .restart local v17    # "nid":I
    const/4 v2, 0x0

    move/from16 v3, v16

    .end local v16    # "nextMissingCrc":I
    .local v2, "i":I
    .local v3, "nextMissingCrc":I
    :goto_8
    iget v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ge v2, v4, :cond_e

    .line 1524
    iget-object v4, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    move-object/from16 v21, v1

    .end local v1    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .local v21, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    invoke-virtual {v4, v14, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 1525
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v22, v12, v3

    aput-wide v22, v1, v14

    .line 1526
    add-int/lit8 v14, v14, 0x1

    .line 1527
    add-int/lit8 v3, v3, 0x1

    .line 1523
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v21

    goto :goto_8

    .end local v21    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v1    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_e
    move-object/from16 v21, v1

    .end local v1    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v21    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move/from16 v16, v3

    .line 1517
    .end local v2    # "i":I
    .end local v3    # "nextMissingCrc":I
    .end local v21    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v16    # "nextMissingCrc":I
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v17

    move-wide/from16 v1, v18

    move/from16 v3, v20

    goto :goto_7

    .line 1532
    .end local v17    # "nid":I
    .end local v18    # "unpackStreamsCount":J
    .end local v20    # "numDigests":I
    .local v1, "unpackStreamsCount":J
    .local v3, "numDigests":I
    .restart local v4    # "nid":I
    :cond_f
    move-wide/from16 v18, v1

    move/from16 v20, v3

    move/from16 v17, v4

    .end local v1    # "unpackStreamsCount":J
    .end local v3    # "numDigests":I
    .end local v4    # "nid":I
    .restart local v17    # "nid":I
    .restart local v18    # "unpackStreamsCount":J
    .restart local v20    # "numDigests":I
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .end local v17    # "nid":I
    .restart local v4    # "nid":I
    goto :goto_a

    .line 1507
    .end local v11    # "hasMissingCrc":Ljava/util/BitSet;
    .end local v12    # "missingCrcs":[J
    .end local v14    # "nextCrc":I
    .end local v16    # "nextMissingCrc":I
    .end local v18    # "unpackStreamsCount":J
    .end local v20    # "numDigests":I
    .restart local v1    # "unpackStreamsCount":J
    .restart local v3    # "numDigests":I
    :cond_10
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v18, v1

    move/from16 v20, v3

    move/from16 v17, v4

    .line 1535
    .end local v1    # "unpackStreamsCount":J
    .end local v3    # "numDigests":I
    .restart local v18    # "unpackStreamsCount":J
    .restart local v20    # "numDigests":I
    :goto_a
    iput-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 1536
    return-void
.end method

.method private static readUint64(Ljava/nio/ByteBuffer;)J
    .locals 11
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    .line 237
    .local v0, "firstByte":J
    const/16 v2, 0x80

    .line 238
    .local v2, "mask":I
    const-wide/16 v3, 0x0

    .line 239
    .local v3, "value":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 240
    int-to-long v6, v2

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 241
    add-int/lit8 v6, v2, -0x1

    int-to-long v6, v6

    and-long/2addr v6, v0

    mul-int/lit8 v8, v5, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v6, v3

    return-wide v6

    .line 243
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v6, v6

    .line 244
    .local v6, "nextByte":J
    mul-int/lit8 v8, v5, 0x8

    shl-long v8, v6, v8

    or-long/2addr v3, v8

    .line 245
    ushr-int/lit8 v2, v2, 0x1

    .line 239
    .end local v6    # "nextByte":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 247
    .end local v5    # "i":I
    :cond_1
    return-wide v3
.end method

.method private readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 13
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1539
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1540
    .local v0, "nid":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    long-to-int v2, v1

    .line 1541
    .local v2, "numFoldersInt":I
    new-array v1, v2, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 1542
    .local v1, "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 1543
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1544
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1545
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1544
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1548
    .end local v3    # "i":I
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1549
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .line 1550
    .local v6, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const-string v7, "totalOutputStreams"

    iget-wide v8, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    invoke-static {v7, v8, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1551
    iget-wide v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v8, v7

    new-array v7, v8, [J

    iput-object v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 1552
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    int-to-long v8, v7

    iget-wide v10, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    .line 1553
    iget-object v8, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 1552
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1549
    .end local v6    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1557
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1558
    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    .line 1559
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v3

    .line 1560
    .local v3, "crcsDefined":Ljava/util/BitSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_4

    .line 1561
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1562
    aget-object v6, v1, v5

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 1563
    aget-object v6, v1, v5

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    goto :goto_4

    .line 1565
    :cond_3
    aget-object v6, v1, v5

    iput-boolean v4, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 1560
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1569
    .end local v5    # "i":I
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1571
    .end local v3    # "crcsDefined":Ljava/util/BitSet;
    :cond_5
    return-void
.end method

.method private reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .locals 10
    .param p1, "folderIndex"    # I
    .param p2, "file"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1581
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1582
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1584
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 1586
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v0, v0, p1

    .line 1587
    .local v0, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v7, v1, p1

    .line 1588
    .local v7, "firstPackStreamIndex":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    const-wide/16 v3, 0x20

    add-long/2addr v1, v3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v4, v3, v7

    add-long v8, v1, v4

    .line 1591
    .local v8, "folderOffset":J
    move-object v1, p0

    move-object v2, v0

    move-wide v3, v8

    move v5, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 1592
    return-void
.end method

.method private sanityCheckAndCollectStatistics(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .locals 5
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1596
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V

    .line 1598
    .local v0, "stats":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1600
    .local v1, "nid":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1601
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 1602
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1605
    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 1610
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1611
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1612
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1615
    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1616
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1617
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1620
    :cond_2
    if-nez v1, :cond_3

    .line 1624
    return-object v0

    .line 1621
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Badly terminated header, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1606
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Additional streams unsupported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sanityCheckArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1629
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1630
    .local v0, "nid":I
    :goto_0
    if-eqz v0, :cond_1

    .line 1631
    nop

    .line 1632
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    const-string v3, "propertySize"

    invoke-static {v3, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v1

    .line 1633
    .local v1, "propertySize":I
    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 1636
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1637
    .end local v1    # "propertySize":I
    goto :goto_0

    .line 1634
    .restart local v1    # "propertySize":I
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid property size"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1638
    .end local v1    # "propertySize":I
    :cond_1
    return-void
.end method

.method private sanityCheckFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 11
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1641
    const-string v0, "numFiles"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v0

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$302(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 1643
    const/4 v0, -0x1

    .line 1645
    .local v0, "emptyStreams":I
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1646
    .local v1, "propertyType":I
    if-nez v1, :cond_0

    .line 1647
    nop

    .line 1763
    .end local v1    # "propertyType":I
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$402(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 1764
    return-void

    .line 1649
    .restart local v1    # "propertyType":I
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1650
    .local v2, "size":J
    const/4 v4, -0x1

    const-string v5, "Not implemented"

    packed-switch v1, :pswitch_data_0

    .line 1756
    :pswitch_0
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_11

    goto/16 :goto_2

    .line 1748
    :pswitch_1
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    goto/16 :goto_2

    .line 1749
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Incomplete kDummy property"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1742
    :pswitch_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "kStartPos is unsupported, please report"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1730
    :pswitch_3
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    .line 1731
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1732
    .local v4, "attributesDefined":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1733
    .local v6, "external":I
    if-nez v6, :cond_3

    .line 1736
    mul-int/lit8 v5, v4, 0x4

    int-to-long v7, v5

    invoke-static {p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_2

    goto/16 :goto_2

    .line 1737
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid windows attributes size"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1734
    :cond_3
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1718
    .end local v4    # "attributesDefined":I
    .end local v6    # "external":I
    :pswitch_4
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    .line 1719
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1720
    .local v4, "timesDefined":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1721
    .restart local v6    # "external":I
    if-nez v6, :cond_5

    .line 1724
    mul-int/lit8 v5, v4, 0x8

    int-to-long v7, v5

    invoke-static {p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x8

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_4

    goto/16 :goto_2

    .line 1725
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid modification dates size"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1722
    :cond_5
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1706
    .end local v4    # "timesDefined":I
    .end local v6    # "external":I
    :pswitch_5
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    .line 1707
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1708
    .restart local v4    # "timesDefined":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1709
    .restart local v6    # "external":I
    if-nez v6, :cond_7

    .line 1712
    mul-int/lit8 v5, v4, 0x8

    int-to-long v7, v5

    invoke-static {p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x8

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_6

    goto/16 :goto_2

    .line 1713
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid access dates size"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1710
    :cond_7
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1694
    .end local v4    # "timesDefined":I
    .end local v6    # "external":I
    :pswitch_6
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    .line 1695
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1696
    .restart local v4    # "timesDefined":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1697
    .restart local v6    # "external":I
    if-nez v6, :cond_9

    .line 1700
    mul-int/lit8 v5, v4, 0x8

    int-to-long v7, v5

    invoke-static {p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x8

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_8

    goto/16 :goto_2

    .line 1701
    :cond_8
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid creation dates size"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1698
    :cond_9
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1670
    .end local v4    # "timesDefined":I
    .end local v6    # "external":I
    :pswitch_7
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1671
    .local v4, "external":I
    if-nez v4, :cond_e

    .line 1674
    const-wide/16 v5, 0x1

    sub-long v5, v2, v5

    .line 1675
    const-string v7, "file names length"

    invoke-static {v7, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v5

    .line 1676
    .local v5, "namesLength":I
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_d

    .line 1680
    const/4 v6, 0x0

    .line 1681
    .local v6, "filesSeen":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_b

    .line 1682
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getChar(Ljava/nio/ByteBuffer;)C

    move-result v8

    .line 1683
    .local v8, "c":C
    if-nez v8, :cond_a

    .line 1684
    add-int/lit8 v6, v6, 0x1

    .line 1681
    .end local v8    # "c":C
    :cond_a
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 1687
    .end local v7    # "i":I
    :cond_b
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v7

    if-ne v6, v7, :cond_c

    goto :goto_2

    .line 1688
    :cond_c
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid number of file names ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " instead of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1689
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1677
    .end local v6    # "filesSeen":I
    :cond_d
    new-instance v6, Ljava/io/IOException;

    const-string v7, "File names length invalid"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1672
    .end local v5    # "namesLength":I
    :cond_e
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1663
    .end local v4    # "external":I
    :pswitch_8
    if-eq v0, v4, :cond_f

    .line 1666
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1667
    goto :goto_2

    .line 1664
    :cond_f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1656
    :pswitch_9
    if-eq v0, v4, :cond_10

    .line 1659
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1660
    goto :goto_2

    .line 1657
    :cond_10
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1652
    :pswitch_a
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$300(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    .line 1653
    nop

    .line 1762
    .end local v1    # "propertyType":I
    .end local v2    # "size":J
    :goto_2
    goto/16 :goto_0

    .line 1757
    .restart local v1    # "propertyType":I
    .restart local v2    # "size":J
    :cond_11
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete property of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sanityCheckFolder(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I
    .locals 21
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1769
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "numCoders"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    .line 1770
    .local v2, "numCoders":I
    if-eqz v2, :cond_11

    .line 1773
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$500(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$502(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1775
    const-wide/16 v3, 0x0

    .line 1776
    .local v3, "totalOutStreams":J
    const-wide/16 v5, 0x0

    .line 1777
    .local v5, "totalInStreams":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const-wide/16 v8, 0x1

    const/4 v11, 0x1

    if-ge v7, v2, :cond_7

    .line 1778
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 1779
    .local v12, "bits":I
    and-int/lit8 v13, v12, 0xf

    .line 1780
    .local v13, "idSize":I
    new-array v14, v13, [B

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1782
    and-int/lit8 v14, v12, 0x10

    if-nez v14, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 1783
    .local v14, "isSimple":Z
    :goto_1
    and-int/lit8 v15, v12, 0x20

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 1784
    .local v15, "hasAttributes":Z
    :goto_2
    and-int/lit16 v10, v12, 0x80

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    .line 1785
    .local v10, "moreAlternativeMethods":Z
    :goto_3
    if-nez v10, :cond_6

    .line 1790
    if-eqz v14, :cond_3

    .line 1791
    add-long/2addr v5, v8

    .line 1792
    add-long/2addr v3, v8

    goto :goto_4

    .line 1794
    :cond_3
    nop

    .line 1795
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    const-string v11, "numInStreams"

    invoke-static {v11, v8, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 1796
    nop

    .line 1797
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    const-string v11, "numOutStreams"

    invoke-static {v11, v8, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v3, v8

    .line 1800
    :goto_4
    if-eqz v15, :cond_5

    .line 1801
    nop

    .line 1802
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    const-string v11, "propertiesSize"

    invoke-static {v11, v8, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    .line 1803
    .local v8, "propertiesSize":I
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "numCoders":I
    .end local v3    # "totalOutStreams":J
    .local v16, "numCoders":I
    .local v17, "totalOutStreams":J
    int-to-long v2, v8

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    move-wide/from16 v19, v5

    .end local v5    # "totalInStreams":J
    .local v19, "totalInStreams":J
    int-to-long v4, v8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    goto :goto_5

    .line 1804
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid propertiesSize in folder"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1800
    .end local v8    # "propertiesSize":I
    .end local v16    # "numCoders":I
    .end local v17    # "totalOutStreams":J
    .end local v19    # "totalInStreams":J
    .restart local v2    # "numCoders":I
    .restart local v3    # "totalOutStreams":J
    .restart local v5    # "totalInStreams":J
    :cond_5
    move/from16 v16, v2

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    .line 1777
    .end local v2    # "numCoders":I
    .end local v3    # "totalOutStreams":J
    .end local v5    # "totalInStreams":J
    .end local v10    # "moreAlternativeMethods":Z
    .end local v12    # "bits":I
    .end local v13    # "idSize":I
    .end local v14    # "isSimple":Z
    .end local v15    # "hasAttributes":Z
    .restart local v16    # "numCoders":I
    .restart local v17    # "totalOutStreams":J
    .restart local v19    # "totalInStreams":J
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    goto :goto_0

    .line 1786
    .end local v16    # "numCoders":I
    .end local v17    # "totalOutStreams":J
    .end local v19    # "totalInStreams":J
    .restart local v2    # "numCoders":I
    .restart local v3    # "totalOutStreams":J
    .restart local v5    # "totalInStreams":J
    .restart local v10    # "moreAlternativeMethods":Z
    .restart local v12    # "bits":I
    .restart local v13    # "idSize":I
    .restart local v14    # "isSimple":Z
    .restart local v15    # "hasAttributes":Z
    :cond_6
    move/from16 v16, v2

    .end local v2    # "numCoders":I
    .restart local v16    # "numCoders":I
    new-instance v2, Ljava/io/IOException;

    const-string v8, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1777
    .end local v10    # "moreAlternativeMethods":Z
    .end local v12    # "bits":I
    .end local v13    # "idSize":I
    .end local v14    # "isSimple":Z
    .end local v15    # "hasAttributes":Z
    .end local v16    # "numCoders":I
    .restart local v2    # "numCoders":I
    :cond_7
    move/from16 v16, v2

    .line 1808
    .end local v2    # "numCoders":I
    .end local v7    # "i":I
    .restart local v16    # "numCoders":I
    const-string v2, "totalInStreams"

    invoke-static {v2, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1809
    const-string v2, "totalOutStreams"

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1810
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$600(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v12

    add-long/2addr v12, v3

    invoke-static {v1, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$602(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1811
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$700(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v12

    add-long/2addr v12, v5

    invoke-static {v1, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$702(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1813
    const-wide/16 v12, 0x0

    cmp-long v2, v3, v12

    if-eqz v2, :cond_10

    .line 1817
    sub-long v7, v3, v8

    .line 1818
    const-string v2, "numBindPairs"

    invoke-static {v2, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    .line 1819
    .local v2, "numBindPairs":I
    int-to-long v7, v2

    cmp-long v9, v5, v7

    if-ltz v9, :cond_f

    .line 1822
    new-instance v7, Ljava/util/BitSet;

    long-to-int v8, v5

    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 1823
    .local v7, "inStreamsBound":Ljava/util/BitSet;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v2, :cond_a

    .line 1824
    const-string v9, "inIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static {v9, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v9

    .line 1825
    .local v9, "inIndex":I
    int-to-long v12, v9

    cmp-long v10, v5, v12

    if-lez v10, :cond_9

    .line 1828
    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 1829
    const-string v10, "outIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v10

    .line 1830
    .local v10, "outIndex":I
    int-to-long v12, v10

    cmp-long v14, v3, v12

    if-lez v14, :cond_8

    .line 1823
    .end local v9    # "inIndex":I
    .end local v10    # "outIndex":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1831
    .restart local v9    # "inIndex":I
    .restart local v10    # "outIndex":I
    :cond_8
    new-instance v11, Ljava/io/IOException;

    const-string v12, "outIndex is bigger than number of outStreams"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1826
    .end local v10    # "outIndex":I
    :cond_9
    new-instance v10, Ljava/io/IOException;

    const-string v11, "inIndex is bigger than number of inStreams"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1835
    .end local v8    # "i":I
    .end local v9    # "inIndex":I
    :cond_a
    int-to-long v8, v2

    sub-long v8, v5, v8

    .line 1836
    const-string v10, "numPackedStreams"

    invoke-static {v10, v8, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    .line 1838
    .local v8, "numPackedStreams":I
    if-ne v8, v11, :cond_c

    .line 1839
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    goto :goto_8

    .line 1840
    :cond_b
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1843
    :cond_c
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v8, :cond_e

    .line 1844
    nop

    .line 1845
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    const-string v12, "packedStreamIndex"

    invoke-static {v12, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v10

    .line 1846
    .local v10, "packedStreamIndex":I
    int-to-long v11, v10

    cmp-long v13, v11, v5

    if-gez v13, :cond_d

    .line 1843
    .end local v10    # "packedStreamIndex":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1847
    .restart local v10    # "packedStreamIndex":I
    :cond_d
    new-instance v11, Ljava/io/IOException;

    const-string v12, "packedStreamIndex is bigger than number of totalInStreams"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1852
    .end local v9    # "i":I
    .end local v10    # "packedStreamIndex":I
    :cond_e
    :goto_8
    long-to-int v9, v3

    return v9

    .line 1820
    .end local v7    # "inStreamsBound":Ljava/util/BitSet;
    .end local v8    # "numPackedStreams":I
    :cond_f
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1814
    .end local v2    # "numBindPairs":I
    :cond_10
    new-instance v2, Ljava/io/IOException;

    const-string v7, "Total output streams can\'t be 0"

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1771
    .end local v3    # "totalOutStreams":J
    .end local v5    # "totalInStreams":J
    .end local v16    # "numCoders":I
    .local v2, "numCoders":I
    :cond_11
    move/from16 v16, v2

    .end local v2    # "numCoders":I
    .restart local v16    # "numCoders":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Folder without coders"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sanityCheckPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 22
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1856
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1857
    .local v2, "packPos":J
    const-string v4, ") is out of range"

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_6

    const-wide/16 v7, 0x20

    add-long v9, v2, v7

    iget-object v11, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v11}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gtz v13, :cond_6

    add-long v9, v2, v7

    cmp-long v11, v9, v5

    if-ltz v11, :cond_6

    .line 1861
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    .line 1862
    .local v9, "numPackStreams":J
    const-string v11, "numPackStreams"

    invoke-static {v11, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v11

    move-object/from16 v12, p2

    invoke-static {v12, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$802(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 1863
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 1864
    .local v11, "nid":I
    const/16 v13, 0x9

    if-ne v11, v13, :cond_2

    .line 1865
    const-wide/16 v13, 0x0

    .line 1866
    .local v13, "totalPackSizes":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$800(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v5

    if-ge v15, v5, :cond_1

    .line 1867
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 1868
    .local v5, "packSize":J
    add-long/2addr v13, v5

    .line 1869
    add-long v18, v2, v7

    add-long v18, v18, v13

    .line 1870
    .local v18, "endOfPackStreams":J
    const-wide/16 v16, 0x0

    cmp-long v20, v5, v16

    if-ltz v20, :cond_0

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 1871
    invoke-interface {v7}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v7

    cmp-long v21, v18, v7

    if-gtz v21, :cond_0

    cmp-long v7, v18, v2

    if-ltz v7, :cond_0

    .line 1866
    .end local v5    # "packSize":J
    .end local v18    # "endOfPackStreams":J
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v5, v16

    const-wide/16 v7, 0x20

    goto :goto_0

    .line 1873
    .restart local v5    # "packSize":J
    .restart local v18    # "endOfPackStreams":J
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v9

    .end local v9    # "numPackStreams":J
    .local v16, "numPackStreams":J
    const-string v9, "packSize ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1866
    .end local v5    # "packSize":J
    .end local v16    # "numPackStreams":J
    .end local v18    # "endOfPackStreams":J
    .restart local v9    # "numPackStreams":J
    :cond_1
    move-wide/from16 v16, v9

    .line 1876
    .end local v9    # "numPackStreams":J
    .end local v15    # "i":I
    .restart local v16    # "numPackStreams":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v11

    goto :goto_1

    .line 1864
    .end local v13    # "totalPackSizes":J
    .end local v16    # "numPackStreams":J
    .restart local v9    # "numPackStreams":J
    :cond_2
    move-wide/from16 v16, v9

    .line 1879
    .end local v9    # "numPackStreams":J
    .restart local v16    # "numPackStreams":J
    :goto_1
    const/16 v4, 0xa

    if-ne v11, v4, :cond_4

    .line 1880
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$800(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    .line 1881
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1882
    .local v4, "crcsDefined":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v5, v5

    invoke-static {v1, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v5

    mul-int/lit8 v7, v4, 0x4

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    .line 1885
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v11

    goto :goto_2

    .line 1883
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid number of CRCs in PackInfo"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1888
    .end local v4    # "crcsDefined":I
    :cond_4
    :goto_2
    if-nez v11, :cond_5

    .line 1891
    return-void

    .line 1889
    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Badly terminated PackInfo ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1857
    .end local v11    # "nid":I
    .end local v16    # "numPackStreams":J
    :cond_6
    move-object/from16 v12, p2

    .line 1859
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packPos ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 3
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1895
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1897
    .local v0, "nid":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1898
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1899
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1902
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1903
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1904
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1907
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1908
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1909
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1912
    :cond_2
    if-nez v0, :cond_3

    .line 1915
    return-void

    .line 1913
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Badly terminated StreamsInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sanityCheckSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 10
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1919
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1920
    .local v0, "nid":I
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1921
    .local v1, "numUnpackSubStreamsPerFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 1922
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1923
    const-string v3, "numStreams"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1922
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1925
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->mapToLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v2

    invoke-interface {v2}, Lj$/util/stream/LongStream;->sum()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1002(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1926
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1

    .line 1928
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1002(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1931
    :goto_1
    const-string v2, "totalUnpackStreams"

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1933
    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    .line 1934
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1935
    .local v3, "numUnpackSubStreams":I
    if-nez v3, :cond_2

    .line 1936
    goto :goto_2

    .line 1938
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_4

    .line 1939
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 1940
    .local v5, "size":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    .line 1938
    .end local v5    # "size":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1941
    .restart local v5    # "size":J
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v7, "negative unpackSize"

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1944
    .end local v3    # "numUnpackSubStreams":I
    .end local v4    # "i":I
    .end local v5    # "size":J
    :cond_4
    goto :goto_2

    .line 1945
    :cond_5
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1948
    :cond_6
    const/4 v2, 0x0

    .line 1949
    .local v2, "numDigests":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1950
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    goto :goto_4

    .line 1951
    :cond_7
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_4
    move v2, v3

    goto :goto_8

    .line 1953
    :cond_8
    const/4 v3, 0x0

    .line 1954
    .local v3, "folderIdx":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1955
    .local v5, "numUnpackSubStreams":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1956
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "folderIdx":I
    .local v7, "folderIdx":I
    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v7

    goto :goto_6

    :cond_9
    move v3, v7

    goto :goto_7

    .line 1957
    .end local v7    # "folderIdx":I
    .restart local v3    # "folderIdx":I
    :cond_a
    :goto_6
    add-int/2addr v2, v5

    .line 1959
    .end local v5    # "numUnpackSubStreams":I
    :goto_7
    goto :goto_5

    .line 1962
    .end local v3    # "folderIdx":I
    :cond_b
    :goto_8
    const/16 v3, 0xa

    if-ne v0, v3, :cond_d

    .line 1963
    const-string v3, "numDigests"

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1964
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v3

    .line 1965
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    .line 1966
    .local v3, "missingCrcs":I
    mul-int/lit8 v4, v3, 0x4

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    mul-int/lit8 v6, v3, 0x4

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_c

    .line 1969
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_9

    .line 1967
    :cond_c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "invalid number of missing CRCs in SubStreamInfo"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1972
    .end local v3    # "missingCrcs":I
    :cond_d
    :goto_9
    if-nez v0, :cond_e

    .line 1975
    return-void

    .line 1973
    :cond_e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Badly terminated SubStreamsInfo"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private sanityCheckUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 19
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1979
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1980
    .local v2, "nid":I
    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 1983
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 1984
    .local v3, "numFolders":J
    const-string v5, "numFolders"

    invoke-static {v5, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v5

    invoke-static {v1, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$902(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 1985
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 1986
    .local v5, "external":I
    if-nez v5, :cond_9

    .line 1990
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1991
    .local v6, "numberOfOutputStreamsPerFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 1992
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckFolder(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1991
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1995
    .end local v7    # "i":I
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$600(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v7

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    .line 1996
    .local v7, "totalNumberOfBindPairs":J
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$700(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 1997
    .local v9, "packedStreamsRequiredByFolders":J
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$800(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v9, v11

    if-ltz v13, :cond_8

    .line 2001
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 2002
    const/16 v11, 0xc

    if-ne v2, v11, :cond_7

    .line 2006
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2007
    .local v12, "numberOfOutputStreams":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v12, :cond_2

    .line 2008
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    .line 2009
    .local v14, "unpackSize":J
    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-ltz v18, :cond_1

    .line 2007
    .end local v14    # "unpackSize":J
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2010
    .restart local v14    # "unpackSize":J
    :cond_1
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .local v16, "numFolders":J
    const-string v3, "negative unpackSize"

    invoke-direct {v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2007
    .end local v14    # "unpackSize":J
    .end local v16    # "numFolders":J
    .restart local v3    # "numFolders":J
    :cond_2
    move-wide/from16 v16, v3

    .line 2013
    .end local v3    # "numFolders":J
    .end local v12    # "numberOfOutputStreams":I
    .end local v13    # "i":I
    .restart local v16    # "numFolders":J
    goto :goto_1

    .line 2015
    .end local v16    # "numFolders":J
    .restart local v3    # "numFolders":J
    :cond_3
    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .restart local v16    # "numFolders":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 2016
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 2017
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    move-object/from16 v4, p0

    invoke-direct {v4, v0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1102(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;Ljava/util/BitSet;)Ljava/util/BitSet;

    .line 2018
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    .line 2019
    .local v3, "crcsDefined":I
    mul-int/lit8 v11, v3, 0x4

    int-to-long v11, v11

    invoke-static {v0, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    mul-int/lit8 v13, v3, 0x4

    int-to-long v13, v13

    cmp-long v15, v11, v13

    if-ltz v15, :cond_4

    .line 2022
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_3

    .line 2020
    :cond_4
    new-instance v11, Ljava/io/IOException;

    const-string v12, "invalid number of CRCs in UnpackInfo"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2016
    .end local v3    # "crcsDefined":I
    :cond_5
    move-object/from16 v4, p0

    .line 2025
    :goto_3
    if-nez v2, :cond_6

    .line 2028
    return-void

    .line 2026
    :cond_6
    new-instance v3, Ljava/io/IOException;

    const-string v11, "Badly terminated UnpackInfo"

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2003
    .end local v16    # "numFolders":J
    .local v3, "numFolders":J
    :cond_7
    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .restart local v16    # "numFolders":J
    new-instance v3, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected kCodersUnpackSize, got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1998
    .end local v16    # "numFolders":J
    .restart local v3    # "numFolders":J
    :cond_8
    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .restart local v16    # "numFolders":J
    new-instance v3, Ljava/io/IOException;

    const-string v11, "archive doesn\'t contain enough packed streams"

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1987
    .end local v6    # "numberOfOutputStreamsPerFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "totalNumberOfBindPairs":J
    .end local v9    # "packedStreamsRequiredByFolders":J
    .end local v16    # "numFolders":J
    .restart local v3    # "numFolders":J
    :cond_9
    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .restart local v16    # "numFolders":J
    new-instance v3, Ljava/io/IOException;

    const-string v6, "External unsupported"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1981
    .end local v5    # "external":I
    .end local v16    # "numFolders":J
    :cond_a
    move-object/from16 v4, p0

    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected kFolder, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static skipBytesFully(Ljava/nio/ByteBuffer;J)J
    .locals 5
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "bytesToSkip"    # J

    .line 251
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 252
    const-wide/16 v0, 0x0

    return-wide v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 255
    .local v0, "current":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 256
    .local v1, "maxSkip":I
    int-to-long v2, v1

    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    .line 257
    int-to-long p1, v1

    .line 259
    :cond_1
    long-to-int v2, p1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    return-wide p1
.end method

.method private skipEntriesWhenNeeded(IZI)Z
    .locals 12
    .param p1, "entryIndex"    # I
    .param p2, "isInSameFolder"    # Z
    .param p3, "folderIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2054
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v0, v0, p1

    .line 2057
    .local v0, "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-ne v1, p1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->hasCurrentEntryBeenRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2058
    const/4 v1, 0x0

    return v1

    .line 2066
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    aget v1, v1, v2

    .line 2067
    .local v1, "filesToSkipStartIndex":I
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 2068
    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-ge v3, p1, :cond_1

    .line 2070
    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 2075
    :cond_1
    invoke-direct {p0, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    .line 2079
    :cond_2
    :goto_0
    move v3, v1

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_4

    .line 2080
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v4, v4, v3

    .line 2081
    .local v4, "fileToSkip":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    new-instance v6, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-direct {v6, v5, v7, v8}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 2082
    .local v6, "fileStreamToSkip":Ljava/io/InputStream;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2083
    new-instance v11, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v9

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .end local v6    # "fileStreamToSkip":Ljava/io/InputStream;
    .local v5, "fileStreamToSkip":Ljava/io/InputStream;
    goto :goto_2

    .line 2082
    .end local v5    # "fileStreamToSkip":Ljava/io/InputStream;
    .restart local v6    # "fileStreamToSkip":Ljava/io/InputStream;
    :cond_3
    move-object v5, v6

    .line 2085
    .end local v6    # "fileStreamToSkip":Ljava/io/InputStream;
    .restart local v5    # "fileStreamToSkip":Ljava/io/InputStream;
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 2079
    .end local v4    # "fileToSkip":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v5    # "fileStreamToSkip":Ljava/io/InputStream;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2090
    .end local v3    # "i":I
    :cond_4
    return v2
.end method

.method private tryToLocateEndHeader([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 17
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2099
    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2100
    .local v3, "nidBuf":Ljava/nio/ByteBuffer;
    const-wide/32 v4, 0x100000

    .line 2102
    .local v4, "searchLimit":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v6

    const-wide/16 v8, 0x14

    add-long/2addr v6, v8

    .line 2105
    .local v6, "previousDataSize":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    add-long/2addr v8, v10

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v12

    cmp-long v0, v8, v12

    if-lez v0, :cond_0

    .line 2106
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    .local v8, "minPos":J
    goto :goto_0

    .line 2108
    .end local v8    # "minPos":J
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 2110
    .restart local v8    # "minPos":J
    :goto_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    .line 2112
    .local v10, "pos":J
    :goto_1
    cmp-long v0, v10, v8

    if-lez v0, :cond_5

    .line 2113
    sub-long/2addr v10, v12

    .line 2114
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v10, v11}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 2115
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2116
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 2119
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v14, 0x0

    aget-byte v15, v0, v14

    .line 2121
    .local v15, "nid":I
    const/16 v0, 0x17

    if-eq v15, v0, :cond_2

    if-ne v15, v2, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v2, p1

    move-object/from16 v16, v3

    goto :goto_3

    .line 2124
    :cond_2
    :goto_2
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2125
    .local v0, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    move-object/from16 v16, v3

    .end local v3    # "nidBuf":Ljava/nio/ByteBuffer;
    .local v16, "nidBuf":Ljava/nio/ByteBuffer;
    sub-long v2, v10, v6

    :try_start_1
    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 2126
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iput-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2127
    move-object/from16 v2, p1

    :try_start_2
    invoke-direct {v1, v0, v2, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v3

    .line 2129
    .local v3, "result":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    iget-object v14, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v14, v14

    if-lez v14, :cond_3

    iget-object v14, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v14, v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez v14, :cond_3

    .line 2130
    return-object v3

    .line 2134
    .end local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v3    # "result":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    :cond_3
    goto :goto_3

    .line 2132
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_3

    .end local v16    # "nidBuf":Ljava/nio/ByteBuffer;
    .local v3, "nidBuf":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    .line 2136
    .end local v3    # "nidBuf":Ljava/nio/ByteBuffer;
    .end local v15    # "nid":I
    .restart local v16    # "nidBuf":Ljava/nio/ByteBuffer;
    :goto_3
    move-object/from16 v3, v16

    const/4 v2, 0x1

    goto :goto_1

    .line 2117
    .end local v16    # "nidBuf":Ljava/nio/ByteBuffer;
    .restart local v3    # "nidBuf":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 2137
    :cond_5
    move-object/from16 v16, v3

    .end local v3    # "nidBuf":Ljava/nio/ByteBuffer;
    .restart local v16    # "nidBuf":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Start header corrupt and unable to guess end header"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_2

    .line 743
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 746
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v2, :cond_0

    .line 747
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 749
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 750
    goto :goto_0

    .line 745
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 746
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v3, :cond_1

    .line 747
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 749
    :cond_1
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 750
    throw v2

    .line 752
    :cond_2
    :goto_0
    return-void
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 4

    .line 793
    const-string v0, "unknown archive"

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "lastSegment":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 799
    .local v1, "dotPos":I
    if-lez v1, :cond_1

    .line 800
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 802
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 794
    .end local v0    # "lastSegment":Ljava/lang/String;
    .end local v1    # "dotPos":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    const/4 v0, -0x1

    .line 836
    .local v0, "entryIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 837
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 838
    move v0, v1

    .line 839
    goto :goto_1

    .line 836
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 847
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream(IZ)V

    .line 848
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 849
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aget v1, v1, v0

    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 850
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 844
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 862
    const/4 v0, 0x0

    return-object v0

    .line 864
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 865
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    .line 866
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->options:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getUseDefaultNameForUnnamedEntries()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 869
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream(IZ)V

    .line 870
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 871
    return-object v0
.end method

.method public getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
    .locals 1

    .line 881
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 960
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 961
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 963
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    if-nez p3, :cond_0

    .line 990
    const/4 v0, 0x0

    return v0

    .line 992
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 993
    .local v0, "cnt":I
    if-lez v0, :cond_1

    .line 994
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 996
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2095
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

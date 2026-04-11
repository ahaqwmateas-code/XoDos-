.class final Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;
.super Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;
.source "TarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/tar/TarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BoundedTarEntryInputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SeekableByteChannel;

.field private currentSparseInputStreamIndex:I

.field private final entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field private entryOffset:J

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/tar/TarFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/tar/TarFile;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/nio/channels/SeekableByteChannel;)V
    .locals 4
    .param p2, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .param p3, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->this$0:Lorg/apache/commons/compress/archivers/tar/TarFile;

    .line 62
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;-><init>(JJ)V

    .line 63
    invoke-interface {p3}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 66
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 67
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 68
    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "entry size exceeds archive size"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readArchive(JLjava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "pos"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private readSparse(JLjava/nio/ByteBuffer;I)I
    .locals 8
    .param p1, "pos"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;
    .param p4, "numToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->this$0:Lorg/apache/commons/compress/archivers/tar/TarFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->access$000(Lorg/apache/commons/compress/archivers/tar/TarFile;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 103
    .local v0, "entrySparseInputStreams":Ljava/util/List;, "Ljava/util/List<Ljava/io/InputStream;>;"
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-lt v1, v2, :cond_1

    .line 108
    return v3

    .line 111
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 112
    .local v1, "currentInputStream":Ljava/io/InputStream;
    new-array v2, p4, [B

    .line 113
    .local v2, "bufArray":[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 114
    .local v4, "readLen":I
    if-eq v4, v3, :cond_2

    .line 115
    const/4 v5, 0x0

    invoke-virtual {p3, v2, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 120
    :cond_2
    iget v5, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    .line 121
    return v4

    .line 125
    :cond_3
    if-ne v4, v3, :cond_4

    .line 126
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readSparse(JLjava/nio/ByteBuffer;I)I

    move-result v3

    return v3

    .line 132
    :cond_4
    if-ge v4, p4, :cond_6

    .line 133
    iget v5, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->currentSparseInputStreamIndex:I

    .line 134
    int-to-long v5, v4

    add-long/2addr v5, p1

    sub-int v7, p4, v4

    invoke-direct {p0, v5, v6, p3, v7}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readSparse(JLjava/nio/ByteBuffer;I)I

    move-result v5

    .line 135
    .local v5, "readLenOfNext":I
    if-ne v5, v3, :cond_5

    .line 136
    return v4

    .line 139
    :cond_5
    add-int v3, v4, v5

    return v3

    .line 143
    .end local v5    # "readLenOfNext":I
    :cond_6
    return v4

    .line 104
    .end local v1    # "currentInputStream":Ljava/io/InputStream;
    .end local v2    # "bufArray":[B
    .end local v4    # "readLen":I
    :cond_7
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDataOffset()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readArchive(JLjava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method


# virtual methods
.method protected read(JLjava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "pos"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entryOffset:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v2

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    .line 73
    return v4

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entryOffset:J

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p0, v0, v1, p3, v2}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readSparse(JLjava/nio/ByteBuffer;I)I

    move-result v0

    .local v0, "totalRead":I
    goto :goto_0

    .line 80
    .end local v0    # "totalRead":I
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->readArchive(JLjava/nio/ByteBuffer;)I

    move-result v0

    .line 83
    .restart local v0    # "totalRead":I
    :goto_0
    if-ne v0, v4, :cond_3

    .line 84
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_2

    .line 87
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->this$0:Lorg/apache/commons/compress/archivers/tar/TarFile;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarFile;->setAtEOF(Z)V

    goto :goto_1

    .line 85
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Truncated TAR archive"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_3
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entryOffset:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarFile$BoundedTarEntryInputStream;->entryOffset:J

    .line 90
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    :goto_1
    return v0
.end method

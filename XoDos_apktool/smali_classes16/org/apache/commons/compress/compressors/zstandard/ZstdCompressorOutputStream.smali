.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "ZstdCompressorOutputStream.java"


# instance fields
.field private final encOS:Lcom/github/luben/zstd/ZstdOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 45
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 57
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .param p3, "closeFrameOnFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 70
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p3}, Lcom/github/luben/zstd/ZstdOutputStream;->setCloseFrameOnFlush(Z)Lcom/github/luben/zstd/ZstdOutputStream;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZZ)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .param p3, "closeFrameOnFlush"    # Z
    .param p4, "useChecksum"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 85
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    .line 86
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p3}, Lcom/github/luben/zstd/ZstdOutputStream;->setCloseFrameOnFlush(Z)Lcom/github/luben/zstd/ZstdOutputStream;

    .line 87
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p4}, Lcom/github/luben/zstd/ZstdOutputStream;->setChecksum(Z)Lcom/github/luben/zstd/ZstdOutputStream;

    .line 88
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStream;->close()V

    .line 93
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStream;->flush()V

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;->write(I)V

    .line 113
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdOutputStream;->write([BII)V

    .line 108
    return-void
.end method

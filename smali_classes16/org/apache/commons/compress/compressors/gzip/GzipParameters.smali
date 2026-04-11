.class public Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
.super Ljava/lang/Object;
.source "GzipParameters.java"


# instance fields
.field private bufferSize:I

.field private comment:Ljava/lang/String;

.field private compressionLevel:I

.field private deflateStrategy:I

.field private filename:Ljava/lang/String;

.field private modificationTime:J

.field private operatingSystem:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    .line 38
    const/16 v0, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    .line 39
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    return v0
.end method

.method public getDeflateStrategy()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationTime()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationTime:J

    return-wide v0
.end method

.method public getOperatingSystem()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    return v0
.end method

.method public setBufferSize(I)V
    .locals 3
    .param p1, "bufferSize"    # I

    .line 92
    if-lez p1, :cond_0

    .line 95
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    .line 96
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 3
    .param p1, "compressionLevel"    # I

    .line 112
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 115
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    .line 116
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid gzip compression level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeflateStrategy(I)V
    .locals 0
    .param p1, "deflateStrategy"    # I

    .line 126
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    .line 127
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->filename:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setModificationTime(J)V
    .locals 0
    .param p1, "modificationTime"    # J

    .line 144
    iput-wide p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationTime:J

    .line 145
    return-void
.end method

.method public setOperatingSystem(I)V
    .locals 0
    .param p1, "operatingSystem"    # I

    .line 171
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    .line 172
    return-void
.end method

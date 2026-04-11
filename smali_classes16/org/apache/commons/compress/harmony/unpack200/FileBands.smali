.class public Lorg/apache/commons/compress/harmony/unpack200/FileBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "FileBands.java"


# instance fields
.field private final cpUTF8:[Ljava/lang/String;

.field private fileBits:[[B

.field private fileModtime:[I

.field private fileName:[Ljava/lang/String;

.field private fileOptions:[I

.field private fileSize:[J

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 53
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->cpUTF8:[Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getFileBits()[[B
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileBits:[[B

    return-object v0
.end method

.method public getFileModtime()[I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileModtime:[I

    return-object v0
.end method

.method public getFileName()[Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileName:[Ljava/lang/String;

    return-object v0
.end method

.method public getFileOptions()[I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileOptions:[I

    return-object v0
.end method

.method public getFileSize()[J
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileSize:[J

    return-object v0
.end method

.method public processFileBits()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v0

    .line 80
    .local v0, "numberOfFiles":I
    new-array v1, v0, [[B

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileBits:[[B

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 82
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileSize:[J

    aget-wide v3, v2, v1

    long-to-int v2, v3

    .line 85
    .local v2, "size":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileBits:[[B

    new-array v4, v2, [B

    aput-object v4, v3, v1

    .line 86
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileBits:[[B

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    .line 87
    .local v3, "read":I
    if-eqz v2, :cond_1

    if-lt v3, v2, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected to read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes but read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    .end local v2    # "size":I
    .end local v3    # "read":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v0

    .line 101
    .local v0, "numberOfFiles":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v7

    .line 103
    .local v7, "options":Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->cpUTF8:[Ljava/lang/String;

    const-string v2, "file_name"

    move-object v1, p0

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileName:[Ljava/lang/String;

    .line 104
    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFileSizeHi()Z

    move-result v6

    const-string v2, "file_size"

    move-object v1, p0

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileSize:[J

    .line 105
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFileModtime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "file_modtime"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileModtime:[I

    goto :goto_0

    .line 108
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileModtime:[I

    .line 110
    :goto_0
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFileOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v1, "file_options"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileOptions:[I

    goto :goto_1

    .line 113
    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->fileOptions:[I

    .line 115
    :goto_1
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->in:Ljava/io/InputStream;

    .line 117
    return-void
.end method

.method public unpack()V
    .locals 0

    .line 122
    return-void
.end method

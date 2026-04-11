.class public Lorg/apache/commons/compress/harmony/unpack200/Archive;
.super Ljava/lang/Object;
.source "Archive.java"


# instance fields
.field private deflateHint:Z

.field private inputFileName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private logFile:Ljava/io/FileOutputStream;

.field private logLevel:I

.field private outputFileName:Ljava/lang/String;

.field private final outputStream:Ljava/util/jar/JarOutputStream;

.field private overrideDeflateHint:Z

.field private removePackFile:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/util/jar/JarOutputStream;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    .line 68
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    .line 69
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    .line 82
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputFileName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputFileName:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    .line 85
    new-instance v0, Ljava/util/jar/JarOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    .line 86
    return-void
.end method

.method private available(Ljava/io/InputStream;)Z
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 90
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 91
    .local v1, "check":I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 92
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public setDeflateHint(Z)V
    .locals 1
    .param p1, "deflateHint"    # Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->overrideDeflateHint:Z

    .line 97
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->deflateHint:Z

    .line 98
    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "logFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    .line 102
    return-void
.end method

.method public setLogFile(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "logFileName"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    .line 106
    return-void
.end method

.method public setQuiet(Z)V
    .locals 1
    .param p1, "quiet"    # Z

    .line 109
    if-nez p1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    if-nez v0, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    .line 112
    :cond_1
    return-void
.end method

.method public setRemovePackFile(Z)V
    .locals 0
    .param p1, "removePackFile"    # Z

    .line 120
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->removePackFile:Z

    .line 121
    return-void
.end method

.method public setVerbose(Z)V
    .locals 2
    .param p1, "verbose"    # Z

    .line 124
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 125
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    goto :goto_0

    .line 126
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    if-ne v1, v0, :cond_1

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    .line 129
    :cond_1
    :goto_0
    return-void
.end method

.method public unpack()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    const-string v1, "PACK200"

    invoke-virtual {v0, v1}, Ljava/util/jar/JarOutputStream;->setComment(Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    .line 142
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 146
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 147
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const v2, 0x8b1f

    if-ne v0, v2, :cond_2

    .line 148
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 149
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    goto :goto_1

    .line 151
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 153
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 154
    const/16 v0, 0xd

    const/16 v3, 0xca

    const/16 v4, 0xfe

    const/16 v5, 0xd0

    filled-new-array {v3, v4, v5, v0}, [I

    move-result-object v0

    .line 156
    .local v0, "magic":[I
    new-array v2, v2, [I

    .line 157
    .local v2, "word":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 158
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    aput v4, v2, v3

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 160
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    .line 161
    .local v3, "compressedWithE0":Z
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 162
    aget v5, v2, v4

    aget v6, v0, v4

    if-eq v5, v6, :cond_4

    .line 163
    const/4 v3, 0x1

    .line 161
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 166
    .end local v4    # "m":I
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 167
    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 169
    new-instance v1, Ljava/util/jar/JarInputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-direct {v1, v5}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 171
    .local v1, "jarInputStream":Ljava/util/jar/JarInputStream;
    :goto_4
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v5

    move-object v6, v5

    .local v6, "jarEntry":Ljava/util/jar/JarEntry;
    if-eqz v5, :cond_7

    .line 172
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v5, v6}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 173
    const/16 v5, 0x4000

    new-array v5, v5, [B

    .line 174
    .local v5, "bytes":[B
    invoke-virtual {v1, v5}, Ljava/util/jar/JarInputStream;->read([B)I

    move-result v7

    .line 175
    .local v7, "bytesRead":I
    :goto_5
    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 176
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v8, v5, v4, v7}, Ljava/util/jar/JarOutputStream;->write([BII)V

    .line 177
    invoke-virtual {v1, v5}, Ljava/util/jar/JarInputStream;->read([B)I

    move-result v8

    move v7, v8

    goto :goto_5

    .line 179
    :cond_6
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v8}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    .line 180
    .end local v5    # "bytes":[B
    .end local v7    # "bytesRead":I
    goto :goto_4

    .line 181
    .end local v1    # "jarInputStream":Ljava/util/jar/JarInputStream;
    .end local v6    # "jarEntry":Ljava/util/jar/JarEntry;
    :cond_7
    goto/16 :goto_8

    .line 182
    :cond_8
    const/4 v5, 0x0

    .line 183
    .local v5, "i":I
    :goto_6
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/harmony/unpack200/Archive;->available(Ljava/io/InputStream;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 184
    add-int/lit8 v5, v5, 0x1

    .line 185
    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-direct {v6}, Lorg/apache/commons/compress/harmony/unpack200/Segment;-><init>()V

    .line 186
    .local v6, "segment":Lorg/apache/commons/compress/harmony/unpack200/Segment;
    iget v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logLevel:I

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setLogLevel(I)V

    .line 187
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    goto :goto_7

    :cond_9
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_7
    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setLogStream(Ljava/io/OutputStream;)V

    .line 188
    invoke-virtual {v6, v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setPreRead(Z)V

    .line 190
    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unpacking from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    .line 194
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading segment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    .line 195
    iget-boolean v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->overrideDeflateHint:Z

    if-eqz v7, :cond_b

    .line 196
    iget-boolean v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->deflateHint:Z

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->overrideDeflateHint(Z)V

    .line 198
    :cond_b
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    .line 199
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v7}, Ljava/util/jar/JarOutputStream;->flush()V

    .line 201
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    instance-of v7, v7, Ljava/io/FileInputStream;

    if-eqz v7, :cond_c

    .line 202
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    check-cast v7, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v6    # "segment":Lorg/apache/commons/compress/harmony/unpack200/Segment;
    :cond_c
    goto/16 :goto_6

    .line 208
    .end local v0    # "magic":[I
    .end local v2    # "word":[I
    .end local v3    # "compressedWithE0":Z
    .end local v5    # "i":I
    :cond_d
    :goto_8
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    goto :goto_9

    .line 209
    :catch_0
    move-exception v0

    .line 212
    :goto_9
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    goto :goto_a

    .line 213
    :catch_1
    move-exception v0

    .line 215
    :goto_a
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_e

    .line 217
    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_b

    .line 218
    :catch_2
    move-exception v0

    .line 219
    :goto_b
    nop

    .line 222
    :cond_e
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->removePackFile:Z

    if-eqz v0, :cond_11

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "deleted":Z
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputFileName:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 225
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 228
    .end local v1    # "file":Ljava/io/File;
    :cond_f
    if-eqz v0, :cond_10

    goto :goto_c

    .line 229
    :cond_10
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v2, "Failed to delete the input file."

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    .end local v0    # "deleted":Z
    :cond_11
    :goto_c
    return-void

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    :try_start_4
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 210
    goto :goto_d

    .line 209
    :catch_3
    move-exception v1

    .line 212
    :goto_d
    :try_start_5
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 214
    goto :goto_e

    .line 213
    :catch_4
    move-exception v1

    .line 215
    :goto_e
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_12

    .line 217
    :try_start_6
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->logFile:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 219
    goto :goto_f

    .line 218
    :catch_5
    move-exception v1

    .line 221
    :cond_12
    :goto_f
    throw v0
.end method

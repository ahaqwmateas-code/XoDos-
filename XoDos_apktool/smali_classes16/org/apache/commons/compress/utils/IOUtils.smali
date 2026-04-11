.class public final Lorg/apache/commons/compress/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final COPY_BUF_SIZE:I = 0x1f58

.field public static final EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

.field private static final SKIP_BUF:[B

.field private static final SKIP_BUF_SIZE:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sput-object v0, Lorg/apache/commons/compress/utils/IOUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    .line 51
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 59
    if-eqz p0, :cond_0

    .line 61
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 65
    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const/16 v0, 0x1f58

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "buffersize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    .line 113
    new-array v0, p2, [B

    .line 114
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 115
    .local v1, "n":I
    const-wide/16 v2, 0x0

    .line 116
    .local v2, "count":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v1, v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_1

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 120
    :cond_0
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 122
    :cond_1
    return-wide v2

    .line 111
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    .end local v2    # "count":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffersize must be bigger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 76
    return-void
.end method

.method public static copyRange(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "len"    # J
    .param p3, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/16 v0, 0x1f58

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copyRange(Ljava/io/InputStream;JLjava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyRange(Ljava/io/InputStream;JLjava/io/OutputStream;I)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "len"    # J
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "buffersize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x1

    if-lt p4, v0, :cond_2

    .line 168
    int-to-long v0, p4

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    .line 169
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 170
    .local v1, "n":I
    const-wide/16 v2, 0x0

    .line 171
    .local v2, "count":J
    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    sub-long v4, p1, v2

    array-length v6, v0

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v1, v5

    const/4 v6, -0x1

    if-eq v6, v5, :cond_1

    .line 172
    if-eqz p3, :cond_0

    .line 173
    invoke-virtual {p3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 175
    :cond_0
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 177
    :cond_1
    return-wide v2

    .line 166
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    .end local v2    # "count":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffersize must be bigger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Ljava/io/File;[B)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 195
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 195
    :cond_0
    return v1

    .line 194
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "array":[B
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "array":[B
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

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    if-ltz p3, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p3, p2

    if-ltz v0, :cond_2

    .line 242
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 243
    .local v1, "x":I
    :goto_0
    if-eq v0, p3, :cond_1

    .line 244
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 245
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 246
    goto :goto_1

    .line 248
    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    .line 250
    :cond_1
    :goto_1
    return v0

    .line 240
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 269
    .local v0, "expectedLength":I
    const/4 v1, 0x0

    .line 270
    .local v1, "read":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 271
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 272
    .local v2, "readNow":I
    if-gtz v2, :cond_0

    .line 273
    goto :goto_1

    .line 275
    :cond_0
    add-int/2addr v1, v2

    .line 276
    .end local v2    # "readNow":I
    goto :goto_0

    .line 277
    :cond_1
    :goto_1
    if-lt v1, v0, :cond_2

    .line 280
    return-void

    .line 278
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static readRange(Ljava/io/InputStream;I)[B
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copyRange(Ljava/io/InputStream;JLjava/io/OutputStream;)J

    .line 296
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static readRange(Ljava/nio/channels/ReadableByteChannel;I)[B
    .locals 6
    .param p0, "input"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1f58

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 313
    .local v1, "b":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 314
    .local v2, "read":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 316
    sub-int v3, p1, v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 317
    invoke-interface {p0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 318
    .local v3, "readNow":I
    if-gtz v3, :cond_0

    .line 319
    goto :goto_1

    .line 321
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 322
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 323
    add-int/2addr v2, v3

    .line 324
    .end local v3    # "readNow":I
    goto :goto_0

    .line 325
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "numToSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    move-wide v0, p1

    .line 346
    .local v0, "available":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 347
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 348
    .local v4, "skipped":J
    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 349
    goto :goto_1

    .line 351
    :cond_0
    sub-long/2addr p1, v4

    .line 352
    .end local v4    # "skipped":J
    goto :goto_0

    .line 354
    :cond_1
    :goto_1
    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    .line 355
    sget-object v4, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    .line 356
    const-wide/16 v5, 0x1000

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 355
    const/4 v5, 0x0

    invoke-static {p0, v4, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 357
    .local v4, "read":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 358
    goto :goto_2

    .line 360
    :cond_2
    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 361
    .end local v4    # "read":I
    goto :goto_1

    .line 362
    :cond_3
    :goto_2
    sub-long v2, v0, p1

    return-wide v2
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 379
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 380
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.class Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;
.source "AES256SHA256Decoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;-><init>([Ljava/lang/Class;)V

    .line 90
    return-void
.end method

.method static sha256Password([BI[B)[B
    .locals 9
    .param p0, "password"    # [B
    .param p1, "numCyclesPower"    # I
    .param p2, "salt"    # [B

    .line 45
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v0, "digest":Ljava/security/MessageDigest;
    nop

    .line 49
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 50
    .local v1, "extra":[B
    const-wide/16 v2, 0x0

    .local v2, "j":J
    :goto_0
    const-wide/16 v4, 0x1

    shl-long v6, v4, p1

    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    .line 51
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_1

    .line 55
    aget-byte v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 56
    aget-byte v7, v1, v6

    if-eqz v7, :cond_0

    .line 57
    goto :goto_2

    .line 54
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 50
    .end local v6    # "k":I
    :cond_1
    :goto_2
    add-long/2addr v2, v4

    goto :goto_0

    .line 61
    .end local v2    # "j":J
    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 46
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "extra":[B
    :catch_0
    move-exception v0

    .line 47
    .local v0, "noSuchAlgorithmException":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SHA-256 is unsupported by your Java implementation"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static sha256Password([CI[B)[B
    .locals 1
    .param p0, "password"    # [C
    .param p1, "numCyclesPower"    # I
    .param p2, "salt"    # [B

    .line 65
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->sha256Password([BI[B)[B

    move-result-object v0

    return-object v0
.end method

.method static utf16Decode([C)[B
    .locals 2
    .param p0, "chars"    # [C

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    .local v0, "encoded":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 83
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 84
    .local v1, "e":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 85
    return-object v1
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;
    .locals 7
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "uncompressedLength"    # J
    .param p5, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p6, "passwordBytes"    # [B
    .param p7, "maxMemoryLimitInKb"    # I

    .line 95
    new-instance v6, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[BLjava/io/InputStream;)V

    return-object v6
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    .line 174
    .local v0, "opts":Lorg/apache/commons/compress/archivers/sevenz/AES256Options;
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;-><init>(Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;Ljava/io/OutputStream;Lorg/apache/commons/compress/archivers/sevenz/AES256Options;)V

    return-object v1
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 7
    .param p1, "options"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    .line 236
    .local v0, "opts":Lorg/apache/commons/compress/archivers/sevenz/AES256Options;
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 239
    .local v1, "props":[B
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getNumCyclesPower()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x80

    :goto_0
    or-int/2addr v3, v4

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x40

    :goto_1
    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    .line 241
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_5

    .line 243
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v4

    :goto_2
    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v4

    :goto_3
    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 246
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getSalt()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getIv()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v3, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :cond_5
    return-object v1
.end method

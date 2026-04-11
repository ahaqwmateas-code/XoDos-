.class public Lorg/apache/commons/compress/utils/ArchiveUtils;
.super Ljava/lang/Object;
.source "ArchiveUtils.java"


# static fields
.field private static final MAX_SANITIZED_NAME_LENGTH:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    return-void
.end method

.method public static isArrayZero([BI)Z
    .locals 2
    .param p0, "a"    # [B
    .param p1, "size"    # I

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 45
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x0

    return v1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isEqual([BII[BII)Z
    .locals 7
    .param p0, "buffer1"    # [B
    .param p1, "offset1"    # I
    .param p2, "length1"    # I
    .param p3, "buffer2"    # [B
    .param p4, "offset2"    # I
    .param p5, "length2"    # I

    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqual([BII[BIIZ)Z
    .locals 5
    .param p0, "buffer1"    # [B
    .param p1, "offset1"    # I
    .param p2, "length1"    # I
    .param p3, "buffer2"    # [B
    .param p4, "offset2"    # I
    .param p5, "length2"    # I
    .param p6, "ignoreTrailingNulls"    # Z

    .line 108
    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    .local v0, "minLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 110
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    add-int v4, p4, v1

    aget-byte v4, p3, v4

    if-eq v3, v4, :cond_0

    .line 111
    return v2

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    if-ne p2, p5, :cond_2

    .line 115
    return v1

    .line 117
    :cond_2
    if-eqz p6, :cond_8

    .line 118
    if-le p2, p5, :cond_5

    .line 119
    move v3, p5

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_4

    .line 120
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    if-eqz v4, :cond_3

    .line 121
    return v2

    .line 119
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_4
    goto :goto_3

    .line 125
    :cond_5
    move v3, p2

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, p5, :cond_7

    .line 126
    add-int v4, p4, v3

    aget-byte v4, p3, v4

    if-eqz v4, :cond_6

    .line 127
    return v2

    .line 125
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 131
    .end local v3    # "i":I
    :cond_7
    :goto_3
    return v1

    .line 133
    :cond_8
    return v2
.end method

.method public static isEqual([B[B)Z
    .locals 7
    .param p0, "buffer1"    # [B
    .param p1, "buffer2"    # [B

    .line 60
    array-length v2, p0

    array-length v5, p1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqual([B[BZ)Z
    .locals 7
    .param p0, "buffer1"    # [B
    .param p1, "buffer2"    # [B
    .param p2, "ignoreTrailingNulls"    # Z

    .line 72
    array-length v2, p0

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqualWithNull([BII[BII)Z
    .locals 7
    .param p0, "buffer1"    # [B
    .param p1, "offset1"    # I
    .param p2, "length1"    # I
    .param p3, "buffer2"    # [B
    .param p4, "offset2"    # I
    .param p5, "length2"    # I

    .line 150
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[B)Z
    .locals 2
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "buffer"    # [B

    .line 161
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    return v0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[BII)Z
    .locals 8
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 176
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 177
    .local v0, "buffer1":[B
    array-length v3, v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v1

    return v1
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 197
    .local v0, "cs":[C
    array-length v1, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    .line 198
    .local v1, "chars":[C
    :goto_0
    array-length v3, v0

    if-le v3, v2, :cond_1

    .line 199
    const/16 v3, 0xfc

    const/16 v4, 0x2e

    invoke-static {v1, v3, v2, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 201
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-char v5, v1, v4

    .line 203
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 204
    invoke-static {v5}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v6

    .line 205
    .local v6, "block":Ljava/lang/Character$UnicodeBlock;
    if-eqz v6, :cond_2

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    if-eq v6, v7, :cond_2

    .line 206
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    goto :goto_2

    .line 210
    .end local v6    # "block":Ljava/lang/Character$UnicodeBlock;
    :cond_2
    const/16 v6, 0x3f

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .end local v5    # "c":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toAsciiBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "inputString"    # Ljava/lang/String;

    .line 223
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "inputBytes"    # [B

    .line 233
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "inputBytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 245
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toString(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Ljava/lang/String;
    .locals 5
    .param p0, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "size":Ljava/lang/String;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    const/4 v3, 0x7

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 269
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.class public Lorg/apache/commons/compress/compressors/lz4/XXHash32;
.super Ljava/lang/Object;
.source "XXHash32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final BUF_SIZE:I = 0x10

.field private static final PRIME1:I = -0x61c8864f

.field private static final PRIME2:I = -0x7a143589

.field private static final PRIME3:I = -0x3d4d51c3

.field private static final PRIME4:I = 0x27d4eb2f

.field private static final PRIME5:I = 0x165667b1

.field private static final ROTATE_BITS:I = 0xd


# instance fields
.field private final buffer:[B

.field private final oneByte:[B

.field private pos:I

.field private final seed:I

.field private final state:[I

.field private totalLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "seed"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->oneByte:[B

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    .line 70
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->seed:I

    .line 71
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->initializeState()V

    .line 72
    return-void
.end method

.method private static getInt([BI)I
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "idx"    # I

    .line 45
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private initializeState()V
    .locals 5

    .line 106
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->seed:I

    const v2, -0x61c8864f

    add-int/2addr v1, v2

    const v3, -0x7a143589

    add-int/2addr v1, v3

    const/4 v4, 0x0

    aput v1, v0, v4

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->seed:I

    add-int/2addr v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    const/4 v1, 0x2

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->seed:I

    aput v3, v0, v1

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->seed:I

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 110
    return-void
.end method

.method private process([BI)V
    .locals 12
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 114
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 115
    .local v0, "s0":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 116
    .local v2, "s1":I
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 117
    .local v4, "s2":I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    .line 119
    .local v6, "s3":I
    invoke-static {p1, p2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    move-result v8

    const v9, -0x7a143589

    mul-int v8, v8, v9

    add-int/2addr v8, v0

    const/16 v10, 0xd

    invoke-static {v8, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    const v11, -0x61c8864f

    mul-int v8, v8, v11

    .line 120
    .end local v0    # "s0":I
    .local v8, "s0":I
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    move-result v0

    mul-int v0, v0, v9

    add-int/2addr v0, v2

    invoke-static {v0, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int v0, v0, v11

    .line 121
    .end local v2    # "s1":I
    .local v0, "s1":I
    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    move-result v2

    mul-int v2, v2, v9

    add-int/2addr v2, v4

    invoke-static {v2, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    mul-int v2, v2, v11

    .line 122
    .end local v4    # "s2":I
    .local v2, "s2":I
    add-int/lit8 v4, p2, 0xc

    invoke-static {p1, v4}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    move-result v4

    mul-int v4, v4, v9

    add-int/2addr v4, v6

    invoke-static {v4, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    mul-int v4, v4, v11

    .line 124
    .end local v6    # "s3":I
    .local v4, "s3":I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    aput v8, v6, v1

    .line 125
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    aput v0, v6, v3

    .line 126
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    aput v2, v3, v5

    .line 127
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    aput v4, v3, v7

    .line 129
    iput v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    .line 130
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 8

    .line 77
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    const/16 v1, 0x10

    const v2, 0x165667b1

    const/4 v3, 0x2

    if-le v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 79
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    aget v1, v4, v1

    .line 80
    const/4 v4, 0x7

    invoke-static {v1, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    aget v1, v1, v3

    .line 81
    const/16 v3, 0xc

    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    .line 82
    const/16 v3, 0x12

    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    .local v0, "hash":I
    goto :goto_0

    .line 84
    .end local v0    # "hash":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->state:[I

    aget v0, v0, v3

    add-int/2addr v0, v2

    .line 86
    .restart local v0    # "hash":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    add-int/2addr v0, v1

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "idx":I
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    add-int/lit8 v3, v3, -0x4

    .line 90
    .local v3, "limit":I
    :goto_1
    const v4, -0x3d4d51c3

    if-gt v1, v3, :cond_1

    .line 91
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    invoke-static {v5, v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getInt([BI)I

    move-result v5

    mul-int v5, v5, v4

    add-int/2addr v5, v0

    const/16 v4, 0x11

    invoke-static {v5, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    const v5, 0x27d4eb2f

    mul-int v0, v4, v5

    .line 90
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 93
    :cond_1
    :goto_2
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    if-ge v1, v5, :cond_2

    .line 94
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "idx":I
    .local v6, "idx":I
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    const/16 v5, 0xb

    invoke-static {v1, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    const v5, -0x61c8864f

    mul-int v0, v1, v5

    move v1, v6

    goto :goto_2

    .line 97
    .end local v6    # "idx":I
    .restart local v1    # "idx":I
    :cond_2
    ushr-int/lit8 v2, v0, 0xf

    xor-int/2addr v0, v2

    .line 98
    const v2, -0x7a143589

    mul-int v0, v0, v2

    .line 99
    ushr-int/lit8 v2, v0, 0xd

    xor-int/2addr v0, v2

    .line 100
    mul-int v0, v0, v4

    .line 101
    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v0, v2

    .line 102
    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    return-wide v4
.end method

.method public reset()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->initializeState()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    .line 136
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    .line 137
    return-void
.end method

.method public update(I)V
    .locals 3
    .param p1, "b"    # I

    .line 175
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 176
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    .line 177
    return-void
.end method

.method public update([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 141
    if-gtz p3, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->totalLen:I

    .line 146
    add-int v0, p2, p3

    .line 148
    .local v0, "end":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    add-int/2addr v1, p3

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 149
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    .line 151
    return-void

    .line 154
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    const/4 v3, 0x0

    if-lez v1, :cond_2

    .line 155
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    sub-int/2addr v2, v1

    .line 156
    .local v2, "size":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    invoke-static {p1, p2, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    invoke-direct {p0, v1, v3}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->process([BI)V

    .line 158
    add-int/2addr p2, v2

    .line 161
    .end local v2    # "size":I
    :cond_2
    add-int/lit8 v1, v0, -0x10

    .line 162
    .local v1, "limit":I
    :goto_0
    if-gt p2, v1, :cond_3

    .line 163
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->process([BI)V

    .line 164
    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    .line 167
    :cond_3
    if-ge p2, v0, :cond_4

    .line 168
    sub-int v2, v0, p2

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    .line 169
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->pos:I

    invoke-static {p1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_4
    return-void
.end method

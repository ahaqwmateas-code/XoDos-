.class public Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
.super Ljava/lang/Object;
.source "X000A_NTFS.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field public static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 79
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 80
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 110
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 112
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method private static dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 3
    .param p0, "d"    # Ljava/util/Date;

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/utils/TimeUtils;->toNtfsTime(Ljava/util/Date;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    return-object v0
.end method

.method private static fileTimeToZip(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 3
    .param p0, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/utils/TimeUtils;->toNtfsTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    return-object v0
.end method

.method private readTimeAttr([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 348
    const/16 v0, 0x1a

    if-lt p3, v0, :cond_0

    .line 349
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 350
    .local v0, "tagValueLength":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    add-int/lit8 p2, p2, 0x2

    .line 352
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 353
    add-int/lit8 p2, p2, 0x8

    .line 354
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 355
    add-int/lit8 p2, p2, 0x8

    .line 356
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 359
    .end local v0    # "tagValueLength":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .line 366
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 367
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 368
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 369
    return-void
.end method

.method private static zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;
    .locals 2
    .param p0, "z"    # Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 95
    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/TimeUtils;->ntfsTimeToDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zipToFileTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/nio/file/attribute/FileTime;
    .locals 2
    .param p0, "z"    # Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 102
    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/TimeUtils;->ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    .line 119
    .local v0, "xf":Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 120
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 121
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 119
    :goto_0
    return v1

    .line 123
    .end local v0    # "xf":Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
    :cond_1
    return v1
.end method

.method public getAccessFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToFileTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getAccessJavaTime()Ljava/util/Date;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getCreateFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToFileTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getCreateJavaTime()Ljava/util/Date;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreateTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 219
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 5

    .line 230
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    new-array v0, v0, [B

    .line 231
    .local v0, "data":[B
    const/4 v1, 0x4

    .line 232
    .local v1, "pos":I
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    add-int/2addr v1, v4

    .line 234
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_SIZE:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/2addr v1, v4

    .line 236
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    add-int/2addr v1, v4

    .line 238
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    add-int/2addr v1, v4

    .line 240
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 252
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getModifyFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToFileTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getModifyJavaTime()Ljava/util/Date;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->zipToDate(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getModifyTime()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 291
    const/16 v0, -0x7b

    .line 292
    .local v0, "hc":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 295
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 300
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x16

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 303
    :cond_2
    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->reset()V

    .line 315
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->parseFromLocalFileData([BII)V

    .line 316
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 330
    add-int v0, p2, p3

    .line 333
    .local v0, "len":I
    add-int/lit8 p2, p2, 0x4

    .line 335
    :goto_0
    add-int/lit8 v1, p2, 0x4

    if-gt v1, v0, :cond_1

    .line 336
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 337
    .local v1, "tag":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    add-int/lit8 p2, p2, 0x2

    .line 338
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->TIME_ATTR_TAG:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    sub-int v2, v0, p2

    invoke-direct {p0, p1, p2, v2}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->readTimeAttr([BII)V

    .line 340
    goto :goto_1

    .line 342
    :cond_0
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 343
    .local v2, "size":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr p2, v3

    .line 344
    .end local v1    # "tag":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .end local v2    # "size":Lorg/apache/commons/compress/archivers/zip/ZipShort;
    goto :goto_0

    .line 345
    :cond_1
    :goto_1
    return-void
.end method

.method public setAccessFileTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 378
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->fileTimeToZip(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 379
    return-void
.end method

.method public setAccessJavaTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .line 387
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 1
    .param p1, "t"    # Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 396
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 397
    return-void
.end method

.method public setCreateFileTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 406
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->fileTimeToZip(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 407
    return-void
.end method

.method public setCreateJavaTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .line 422
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 1
    .param p1, "t"    # Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 431
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 432
    return-void
.end method

.method public setModifyFileTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 441
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->fileTimeToZip(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 442
    return-void
.end method

.method public setModifyJavaTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .line 449
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->dateToZip(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    return-void
.end method

.method public setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .locals 1
    .param p1, "t"    # Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 458
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 459
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "0x000A Zip Extra Field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 472
    const-string v2, " Modify:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getModifyFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 473
    const-string v3, " Access:["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getAccessFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 474
    const-string v3, " Create:["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getCreateFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

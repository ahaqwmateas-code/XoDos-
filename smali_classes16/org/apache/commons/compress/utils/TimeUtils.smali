.class public final Lorg/apache/commons/compress/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field static final HUNDRED_NANOS_PER_MILLISECOND:J

.field static final HUNDRED_NANOS_PER_SECOND:J

.field static final WINDOWS_EPOCH_OFFSET:J = -0x19db1ded53e8000L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    sput-wide v3, Lorg/apache/commons/compress/utils/TimeUtils;->HUNDRED_NANOS_PER_MILLISECOND:J

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    div-long/2addr v0, v5

    sput-wide v0, Lorg/apache/commons/compress/utils/TimeUtils;->HUNDRED_NANOS_PER_SECOND:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method

.method public static isUnixTime(J)Z
    .locals 3
    .param p0, "seconds"    # J

    .line 77
    const-wide/32 v0, -0x80000000

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnixTime(Ljava/nio/file/attribute/FileTime;)Z
    .locals 2
    .param p0, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 67
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/utils/TimeUtils;->toUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/TimeUtils;->isUnixTime(J)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static ntfsTimeToDate(J)Ljava/util/Date;
    .locals 5
    .param p0, "ntfsTime"    # J

    .line 87
    const-wide v0, -0x19db1ded53e8000L

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/TimeUtils$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v0

    .line 88
    .local v0, "javaHundredNanos":J
    sget-wide v2, Lorg/apache/commons/compress/utils/TimeUtils;->HUNDRED_NANOS_PER_MILLISECOND:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/TimeUtils$$ExternalSyntheticBackport2;->m(JJ)J

    move-result-wide v2

    .line 89
    .local v2, "javaMillis":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v4
.end method

.method public static ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .locals 8
    .param p0, "ntfsTime"    # J

    .line 102
    const-wide v0, -0x19db1ded53e8000L

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/TimeUtils$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v0

    .line 103
    .local v0, "javaHundredsNanos":J
    sget-wide v2, Lorg/apache/commons/compress/utils/TimeUtils;->HUNDRED_NANOS_PER_SECOND:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/TimeUtils$$ExternalSyntheticBackport2;->m(JJ)J

    move-result-wide v2

    .line 104
    .local v2, "javaSeconds":J
    sget-wide v4, Lorg/apache/commons/compress/utils/TimeUtils;->HUNDRED_NANOS_PER_SECOND:J

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/compress/utils/TimeUtils$$ExternalSyntheticBackport3;->m(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long v4, v4, v6

    .line 105
    .local v4, "javaNanos":J
    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry$$ExternalSyntheticAPIConversion0;->m(Lj$/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    return-object v6
.end method

.method public static toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;
    .locals 3
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 116
    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 127
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static toNtfsTime(J)J
    .locals 4
    .param p0, "javaTime"    # J

    .line 162
    sget-wide v0, Lorg/apache/commons/compress/utils/TimeUtils;->HUNDRED_NANOS_PER_MILLISECOND:J

    mul-long v0, v0, p0

    .line 163
    .local v0, "javaHundredNanos":J
    const-wide v2, -0x19db1ded53e8000L

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/TimeUtils$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static toNtfsTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 5
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 150
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream$$ExternalSyntheticAPIConversion0;->m(Ljava/nio/file/attribute/FileTime;)Lj$/time/Instant;

    move-result-object v0

    .line 151
    .local v0, "instant":Lj$/time/Instant;
    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    sget-wide v3, Lorg/apache/commons/compress/utils/TimeUtils;->HUNDRED_NANOS_PER_SECOND:J

    mul-long v1, v1, v3

    invoke-virtual {v0}, Lj$/time/Instant;->getNano()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 152
    .local v1, "javaHundredNanos":J
    const-wide v3, -0x19db1ded53e8000L

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/compress/utils/TimeUtils$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    return-wide v3
.end method

.method public static toNtfsTime(Ljava/util/Date;)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 137
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/TimeUtils;->toNtfsTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toUnixTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 2
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 173
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static truncateToHundredNanos(Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;
    .locals 5
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 183
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream$$ExternalSyntheticAPIConversion0;->m(Ljava/nio/file/attribute/FileTime;)Lj$/time/Instant;

    move-result-object v0

    .line 184
    .local v0, "instant":Lj$/time/Instant;
    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Lj$/time/Instant;->getNano()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry$$ExternalSyntheticAPIConversion0;->m(Lj$/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    return-object v1
.end method

.method public static unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "time"    # J

    .line 194
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

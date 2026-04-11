.class Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;
.super Lorg/apache/commons/compress/utils/CountingInputStream;
.source "ZipFile.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoredStatisticsStream"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 146
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getCompressedCount()J
    .locals 2

    .line 151
    invoke-super {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;->getCompressedCount()J

    move-result-wide v0

    return-wide v0
.end method

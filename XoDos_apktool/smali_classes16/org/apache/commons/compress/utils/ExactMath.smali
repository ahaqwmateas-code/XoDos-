.class public Lorg/apache/commons/compress/utils/ExactMath;
.super Ljava/lang/Object;
.source "ExactMath.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static add(IJ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # J

    .line 39
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream$$ExternalSyntheticBackport1;->m(J)I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/ExactMath$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    return v0
.end method

.class public final synthetic Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/nio/file/attribute/FileTime;)Lj$/time/Instant;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lj$/time/TimeConversions;->convert(Ljava/time/Instant;)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

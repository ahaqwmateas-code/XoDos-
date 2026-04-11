.class public Lorg/apache/commons/compress/harmony/pack200/CPLong;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "CPLong.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPLong;",
        ">;"
    }
.end annotation


# instance fields
.field private final theLong:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "theLong"    # J

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    .line 27
    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->theLong:J

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPLong;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPLong;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPLong;)I
    .locals 4
    .param p1, "obj"    # Lorg/apache/commons/compress/harmony/pack200/CPLong;

    .line 32
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->theLong:J

    iget-wide v2, p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;->theLong:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->theLong:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->theLong:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

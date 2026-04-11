.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
.source "BCIRenumberedAttribute.java"


# instance fields
.field protected renumbered:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0
    .param p1, "attributeName"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 35
    return-void
.end method

.method static synthetic lambda$renumber$0(Ljava/util/List;[II)I
    .locals 1
    .param p0, "byteCodeOffsets"    # Ljava/util/List;
    .param p1, "startPCs"    # [I
    .param p2, "i"    # I

    .line 66
    aget v0, p1, p2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract getLength()I
.end method

.method protected abstract getStartPCs()[I
.end method

.method public hasBCIRenumbering()Z
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public renumber(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 61
    .local p1, "byteCodeOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->renumbered:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->renumbered:Z

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->getStartPCs()[I

    move-result-object v0

    .line 66
    .local v0, "startPCs":[I
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;[I)V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticAPIConversion0;->m([ILj$/util/function/IntUnaryOperator;)V

    .line 67
    return-void

    .line 62
    .end local v0    # "startPCs":[I
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Trying to renumber a line number table that has already been renumbered"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method protected abstract writeBody(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

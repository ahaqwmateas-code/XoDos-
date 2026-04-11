.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;
.source "CPUTF8.java"


# instance fields
.field private cachedHashCode:I

.field private hashCodeComputed:Z

.field private final utf8:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;-><init>(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "utf8"    # Ljava/lang/String;
    .param p2, "globalIndex"    # I

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;-><init>(BI)V

    .line 47
    const-string v0, "utf8"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->utf8:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private generateHashCode()V
    .locals 2

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCodeComputed:Z

    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, "PRIME":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->utf8:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->cachedHashCode:I

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    if-ne p0, p1, :cond_0

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 55
    return v0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 58
    return v0

    .line 60
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 61
    .local v0, "other":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->utf8:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->utf8:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCodeComputed:Z

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->generateHashCode()V

    .line 75
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->cachedHashCode:I

    return v0
.end method

.method public setGlobalIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 79
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->globalIndex:I

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF8: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->utf8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlyingString()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->utf8:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    return-void
.end method

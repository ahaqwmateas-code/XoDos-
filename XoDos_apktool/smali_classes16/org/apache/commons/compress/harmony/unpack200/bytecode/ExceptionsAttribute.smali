.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
.source "ExceptionsAttribute.java"


# static fields
.field private static attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# instance fields
.field private transient exceptionIndexes:[I

.field private final exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;


# direct methods
.method public constructor <init>([Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;)V
    .locals 1
    .param p1, "exceptions"    # [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    .line 51
    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    .line 53
    return-void
.end method

.method private static hashCode([Ljava/lang/Object;)I
    .locals 8
    .param p0, "array"    # [Ljava/lang/Object;

    .line 31
    const/16 v0, 0x1f

    .line 32
    .local v0, "prime":I
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 33
    return v1

    .line 35
    :cond_0
    const/4 v2, 0x1

    .line 36
    .local v2, "result":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 37
    .local v5, "element":Ljava/lang/Object;
    mul-int/lit8 v6, v2, 0x1f

    if-nez v5, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    add-int v2, v6, v7

    .line 36
    .end local v5    # "element":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    :cond_2
    return v2
.end method

.method public static setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0
    .param p0, "cpUTF8Value"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 43
    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 61
    return v2

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 64
    return v2

    .line 66
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;

    .line 67
    .local v1, "other":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    iget-object v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 68
    return v2

    .line 70
    :cond_3
    return v0
.end method

.method protected getLength()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 4

    .line 80
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 81
    .local v0, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    array-length v1, v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v2

    aput-object v2, v0, v1

    .line 83
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 88
    const/16 v0, 0x1f

    .line 89
    .local v0, "prime":I
    invoke-super {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->hashCode()I

    move-result v1

    .line 90
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 91
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 3
    .param p1, "pool"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 96
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptionIndexes:[I

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 100
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptionIndexes:[I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v2

    aput v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Exceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptions:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 109
    .local v4, "exception":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .end local v4    # "exception":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptionIndexes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 118
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;->exceptionIndexes:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 119
    .local v3, "element":I
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 118
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

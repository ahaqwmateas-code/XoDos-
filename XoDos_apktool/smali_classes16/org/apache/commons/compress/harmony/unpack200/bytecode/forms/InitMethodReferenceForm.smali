.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/InitMethodReferenceForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassSpecificReferenceForm;
.source "InitMethodReferenceForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rewrite"    # [I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassSpecificReferenceForm;-><init>(ILjava/lang/String;[I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract context(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)Ljava/lang/String;
.end method

.method protected getOffset(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)I
    .locals 1
    .param p1, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;

    .line 40
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextInitRef()I

    move-result v0

    return v0
.end method

.method protected getPoolID()I
    .locals 1

    .line 45
    const/16 v0, 0xb

    return v0
.end method

.method protected setNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 8
    .param p1, "byteCode"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;
    .param p2, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->globalConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    .line 52
    .local v0, "globalPool":Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    const/4 v1, 0x0

    .line 53
    .local v1, "nested":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    const/4 v2, 0x1

    new-array v3, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    int-to-long v4, p3

    .line 54
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/InitMethodReferenceForm;->context(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v0, v7, v4, v5, v6}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getInitMethodPoolEntry(IJLjava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object v1, v3

    .line 55
    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNested([Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V

    .line 56
    new-array v2, v2, [[I

    const/4 v3, 0x2

    filled-new-array {v5, v3}, [I

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNestedPositions([[I)V

    .line 57
    return-void
.end method

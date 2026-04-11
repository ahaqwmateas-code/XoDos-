.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/VariableInstructionForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;
.source "VariableInstructionForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;-><init>(ILjava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public setRewrite2Bytes(II[I)V
    .locals 4
    .param p1, "operand"    # I
    .param p2, "absPosition"    # I
    .param p3, "rewrite"    # [I

    .line 38
    const-string v0, "Trying to rewrite "

    if-ltz p2, :cond_1

    .line 42
    array-length v1, p3

    .line 44
    .local v1, "byteCodeRewriteLength":I
    add-int/lit8 v2, p2, 0x1

    if-gt v2, v1, :cond_0

    .line 49
    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    aput v0, p3, p2

    .line 50
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v2, p1, 0xff

    aput v2, p3, v0

    .line 51
    return-void

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with an int at position "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but this won\'t fit in the rewrite array"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    .end local v1    # "byteCodeRewriteLength":I
    :cond_1
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but there is no room for 4 bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRewrite4Bytes(II[I)V
    .locals 4
    .param p1, "operand"    # I
    .param p2, "absPosition"    # I
    .param p3, "rewrite"    # [I

    .line 62
    const-string v0, "Trying to rewrite "

    if-ltz p2, :cond_1

    .line 66
    array-length v1, p3

    .line 68
    .local v1, "byteCodeRewriteLength":I
    add-int/lit8 v2, p2, 0x3

    if-gt v2, v1, :cond_0

    .line 73
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x18

    aput v0, p3, p2

    .line 74
    add-int/lit8 v0, p2, 0x1

    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    aput v2, p3, v0

    .line 75
    add-int/lit8 v0, p2, 0x2

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    aput v2, p3, v0

    .line 76
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v2, p1, 0xff

    aput v2, p3, v0

    .line 77
    return-void

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with an int at position "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but this won\'t fit in the rewrite array"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    .end local v1    # "byteCodeRewriteLength":I
    :cond_1
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but there is no room for 4 bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRewrite4Bytes(I[I)V
    .locals 4
    .param p1, "operand"    # I
    .param p2, "rewrite"    # [I

    .line 93
    const/4 v0, -0x1

    .line 96
    .local v0, "firstOperandPosition":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_1

    .line 97
    aget v2, p2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    aget v2, p2, v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x3

    aget v2, p2, v2

    if-ne v2, v3, :cond_0

    .line 99
    move v0, v1

    .line 100
    goto :goto_1

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "index":I
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/VariableInstructionForm;->setRewrite4Bytes(II[I)V

    .line 104
    return-void
.end method

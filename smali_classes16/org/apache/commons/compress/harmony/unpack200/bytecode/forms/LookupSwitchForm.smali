.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;
.source "LookupSwitchForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;-><init>(ILjava/lang/String;)V

    .line 28
    return-void
.end method

.method static synthetic lambda$setByteCodeOperands$0(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 1
    .param p0, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
    .param p1, "i"    # I

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseValues()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setByteCodeOperands$1(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 1
    .param p0, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
    .param p1, "i"    # I

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result v0

    return v0
.end method


# virtual methods
.method public setByteCodeOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 18
    .param p1, "byteCode"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;
    .param p2, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
    .param p3, "codeLength"    # I

    .line 41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseCount()I

    move-result v3

    .line 42
    .local v3, "caseCount":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result v4

    .line 43
    .local v4, "defaultPc":I
    new-array v5, v3, [I

    .line 44
    .local v5, "caseValues":[I
    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v5, v6}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticAPIConversion0;->m([ILj$/util/function/IntUnaryOperator;)V

    .line 45
    new-array v6, v3, [I

    .line 46
    .local v6, "casePcs":[I
    new-instance v7, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm$$ExternalSyntheticLambda1;

    invoke-direct {v7, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v6, v7}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticAPIConversion0;->m([ILj$/util/function/IntUnaryOperator;)V

    .line 48
    add-int/lit8 v7, v3, 0x1

    new-array v7, v7, [I

    .line 49
    .local v7, "labelsArray":[I
    const/4 v8, 0x0

    aput v4, v7, v8

    .line 50
    add-int/lit8 v9, v3, 0x1

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-static {v6, v8, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-virtual {v1, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setByteCodeTargets([I)V

    .line 65
    rem-int/lit8 v9, p3, 0x4

    rsub-int/lit8 v9, v9, 0x3

    .line 66
    .local v9, "padLength":I
    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x4

    array-length v11, v5

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    array-length v11, v6

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    .line 70
    .local v10, "rewriteSize":I
    new-array v11, v10, [I

    .line 71
    .local v11, "newRewrite":[I
    const/4 v12, 0x0

    .line 75
    .local v12, "rewriteIndex":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "rewriteIndex":I
    .local v13, "rewriteIndex":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result v14

    aput v14, v11, v12

    .line 78
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    if-ge v12, v9, :cond_0

    .line 79
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "rewriteIndex":I
    .local v14, "rewriteIndex":I
    aput v8, v11, v13

    .line 78
    add-int/lit8 v12, v12, 0x1

    move v13, v14

    goto :goto_0

    .line 84
    .end local v12    # "index":I
    .end local v14    # "rewriteIndex":I
    .restart local v13    # "rewriteIndex":I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "rewriteIndex":I
    .local v12, "rewriteIndex":I
    const/4 v14, -0x1

    aput v14, v11, v13

    .line 85
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "rewriteIndex":I
    .restart local v13    # "rewriteIndex":I
    aput v14, v11, v12

    .line 86
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "rewriteIndex":I
    .restart local v12    # "rewriteIndex":I
    aput v14, v11, v13

    .line 87
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "rewriteIndex":I
    .restart local v13    # "rewriteIndex":I
    aput v14, v11, v12

    .line 90
    move v12, v13

    .line 91
    .local v12, "npairsIndex":I
    array-length v15, v5

    invoke-virtual {v0, v15, v12, v11}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;->setRewrite4Bytes(II[I)V

    .line 92
    add-int/lit8 v13, v13, 0x4

    .line 97
    array-length v15, v5

    :goto_1
    if-ge v8, v15, :cond_1

    aget v14, v5, v8

    .line 99
    .local v14, "caseValue":I
    invoke-virtual {v0, v14, v13, v11}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;->setRewrite4Bytes(II[I)V

    .line 100
    add-int/lit8 v13, v13, 0x4

    .line 102
    add-int/lit8 v17, v13, 0x1

    const/16 v16, -0x1

    .end local v13    # "rewriteIndex":I
    .local v17, "rewriteIndex":I
    aput v16, v11, v13

    .line 103
    add-int/lit8 v13, v17, 0x1

    .end local v17    # "rewriteIndex":I
    .restart local v13    # "rewriteIndex":I
    aput v16, v11, v17

    .line 104
    add-int/lit8 v17, v13, 0x1

    .end local v13    # "rewriteIndex":I
    .restart local v17    # "rewriteIndex":I
    aput v16, v11, v13

    .line 105
    add-int/lit8 v13, v17, 0x1

    .end local v17    # "rewriteIndex":I
    .restart local v13    # "rewriteIndex":I
    aput v16, v11, v17

    .line 97
    .end local v14    # "caseValue":I
    add-int/lit8 v8, v8, 0x1

    const/4 v14, -0x1

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v1, v11}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setRewrite([I)V

    .line 108
    return-void
.end method

.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;
.source "TableSwitchForm.java"


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

    .line 47
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

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseCount()I

    move-result v2

    .line 42
    .local v2, "caseCount":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result v3

    .line 43
    .local v3, "defaultPc":I
    const/4 v4, -0x1

    .line 44
    .local v4, "caseValue":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseValues()I

    move-result v4

    .line 46
    new-array v5, v2, [I

    .line 47
    .local v5, "casePcs":[I
    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm$$ExternalSyntheticLambda0;

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v5, v6}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticAPIConversion0;->m([ILj$/util/function/IntUnaryOperator;)V

    .line 49
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [I

    .line 50
    .local v6, "labelsArray":[I
    const/4 v8, 0x0

    aput v3, v6, v8

    .line 51
    add-int/lit8 v9, v2, 0x1

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-static {v5, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    invoke-virtual {v1, v6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setByteCodeTargets([I)V

    .line 54
    move v9, v4

    .line 55
    .local v9, "lowValue":I
    add-int v11, v9, v2

    sub-int/2addr v11, v10

    .line 68
    .local v11, "highValue":I
    rem-int/lit8 v10, p3, 0x4

    rsub-int/lit8 v10, v10, 0x3

    .line 69
    .local v10, "padLength":I
    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v12, v12, 0x4

    array-length v13, v5

    mul-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    .line 74
    .local v12, "rewriteSize":I
    new-array v13, v12, [I

    .line 75
    .local v13, "newRewrite":[I
    const/4 v14, 0x0

    .line 79
    .local v14, "rewriteIndex":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "rewriteIndex":I
    .local v15, "rewriteIndex":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result v16

    aput v16, v13, v14

    .line 82
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_0
    if-ge v14, v10, :cond_0

    .line 83
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "rewriteIndex":I
    .local v16, "rewriteIndex":I
    aput v8, v13, v15

    .line 82
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    goto :goto_0

    .line 88
    .end local v14    # "index":I
    .end local v16    # "rewriteIndex":I
    .restart local v15    # "rewriteIndex":I
    :cond_0
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "rewriteIndex":I
    .local v8, "rewriteIndex":I
    const/4 v14, -0x1

    aput v14, v13, v15

    .line 89
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "rewriteIndex":I
    .restart local v15    # "rewriteIndex":I
    aput v14, v13, v8

    .line 90
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "rewriteIndex":I
    .restart local v8    # "rewriteIndex":I
    aput v14, v13, v15

    .line 91
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "rewriteIndex":I
    .restart local v15    # "rewriteIndex":I
    aput v14, v13, v8

    .line 94
    move v8, v15

    .line 95
    .local v8, "lowbyteIndex":I
    invoke-virtual {v0, v9, v8, v13}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;->setRewrite4Bytes(II[I)V

    .line 96
    add-int/lit8 v15, v15, 0x4

    .line 99
    move/from16 v16, v15

    .line 100
    .local v16, "highbyteIndex":I
    move/from16 v14, v16

    .end local v16    # "highbyteIndex":I
    .local v14, "highbyteIndex":I
    invoke-virtual {v0, v11, v14, v13}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;->setRewrite4Bytes(II[I)V

    .line 101
    add-int/lit8 v15, v15, 0x4

    .line 105
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "index":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 107
    add-int/lit8 v16, v15, 0x1

    const/16 v17, -0x1

    .end local v15    # "rewriteIndex":I
    .local v16, "rewriteIndex":I
    aput v17, v13, v15

    .line 108
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "rewriteIndex":I
    .restart local v15    # "rewriteIndex":I
    aput v17, v13, v16

    .line 109
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "rewriteIndex":I
    .restart local v16    # "rewriteIndex":I
    aput v17, v13, v15

    .line 110
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "rewriteIndex":I
    .restart local v15    # "rewriteIndex":I
    aput v17, v13, v16

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "index":I
    :cond_1
    invoke-virtual {v1, v13}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setRewrite([I)V

    .line 113
    return-void
.end method

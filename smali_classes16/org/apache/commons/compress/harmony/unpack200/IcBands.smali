.class public Lorg/apache/commons/compress/harmony/unpack200/IcBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "IcBands.java"


# instance fields
.field private final cpClass:[Ljava/lang/String;

.field private final cpUTF8:[Ljava/lang/String;

.field private icAll:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

.field private outerClassToTuples:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            ">;>;"
        }
    .end annotation
.end field

.field private thisClassToTuple:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 54
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->cpClass:[Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->cpUTF8:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic lambda$getRelevantIcTuples$0(Lorg/apache/commons/compress/harmony/unpack200/IcTuple;Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)I
    .locals 3
    .param p0, "arg0"    # Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .param p1, "arg1"    # Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getTupleIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    .local v0, "index1":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getTupleIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 136
    .local v1, "index2":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public getIcTuples()[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->icAll:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    return-object v0
.end method

.method public getRelevantIcTuples(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .locals 10
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cp"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    .local v0, "relevantTuplesContains":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "relevantTuples":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->outerClassToTuples:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 74
    .local v2, "relevantCandidates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    if-eqz v2, :cond_0

    .line 75
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 76
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 77
    .local v4, "tuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v4    # "tuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->entries()Ljava/util/List;

    move-result-object v3

    .line 88
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;>;"
    const/4 v4, 0x0

    .local v4, "eIndex":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 89
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;

    .line 90
    .local v5, "entry":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;
    instance-of v6, v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    if-eqz v6, :cond_1

    .line 91
    move-object v6, v5

    check-cast v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    .line 92
    .local v6, "clazz":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->thisClassToTuple:Ljava/util/Map;

    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->name:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 93
    .local v7, "relevant":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    if-eqz v7, :cond_1

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 94
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v5    # "entry":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;
    .end local v6    # "clazz":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .end local v7    # "relevant":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    .end local v4    # "eIndex":I
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v4, "tuplesToScan":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v5, "tuplesToAdd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 110
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 111
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 112
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 113
    .local v7, "aRelevantTuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->thisClassToTuple:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 114
    .local v8, "relevant":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerIsAnonymous()Z

    move-result v9

    if-nez v9, :cond_3

    .line 115
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v7    # "aRelevantTuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .end local v8    # "relevant":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 119
    .end local v6    # "index":I
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 120
    const/4 v6, 0x0

    .restart local v6    # "index":I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 121
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 122
    .local v7, "tuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 123
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v7    # "tuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v6    # "index":I
    :cond_6
    goto :goto_2

    .line 133
    :cond_7
    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/IcBands$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcBands$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v6}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 139
    sget-object v6, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->EMPTY_ARRAY:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    return-object v6
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 31
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getInnerClassCount()I

    move-result v2

    .line 151
    .local v2, "innerClassCount":I
    const-string v3, "ic_this_class"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 152
    .local v3, "icThisClassInts":[I
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->cpClass:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->getReferences([I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "icThisClass":[Ljava/lang/String;
    const-string v5, "ic_flags"

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v5, v1, v6, v2}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    .line 154
    .local v5, "icFlags":[I
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([I)I

    move-result v6

    .line 155
    .local v6, "outerClasses":I
    const-string v7, "ic_outer_class"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v7, v1, v8, v6}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v7

    .line 156
    .local v7, "icOuterClassInts":[I
    new-array v8, v6, [Ljava/lang/String;

    .line 157
    .local v8, "icOuterClass":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v8

    const/4 v11, 0x0

    if-ge v9, v10, :cond_1

    .line 158
    aget v10, v7, v9

    if-nez v10, :cond_0

    .line 159
    aput-object v11, v8, v9

    goto :goto_1

    .line 161
    :cond_0
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->cpClass:[Ljava/lang/String;

    aget v11, v7, v9

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 157
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 164
    .end local v9    # "i":I
    :cond_1
    const-string v9, "ic_name"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v9, v1, v10, v6}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v9

    .line 165
    .local v9, "icNameInts":[I
    new-array v10, v6, [Ljava/lang/String;

    .line 166
    .local v10, "icName":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v13, v10

    if-ge v12, v13, :cond_3

    .line 167
    aget v13, v9, v12

    if-nez v13, :cond_2

    .line 168
    aput-object v11, v10, v12

    goto :goto_3

    .line 170
    :cond_2
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->cpUTF8:[Ljava/lang/String;

    aget v14, v9, v12

    add-int/lit8 v14, v14, -0x1

    aget-object v13, v13, v14

    aput-object v13, v10, v12

    .line 166
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 175
    .end local v12    # "i":I
    :cond_3
    array-length v11, v4

    new-array v11, v11, [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->icAll:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 176
    const/4 v11, 0x0

    .line 177
    .local v11, "index":I
    const/4 v12, 0x0

    move v15, v12

    .local v15, "i":I
    :goto_4
    array-length v12, v4

    if-ge v15, v12, :cond_5

    .line 178
    aget-object v21, v4, v15

    .line 179
    .local v21, "icTupleC":Ljava/lang/String;
    aget v22, v5, v15

    .line 180
    .local v22, "icTupleF":I
    const/4 v12, 0x0

    .line 181
    .local v12, "icTupleC2":Ljava/lang/String;
    const/4 v13, 0x0

    .line 182
    .local v13, "icTupleN":Ljava/lang/String;
    aget v23, v3, v15

    .line 183
    .local v23, "cIndex":I
    const/4 v14, -0x1

    .line 184
    .local v14, "c2Index":I
    const/16 v16, -0x1

    .line 185
    .local v16, "nIndex":I
    aget v17, v5, v15

    const/high16 v18, 0x10000

    and-int v17, v17, v18

    if-eqz v17, :cond_4

    .line 186
    aget-object v12, v8, v11

    .line 187
    aget-object v13, v10, v11

    .line 188
    aget v17, v7, v11

    add-int/lit8 v14, v17, -0x1

    .line 189
    aget v17, v9, v11

    add-int/lit8 v16, v17, -0x1

    .line 190
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v16

    goto :goto_5

    .line 185
    :cond_4
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v16

    .line 192
    .end local v12    # "icTupleC2":Ljava/lang/String;
    .end local v13    # "icTupleN":Ljava/lang/String;
    .end local v14    # "c2Index":I
    .end local v16    # "nIndex":I
    .local v24, "icTupleC2":Ljava/lang/String;
    .local v25, "icTupleN":Ljava/lang/String;
    .local v26, "c2Index":I
    .local v27, "nIndex":I
    :goto_5
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->icAll:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    new-instance v28, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-object/from16 v12, v28

    move-object/from16 v13, v21

    move-object/from16 v29, v14

    move/from16 v14, v22

    move/from16 v30, v15

    .end local v15    # "i":I
    .local v30, "i":I
    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move/from16 v17, v23

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v30

    invoke-direct/range {v12 .. v20}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V

    aput-object v28, v29, v30

    .line 177
    .end local v21    # "icTupleC":Ljava/lang/String;
    .end local v22    # "icTupleF":I
    .end local v23    # "cIndex":I
    .end local v24    # "icTupleC2":Ljava/lang/String;
    .end local v25    # "icTupleN":Ljava/lang/String;
    .end local v26    # "c2Index":I
    .end local v27    # "nIndex":I
    add-int/lit8 v15, v30, 0x1

    .end local v30    # "i":I
    .restart local v15    # "i":I
    goto :goto_4

    .line 194
    .end local v15    # "i":I
    :cond_5
    return-void
.end method

.method public unpack()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->getIcTuples()[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v0

    .line 199
    .local v0, "allTuples":[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->thisClassToTuple:Ljava/util/Map;

    .line 200
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->outerClassToTuples:Ljava/util/Map;

    .line 201
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 206
    .local v3, "tuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->thisClassToTuple:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->thisClassString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 207
    .local v4, "result":Ljava/lang/Object;
    if-nez v4, :cond_4

    .line 216
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isAnonymous()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerIsAnonymous()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->nestedExplicitFlagSet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    :cond_1
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->outerClassToTuples:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 221
    .local v6, "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    if-nez v6, :cond_2

    .line 222
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 223
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->outerClassToTuples:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_2
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v3    # "tuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .end local v4    # "result":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .restart local v3    # "tuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_4
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Collision detected in <thisClassString, IcTuple> mapping. There are at least two inner clases with the same name."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    .end local v3    # "tuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_5
    return-void
.end method

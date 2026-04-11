.class public abstract Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.super Ljava/lang/Object;
.source "BandSet.java"


# instance fields
.field protected header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

.field protected segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 52
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    .line 53
    return-void
.end method

.method static synthetic lambda$getReferences$0([Ljava/lang/String;[II)Ljava/lang/String;
    .locals 1
    .param p0, "reference"    # [Ljava/lang/String;
    .param p1, "ints"    # [I
    .param p2, "i"    # I

    .line 153
    aget v0, p1, p2

    aget-object v0, p0, v0

    return-object v0
.end method


# virtual methods
.method public decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p3

    .line 74
    .local v4, "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getB()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 77
    :cond_0
    invoke-virtual {v2, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v5

    .line 78
    .local v5, "getFirst":[I
    array-length v7, v5

    if-nez v7, :cond_1

    .line 79
    return-object v5

    .line 81
    :cond_1
    const/4 v7, 0x0

    aget v8, v5, v7

    .line 82
    .local v8, "first":I
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_2

    const/16 v9, -0x100

    if-lt v8, v9, :cond_2

    if-gt v8, v10, :cond_2

    .line 84
    rsub-int/lit8 v9, v8, -0x1

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v9, v11, v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v4

    .line 85
    invoke-virtual {v4, v3, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v9

    .local v9, "band":[I
    goto :goto_0

    .line 86
    .end local v9    # "band":[I
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v9

    if-lt v8, v9, :cond_3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v9

    add-int/lit16 v9, v9, 0xff

    if-gt v8, v9, :cond_3

    .line 88
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v9

    sub-int v9, v8, v9

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v9, v11, v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v3, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v9

    .restart local v9    # "band":[I
    goto :goto_0

    .line 92
    .end local v9    # "band":[I
    :cond_3
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v2, v9, v1, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;I)[I

    move-result-object v9

    .line 99
    .restart local v9    # "band":[I
    :goto_0
    instance-of v11, v4, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz v11, :cond_a

    .line 100
    move-object v11, v4

    check-cast v11, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    .line 101
    .local v11, "popCodec":Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavoured()[I

    move-result-object v12

    invoke-virtual {v12}, [I->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 102
    .local v12, "favoured":[I
    invoke-static {v12}, Ljava/util/Arrays;->sort([I)V

    .line 103
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v9

    if-ge v13, v14, :cond_9

    .line 104
    aget v14, v9, v13

    invoke-static {v12, v14}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v14

    if-le v14, v10, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    .line 105
    .local v14, "favouredValue":Z
    :goto_2
    if-eqz v14, :cond_5

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v15

    goto :goto_3

    :cond_5
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v15

    .line 106
    .local v15, "theCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_3
    instance-of v6, v15, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz v6, :cond_7

    move-object v6, v15

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 107
    move-object v6, v15

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 108
    .local v6, "bhsd":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    move/from16 v16, v8

    .end local v8    # "first":I
    .local v16, "first":I
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v7

    .line 109
    .local v7, "cardinality":J
    :goto_4
    aget v10, v9, v13

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "getFirst":[I
    .local v17, "getFirst":[I
    .local v18, "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    int-to-long v4, v10

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v19

    cmp-long v10, v4, v19

    if-lez v10, :cond_6

    .line 110
    aget v4, v9, v13

    int-to-long v4, v4

    sub-long/2addr v4, v7

    long-to-int v5, v4

    aput v5, v9, v13

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    const/4 v10, -0x1

    goto :goto_4

    .line 112
    :cond_6
    :goto_5
    aget v4, v9, v13

    int-to-long v4, v4

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v19

    cmp-long v10, v4, v19

    if-gez v10, :cond_8

    .line 113
    aget v4, v9, v13

    invoke-static {v4, v7, v8}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v4

    aput v4, v9, v13

    goto :goto_5

    .line 106
    .end local v6    # "bhsd":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .end local v7    # "cardinality":J
    .end local v16    # "first":I
    .end local v17    # "getFirst":[I
    .end local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v5    # "getFirst":[I
    .restart local v8    # "first":I
    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move/from16 v16, v8

    .line 103
    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "getFirst":[I
    .end local v8    # "first":I
    .end local v14    # "favouredValue":Z
    .end local v15    # "theCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v16    # "first":I
    .restart local v17    # "getFirst":[I
    .restart local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    goto :goto_1

    .end local v16    # "first":I
    .end local v17    # "getFirst":[I
    .end local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v5    # "getFirst":[I
    .restart local v8    # "first":I
    :cond_9
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move/from16 v16, v8

    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "getFirst":[I
    .end local v8    # "first":I
    .restart local v16    # "first":I
    .restart local v17    # "getFirst":[I
    .restart local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    goto :goto_6

    .line 99
    .end local v11    # "popCodec":Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;
    .end local v12    # "favoured":[I
    .end local v13    # "i":I
    .end local v16    # "first":I
    .end local v17    # "getFirst":[I
    .end local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v5    # "getFirst":[I
    .restart local v8    # "first":I
    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move/from16 v16, v8

    .line 118
    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "getFirst":[I
    .end local v8    # "first":I
    .restart local v16    # "first":I
    .restart local v17    # "getFirst":[I
    .restart local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_6
    return-object v9

    .line 75
    .end local v9    # "band":[I
    .end local v16    # "first":I
    .end local v17    # "getFirst":[I
    .end local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_b
    :goto_7
    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v5

    return-object v5
.end method

.method public decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "defaultCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "counts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 134
    array-length v0, p4

    new-array v0, v0, [[I

    .line 135
    .local v0, "result":[[I
    const/4 v1, 0x0

    .line 136
    .local v1, "totalCount":I
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p4, v3

    .line 137
    .local v4, "count":I
    add-int/2addr v1, v4

    .line 136
    .end local v4    # "count":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    .line 140
    .local v2, "twoDResult":[I
    const/4 v3, 0x0

    .line 141
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 142
    aget v5, p4, v4

    new-array v5, v5, [I

    aput-object v5, v0, v4

    .line 143
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    aget-object v6, v0, v4

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 144
    aget-object v6, v0, v4

    aget v7, v2, v3

    aput v7, v6, v5

    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 143
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 141
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 148
    .end local v4    # "i":I
    :cond_2
    return-object v0
.end method

.method protected getReferences([I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "ints"    # [I
    .param p2, "reference"    # [Ljava/lang/String;

    .line 152
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 153
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;[I)V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages$$ExternalSyntheticAPIConversion0;->m([Ljava/lang/Object;Lj$/util/function/IntFunction;)V

    .line 154
    return-object v0
.end method

.method protected getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 5
    .param p1, "ints"    # [[I
    .param p2, "reference"    # [Ljava/lang/String;

    .line 158
    array-length v0, p1

    new-array v0, v0, [[Ljava/lang/String;

    .line 159
    .local v0, "result":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 160
    aget-object v2, p1, v1

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 161
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 162
    aget-object v3, v0, v1

    aget-object v4, p1, v1

    aget v4, v4, v2

    aget-object v4, p2, v4

    aput-object v4, v3, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public parseCPClassReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 171
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    .line 172
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 173
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPDescriptorReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 181
    .local v0, "cpBands":Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 182
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    .line 183
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 184
    aget v4, v1, v3

    .line 185
    .local v4, "index":I
    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v5

    aput-object v5, v2, v3

    .line 183
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "i1":I
    :cond_0
    return-object v2
.end method

.method public parseCPDoubleReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 193
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    .line 194
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 195
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDoubleValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    move-result-object v3

    aput-object v3, v1, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPFieldRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 203
    .local v0, "cpBands":Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 204
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    .line 205
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 206
    aget v4, v1, v3

    .line 207
    .local v4, "index":I
    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    move-result-object v5

    aput-object v5, v2, v3

    .line 205
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "i1":I
    :cond_0
    return-object v2
.end method

.method public parseCPFloatReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 215
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    .line 216
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 217
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFloatValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPIntReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpInt()[I

    move-result-object v0

    .line 236
    .local v0, "reference":[I
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 237
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    .line 238
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_1

    .line 239
    aget v4, v1, v3

    .line 240
    .local v4, "index":I
    if-ltz v4, :cond_0

    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 244
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIntegerValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    move-result-object v5

    aput-object v5, v2, v3

    .line 238
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .restart local v4    # "index":I
    :cond_0
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something has gone wrong during parsing references, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", array size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 246
    .end local v3    # "i1":I
    .end local v4    # "index":I
    :cond_1
    return-object v2
.end method

.method public parseCPInterfaceMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 225
    .local v0, "cpBands":Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 226
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    .line 227
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 228
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    move-result-object v4

    aput-object v4, v2, v3

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v3    # "i1":I
    :cond_0
    return-object v2
.end method

.method public parseCPLongReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpLong()[J

    move-result-object v0

    .line 252
    .local v0, "reference":[J
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 253
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    .line 254
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_1

    .line 255
    aget v4, v1, v3

    .line 256
    .local v4, "index":I
    if-ltz v4, :cond_0

    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 260
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpLongValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object v5

    aput-object v5, v2, v3

    .line 254
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    .restart local v4    # "index":I
    :cond_0
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something has gone wrong during parsing references, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", array size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    .end local v3    # "i1":I
    .end local v4    # "index":I
    :cond_1
    return-object v2
.end method

.method public parseCPMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 268
    .local v0, "cpBands":Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 269
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    .line 270
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 271
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    move-result-object v4

    aput-object v4, v2, v3

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    .end local v3    # "i1":I
    :cond_0
    return-object v2
.end method

.method public parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 278
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 279
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 280
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 281
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    aput-object v3, v1, v2

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method protected parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "counts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 288
    array-length v0, p4

    new-array v0, v0, [[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 289
    .local v0, "result":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v1, 0x0

    .line 290
    .local v1, "sum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    .line 291
    aget v3, p4, v2

    new-array v3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v3, v0, v2

    .line 292
    aget v3, p4, v2

    add-int/2addr v1, v3

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :cond_0
    new-array v2, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 295
    .local v2, "result1":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 296
    .local v3, "indices":[I
    const/4 v4, 0x0

    .local v4, "i1":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 297
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v5

    aget v6, v3, v4

    invoke-virtual {v5, v6}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v5

    aput-object v5, v2, v4

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 299
    .end local v4    # "i1":I
    :cond_1
    const/4 v4, 0x0

    .line 300
    .local v4, "pos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, p4

    if-ge v5, v6, :cond_2

    .line 301
    aget v6, p4, v5

    .line 302
    .local v6, "num":I
    new-array v7, v6, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v7, v0, v5

    .line 303
    aget-object v7, v0, v5

    const/4 v8, 0x0

    invoke-static {v2, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    add-int/2addr v4, v6

    .line 300
    .end local v6    # "num":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 306
    .end local v5    # "i":I
    :cond_2
    return-object v0
.end method

.method public parseCPStringReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 312
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    .line 313
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 314
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpStringValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 322
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 323
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 324
    aget v3, v0, v2

    .line 325
    .local v3, "index":I
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v4

    aput-object v4, v1, v2

    .line 323
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "counts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 332
    array-length v0, p4

    new-array v0, v0, [[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 333
    .local v0, "result":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v1, 0x0

    .line 334
    .local v1, "sum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    .line 335
    aget v3, p4, v2

    new-array v3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v3, v0, v2

    .line 336
    aget v3, p4, v2

    add-int/2addr v1, v3

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v2    # "i":I
    :cond_0
    new-array v2, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 339
    .local v2, "result1":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 340
    .local v3, "indices":[I
    const/4 v4, 0x0

    .local v4, "i1":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 341
    aget v5, v3, v4

    .line 342
    .local v5, "index":I
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v6

    aput-object v6, v2, v4

    .line 340
    .end local v5    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 344
    .end local v4    # "i1":I
    :cond_1
    const/4 v4, 0x0

    .line 345
    .local v4, "pos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, p4

    if-ge v5, v6, :cond_2

    .line 346
    aget v6, p4, v5

    .line 347
    .local v6, "num":I
    new-array v7, v6, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v7, v0, v5

    .line 348
    aget-object v7, v0, v5

    const/4 v8, 0x0

    invoke-static {v2, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    add-int/2addr v4, v6

    .line 345
    .end local v6    # "num":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 351
    .end local v5    # "i":I
    :cond_2
    return-object v0
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[J
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "count"    # I
    .param p4, "hiCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "loCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 356
    filled-new-array {p3}, [I

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "count"    # I
    .param p4, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "hasHi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 361
    filled-new-array {p3}, [I

    move-result-object v3

    if-eqz p5, :cond_0

    move-object v4, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v4, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "counts"    # [I
    .param p4, "hiCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "loCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    array-length v5, v3

    .line 367
    .local v5, "count":I
    if-nez v5, :cond_0

    .line 368
    const/4 v6, 0x0

    new-array v7, v6, [J

    const/4 v8, 0x1

    new-array v8, v8, [[J

    aput-object v7, v8, v6

    return-object v8

    .line 370
    :cond_0
    const/4 v6, 0x0

    .line 371
    .local v6, "sum":I
    new-array v7, v5, [[J

    .line 372
    .local v7, "result":[[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_1

    .line 373
    aget v9, v3, v8

    new-array v9, v9, [J

    aput-object v9, v7, v8

    .line 374
    aget v9, v3, v8

    add-int/2addr v6, v9

    .line 372
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 376
    .end local v8    # "i":I
    :cond_1
    const/4 v8, 0x0

    .line 378
    .local v8, "hi":[I
    if-eqz v4, :cond_2

    .line 379
    invoke-virtual {v0, v1, v2, v4, v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 381
    :cond_2
    move-object/from16 v9, p5

    invoke-virtual {v0, v1, v2, v9, v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v10

    .line 383
    .local v10, "lo":[I
    const/4 v11, 0x0

    .line 384
    .local v11, "index":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v13, v7

    if-ge v12, v13, :cond_5

    .line 385
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    aget-object v14, v7, v12

    array-length v14, v14

    if-ge v13, v14, :cond_4

    .line 386
    if-eqz v8, :cond_3

    .line 387
    aget-object v14, v7, v12

    aget v15, v8, v11

    int-to-long v0, v15

    const/16 v15, 0x20

    shl-long/2addr v0, v15

    aget v15, v10, v11

    int-to-long v2, v15

    const-wide v15, 0xffffffffL

    and-long/2addr v2, v15

    or-long/2addr v0, v2

    aput-wide v0, v14, v13

    goto :goto_3

    .line 389
    :cond_3
    aget-object v0, v7, v12

    aget v1, v10, v11

    int-to-long v1, v1

    aput-wide v1, v0, v13

    .line 391
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 385
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_2

    .line 384
    .end local v13    # "j":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_1

    .line 394
    .end local v12    # "i":I
    :cond_5
    return-object v7
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "counts"    # [I
    .param p4, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "hasHi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 399
    if-eqz p5, :cond_0

    move-object v5, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object v0

    return-object v0
.end method

.method public parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .param p5, "reference"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 419
    filled-new-array {p4}, [I

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "counts"    # [I
    .param p5, "reference"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 440
    array-length v0, p4

    .line 441
    .local v0, "count":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 442
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/lang/String;

    aput-object v2, v3, v1

    return-object v3

    .line 444
    :cond_0
    new-array v2, v0, [[Ljava/lang/String;

    .line 445
    .local v2, "result":[[Ljava/lang/String;
    const/4 v3, 0x0

    .line 446
    .local v3, "sum":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 447
    aget v5, p4, v4

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v2, v4

    .line 448
    aget v5, p4, v4

    add-int/2addr v3, v5

    .line 446
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 451
    .end local v4    # "i":I
    :cond_1
    new-array v4, v3, [Ljava/lang/String;

    .line 452
    .local v4, "result1":[Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    .line 453
    .local v5, "indices":[I
    const/4 v6, 0x0

    .local v6, "i1":I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 454
    aget v7, v5, v6

    .line 455
    .local v7, "index":I
    if-ltz v7, :cond_2

    array-length v8, p5

    if-ge v7, v8, :cond_2

    .line 459
    aget-object v8, p5, v7

    aput-object v8, v4, v6

    .line 453
    .end local v7    # "index":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 456
    .restart local v7    # "index":I
    :cond_2
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Something has gone wrong during parsing references, index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", array size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    .end local v6    # "i1":I
    .end local v7    # "index":I
    :cond_3
    const/4 v6, 0x0

    .line 463
    .local v6, "pos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v0, :cond_4

    .line 464
    aget v8, p4, v7

    .line 465
    .local v8, "num":I
    new-array v9, v8, [Ljava/lang/String;

    aput-object v9, v2, v7

    .line 466
    aget-object v9, v2, v7

    invoke-static {v4, v6, v9, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    add-int/2addr v6, v8

    .line 463
    .end local v8    # "num":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 469
    .end local v7    # "i":I
    :cond_4
    return-object v2
.end method

.method public abstract read(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public abstract unpack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 477
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->read(Ljava/io/InputStream;)V

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->unpack()V

    .line 479
    return-void
.end method

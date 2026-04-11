.class public abstract Lorg/apache/commons/compress/harmony/pack200/BandSet;
.super Ljava/lang/Object;
.source "BandSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;,
        Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    }
.end annotation


# static fields
.field private static final effortThresholds:[I


# instance fields
.field private canonicalLargest:[J

.field private canonicalSmallest:[J

.field final effort:I

.field protected final segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 182
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effortThresholds:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3e8
        0x1f4
        0x64
        0x64
        0x64
        0x64
        0x64
        0x0
    .end array-data
.end method

.method public constructor <init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V
    .locals 0
    .param p1, "effort"    # I
    .param p2, "header"    # Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    .line 199
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    .line 200
    return-void
.end method

.method private analyseBand(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "band"    # [I
    .param p3, "defaultCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 205
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;

    invoke-direct {v0, v13}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;-><init>(Lorg/apache/commons/compress/harmony/pack200/BandSet;)V

    move-object v12, v0

    .line 207
    .local v12, "results":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    iget-object v0, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->canonicalLargest:[J

    if-nez v0, :cond_0

    .line 208
    const/16 v0, 0x74

    new-array v1, v0, [J

    iput-object v1, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->canonicalLargest:[J

    .line 209
    new-array v0, v0, [J

    iput-object v0, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->canonicalSmallest:[J

    .line 210
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->canonicalLargest:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->canonicalLargest:[J

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 212
    iget-object v1, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->canonicalSmallest:[J

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_0
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;

    invoke-direct {v4, v13, v15}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;-><init>(Lorg/apache/commons/compress/harmony/pack200/BandSet;[I)V

    .line 218
    .local v4, "bandData":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;
    move-object/from16 v11, p3

    invoke-virtual {v11, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v10

    .line 219
    .local v10, "encoded":[B
    invoke-static {v12, v10}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$002(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;[B)[B

    .line 222
    array-length v0, v10

    array-length v1, v15

    add-int/lit8 v1, v1, 0x17

    iget v2, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 223
    return-object v12

    .line 227
    :cond_1
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->anyNegatives()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->access$100(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gtz v5, :cond_2

    .line 228
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v0

    invoke-static {v12, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$002(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;[B)[B

    .line 229
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-static {v12, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$202(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 230
    return-object v12

    .line 234
    :cond_2
    iget v0, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    const-string v0, "POPULATION"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 235
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->numDistinctValues()I

    move-result v6

    .line 236
    .local v6, "numDistinctValues":I
    int-to-float v0, v6

    array-length v1, v15

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 239
    .local v7, "distinctValuesAsProportion":F
    const/16 v0, 0x64

    if-lt v6, v0, :cond_3

    float-to-double v0, v7

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v5, v0, v2

    if-ltz v5, :cond_3

    iget v0, v13, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_4

    float-to-double v0, v7

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    cmpg-double v5, v0, v2

    if-gez v5, :cond_4

    .line 241
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeWithPopulationCodec(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)V

    .line 242
    invoke-direct {v13, v12}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->timeToStop(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    return-object v12

    .line 248
    .end local v6    # "numDistinctValues":I
    .end local v7    # "distinctValuesAsProportion":F
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "codecFamiliesToTry":Ljava/util/List;, "Ljava/util/List<[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;>;"
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->mainlyPositiveDeltas()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->mainlySmallDeltas()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_5
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->wellCorrelated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->mainlyPositiveDeltas()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 257
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 267
    :cond_6
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaSignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_7
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->anyNegatives()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 276
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaSignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    :cond_8
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_1
    const-string v1, "cpint"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 295
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 298
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 299
    .local v2, "family":[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v4

    move-object v3, v10

    .end local v10    # "encoded":[B
    .local v3, "encoded":[B
    move-object v10, v12

    move-object v11, v3

    move-object/from16 v16, v0

    move-object v0, v12

    .end local v12    # "results":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .local v0, "results":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .local v16, "codecFamiliesToTry":Ljava/util/List;, "Ljava/util/List<[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;>;"
    move-object v12, v2

    invoke-direct/range {v5 .. v12}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->tryCodecs(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;[B[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)V

    .line 300
    invoke-direct {v13, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->timeToStop(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 301
    goto :goto_3

    .line 303
    .end local v2    # "family":[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    :cond_a
    move-object/from16 v11, p3

    move-object v12, v0

    move-object v10, v3

    move-object/from16 v0, v16

    goto :goto_2

    .line 298
    .end local v3    # "encoded":[B
    .end local v16    # "codecFamiliesToTry":Ljava/util/List;, "Ljava/util/List<[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;>;"
    .local v0, "codecFamiliesToTry":Ljava/util/List;, "Ljava/util/List<[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;>;"
    .restart local v10    # "encoded":[B
    .restart local v12    # "results":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    :cond_b
    move-object/from16 v16, v0

    move-object v3, v10

    move-object v0, v12

    .line 305
    .end local v10    # "encoded":[B
    .end local v12    # "results":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .local v0, "results":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .restart local v3    # "encoded":[B
    .restart local v16    # "codecFamiliesToTry":Ljava/util/List;, "Ljava/util/List<[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;>;"
    :goto_3
    return-object v0
.end method

.method private encodeWithPopulationCodec(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)V
    .locals 31
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "band"    # [I
    .param p3, "defaultCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "bandData"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;
    .param p5, "results"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-static/range {p5 .. p5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$400(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)I

    move-result v4

    const/4 v5, 0x3

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$402(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;I)I

    .line 514
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->access$500(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)Ljava/util/Map;

    move-result-object v4

    .line 516
    .local v4, "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v6, "favored":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda1;

    invoke-direct {v7, v4, v6}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;Ljava/util/List;)V

    invoke-static {v4, v7}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Lj$/util/function/BiConsumer;)V

    .line 524
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    const/16 v8, 0xff

    if-le v7, v8, :cond_0

    .line 525
    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-static {v6, v7}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 528
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 529
    .local v7, "favoredToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 530
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 533
    .end local v8    # "i":I
    :cond_1
    new-instance v8, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v8}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 534
    .local v8, "unfavoured":Lorg/apache/commons/compress/harmony/pack200/IntList;
    array-length v9, v1

    new-array v9, v9, [I

    .line 535
    .local v9, "tokens":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v10, v11, :cond_3

    .line 536
    aget v11, v1, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 537
    .local v11, "favouredIndex":Ljava/lang/Integer;
    if-nez v11, :cond_2

    .line 538
    aput v12, v9, v10

    .line 539
    aget v12, v1, v10

    invoke-virtual {v8, v12}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_2

    .line 541
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v13

    aput v12, v9, v10

    .line 535
    .end local v11    # "favouredIndex":Ljava/lang/Integer;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 544
    .end local v10    # "i":I
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v13

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->integerListToArray(Ljava/util/List;)[I

    move-result-object v10

    .line 546
    .local v10, "favouredBand":[I
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v11

    .line 549
    .local v11, "unfavouredBand":[I
    const-string v14, "POPULATION"

    invoke-direct {v0, v14, v10, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->analyseBand(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;

    move-result-object v15

    .line 550
    .local v15, "favouredResults":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    invoke-direct {v0, v14, v11, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->analyseBand(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;

    move-result-object v16

    .line 552
    .local v16, "unfavouredResults":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    const/16 v17, 0x0

    .line 553
    .local v17, "tdefL":I
    const/16 v18, 0x0

    .line 554
    .local v18, "l":I
    const/16 v19, 0x0

    .line 556
    .local v19, "tokenCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v12, v20, -0x1

    .line 557
    .local v12, "k":I
    const/16 v5, 0x100

    if-ge v12, v5, :cond_4

    .line 558
    const/16 v17, 0x1

    .line 559
    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v5, v9}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v5

    move-object/from16 v26, v4

    move/from16 v0, v18

    move-object/from16 v14, v19

    .local v5, "tokensEncoded":[B
    goto/16 :goto_5

    .line 561
    .end local v5    # "tokensEncoded":[B
    :cond_4
    invoke-direct {v0, v14, v9, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->analyseBand(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;

    move-result-object v5

    .line 562
    .local v5, "tokenResults":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$200(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v14

    .line 563
    .end local v19    # "tokenCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .local v14, "tokenCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$000(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)[B

    move-result-object v19

    .line 564
    .local v19, "tokensEncoded":[B
    if-nez v14, :cond_5

    .line 565
    move-object/from16 v14, p3

    .line 567
    :cond_5
    move-object/from16 v22, v14

    check-cast v22, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v18

    .line 568
    move-object/from16 v22, v14

    check-cast v22, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getH()I

    move-result v13

    .line 569
    .local v13, "h":I
    move-object/from16 v22, v14

    check-cast v22, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getS()I

    move-result v22

    .line 570
    .local v22, "s":I
    move-object/from16 v24, v14

    check-cast v24, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getB()I

    move-result v0

    .line 571
    .local v0, "b":I
    move-object/from16 v24, v14

    check-cast v24, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v24

    .line 572
    .local v24, "d":I
    if-nez v22, :cond_8

    if-nez v24, :cond_8

    .line 573
    const/16 v25, 0x1

    .line 574
    .local v25, "canUseTDefL":Z
    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 575
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-object/from16 v26, v4

    .end local v4    # "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v26, "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    add-int/lit8 v4, v0, -0x1

    invoke-direct {v1, v4, v13}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    .line 576
    .local v1, "oneLowerB":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v27

    move v4, v0

    move-object/from16 v29, v1

    .end local v0    # "b":I
    .end local v1    # "oneLowerB":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .local v4, "b":I
    .local v29, "oneLowerB":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    int-to-long v0, v12

    cmp-long v30, v27, v0

    if-ltz v30, :cond_7

    .line 577
    const/16 v25, 0x0

    goto :goto_3

    .line 574
    .end local v26    # "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v29    # "oneLowerB":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .restart local v0    # "b":I
    .local v4, "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    move-object/from16 v26, v4

    move v4, v0

    .line 580
    .end local v0    # "b":I
    .local v4, "b":I
    .restart local v26    # "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    if-eqz v25, :cond_9

    .line 581
    sparse-switch v18, :sswitch_data_0

    goto/16 :goto_4

    .line 613
    :sswitch_0
    const/16 v17, 0xb

    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 610
    :sswitch_1
    const/16 v17, 0xa

    .line 611
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 607
    :sswitch_2
    const/16 v17, 0x9

    .line 608
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 604
    :sswitch_3
    const/16 v17, 0x8

    .line 605
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 601
    :sswitch_4
    const/16 v17, 0x7

    .line 602
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 598
    :sswitch_5
    const/16 v17, 0x6

    .line 599
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 595
    :sswitch_6
    const/16 v17, 0x5

    .line 596
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 592
    :sswitch_7
    const/16 v17, 0x4

    .line 593
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 589
    :sswitch_8
    const/16 v17, 0x3

    .line 590
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 586
    :sswitch_9
    const/16 v17, 0x2

    .line 587
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 583
    :sswitch_a
    const/16 v17, 0x1

    .line 584
    move/from16 v0, v18

    move-object/from16 v5, v19

    goto :goto_5

    .line 572
    .end local v25    # "canUseTDefL":Z
    .end local v26    # "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v0    # "b":I
    .local v4, "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    move-object/from16 v26, v4

    move v4, v0

    .line 620
    .end local v0    # "b":I
    .end local v4    # "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "tokenResults":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .end local v13    # "h":I
    .end local v22    # "s":I
    .end local v24    # "d":I
    .restart local v26    # "distinctValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    :goto_4
    move/from16 v0, v18

    move-object/from16 v5, v19

    .end local v18    # "l":I
    .end local v19    # "tokensEncoded":[B
    .local v0, "l":I
    .local v5, "tokensEncoded":[B
    :goto_5
    invoke-static {v15}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$000(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)[B

    move-result-object v1

    .line 621
    .local v1, "favouredEncoded":[B
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$000(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)[B

    move-result-object v4

    .line 622
    .local v4, "unfavouredEncoded":[B
    invoke-static {v15}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$200(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v13

    .line 623
    .local v13, "favouredCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    move-object/from16 v18, v6

    .end local v6    # "favored":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "favored":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$200(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v6

    .line 625
    .local v6, "unfavouredCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    move-object/from16 v19, v7

    if-nez v13, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    .end local v7    # "favoredToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v19, "favoredToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_6
    add-int/lit16 v7, v7, 0x8d

    mul-int/lit8 v22, v17, 0x4

    add-int v7, v7, v22

    if-nez v6, :cond_b

    const/16 v22, 0x2

    goto :goto_7

    :cond_b
    const/16 v22, 0x0

    :goto_7
    add-int v7, v7, v22

    .line 626
    .local v7, "specifier":I
    move-object/from16 v22, v8

    .end local v8    # "unfavoured":Lorg/apache/commons/compress/harmony/pack200/IntList;
    .local v22, "unfavoured":Lorg/apache/commons/compress/harmony/pack200/IntList;
    new-instance v8, Lorg/apache/commons/compress/harmony/pack200/IntList;

    move-object/from16 v23, v9

    const/4 v9, 0x3

    .end local v9    # "tokens":[I
    .local v23, "tokens":[I
    invoke-direct {v8, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>(I)V

    .line 627
    .local v8, "extraBandMetadata":Lorg/apache/commons/compress/harmony/pack200/IntList;
    const/4 v9, 0x0

    if-eqz v13, :cond_c

    .line 628
    invoke-static {v13, v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lj$/util/stream/IntStream$-CC;->of([I)Lj$/util/stream/IntStream;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v10

    .end local v10    # "favouredBand":[I
    .local v20, "favouredBand":[I
    new-instance v10, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda3;

    invoke-direct {v10, v8}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/pack200/IntList;)V

    invoke-interface {v9, v10}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    goto :goto_8

    .line 627
    .end local v20    # "favouredBand":[I
    .restart local v10    # "favouredBand":[I
    :cond_c
    move-object/from16 v20, v10

    .line 630
    .end local v10    # "favouredBand":[I
    .restart local v20    # "favouredBand":[I
    :goto_8
    if-nez v17, :cond_d

    .line 631
    const/4 v9, 0x0

    invoke-static {v14, v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v10

    invoke-static {v10}, Lj$/util/stream/IntStream$-CC;->of([I)Lj$/util/stream/IntStream;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda3;

    invoke-direct {v10, v8}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/pack200/IntList;)V

    invoke-interface {v9, v10}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    .line 633
    :cond_d
    if-eqz v6, :cond_e

    .line 634
    const/4 v9, 0x0

    invoke-static {v6, v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v9

    invoke-static {v9}, Lj$/util/stream/IntStream$-CC;->of([I)Lj$/util/stream/IntStream;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda3;

    invoke-direct {v10, v8}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/pack200/IntList;)V

    invoke-interface {v9, v10}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    .line 636
    :cond_e
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v9

    .line 637
    .local v9, "extraMetadata":[I
    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v10, v9}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v10

    .line 638
    .local v10, "extraMetadataEncoded":[B
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 639
    rsub-int/lit8 v7, v7, -0x1

    goto :goto_9

    .line 641
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v24

    add-int v7, v7, v24

    .line 643
    :goto_9
    move-object/from16 v24, v8

    .end local v8    # "extraBandMetadata":Lorg/apache/commons/compress/harmony/pack200/IntList;
    .local v24, "extraBandMetadata":Lorg/apache/commons/compress/harmony/pack200/IntList;
    filled-new-array {v7}, [I

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v8

    .line 644
    .local v8, "firstValueEncoded":[B
    array-length v2, v8

    move/from16 v25, v7

    .end local v7    # "specifier":I
    .local v25, "specifier":I
    array-length v7, v1

    add-int/2addr v2, v7

    array-length v7, v5

    add-int/2addr v2, v7

    array-length v7, v4

    add-int/2addr v2, v7

    .line 647
    .local v2, "totalBandLength":I
    array-length v7, v10

    add-int/2addr v7, v2

    move-object/from16 v27, v11

    .end local v11    # "unfavouredBand":[I
    .local v27, "unfavouredBand":[I
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$000(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)[B

    move-result-object v11

    array-length v11, v11

    if-ge v7, v11, :cond_11

    .line 648
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$600(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)I

    move-result v7

    invoke-static/range {p5 .. p5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$000(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)[B

    move-result-object v11

    array-length v11, v11

    move/from16 v28, v12

    .end local v12    # "k":I
    .local v28, "k":I
    array-length v12, v10

    add-int/2addr v12, v2

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    invoke-static {v3, v7}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$602(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;I)I

    .line 649
    new-array v7, v2, [B

    .line 650
    .local v7, "encodedBand":[B
    array-length v11, v8

    const/4 v12, 0x0

    invoke-static {v8, v12, v7, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 651
    array-length v11, v8

    move/from16 v21, v2

    .end local v2    # "totalBandLength":I
    .local v21, "totalBandLength":I
    array-length v2, v1

    invoke-static {v1, v12, v7, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    array-length v2, v8

    array-length v11, v1

    add-int/2addr v2, v11

    array-length v11, v5

    invoke-static {v5, v12, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    array-length v2, v8

    array-length v11, v1

    add-int/2addr v2, v11

    array-length v11, v5

    add-int/2addr v2, v11

    array-length v11, v4

    invoke-static {v4, v12, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    invoke-static {v3, v7}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$002(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;[B)[B

    .line 657
    invoke-static {v3, v9}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$302(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;[I)[I

    .line 658
    if-eqz v0, :cond_10

    .line 659
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-direct {v2, v13, v0, v6}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;-><init>(Lorg/apache/commons/compress/harmony/pack200/Codec;ILorg/apache/commons/compress/harmony/pack200/Codec;)V

    invoke-static {v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$202(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    goto :goto_a

    .line 661
    :cond_10
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-direct {v2, v13, v14, v6}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;-><init>(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V

    invoke-static {v3, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$202(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    goto :goto_a

    .line 647
    .end local v7    # "encodedBand":[B
    .end local v21    # "totalBandLength":I
    .end local v28    # "k":I
    .restart local v2    # "totalBandLength":I
    .restart local v12    # "k":I
    :cond_11
    move/from16 v21, v2

    move/from16 v28, v12

    .line 664
    .end local v2    # "totalBandLength":I
    .end local v12    # "k":I
    .restart local v21    # "totalBandLength":I
    .restart local v28    # "k":I
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_5
        0xc0 -> :sswitch_4
        0xe0 -> :sswitch_3
        0xf0 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xfc -> :sswitch_0
    .end sparse-switch
.end method

.method private flatten([[J)[J
    .locals 11
    .param p1, "flags"    # [[J

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "totalSize":I
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 672
    .local v4, "flag":[J
    array-length v5, v4

    add-int/2addr v0, v5

    .line 671
    .end local v4    # "flag":[J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    :cond_0
    new-array v1, v0, [J

    .line 675
    .local v1, "flatArray":[J
    const/4 v3, 0x0

    .line 676
    .local v3, "index":I
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p1, v5

    .line 677
    .local v6, "flag":[J
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget-wide v9, v6, v8

    .line 678
    .local v9, "element":J
    aput-wide v9, v1, v3

    .line 679
    nop

    .end local v9    # "element":J
    add-int/lit8 v3, v3, 0x1

    .line 677
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 676
    .end local v6    # "flag":[J
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 682
    :cond_2
    return-object v1
.end method

.method static synthetic lambda$encodeFlags$0([JI)I
    .locals 2
    .param p0, "flags"    # [J
    .param p1, "i"    # I

    .line 438
    aget-wide v0, p0, p1

    long-to-int v1, v0

    return v1
.end method

.method static synthetic lambda$encodeWithPopulationCodec$1(Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "distinctValues"    # Ljava/util/Map;
    .param p1, "favored"    # Ljava/util/List;
    .param p2, "k"    # Ljava/lang/Integer;
    .param p3, "v"    # Ljava/lang/Integer;

    .line 518
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 519
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_1
    return-void
.end method

.method static synthetic lambda$encodeWithPopulationCodec$2(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2
    .param p0, "distinctValues"    # Ljava/util/Map;
    .param p1, "arg0"    # Ljava/lang/Integer;
    .param p2, "arg1"    # Ljava/lang/Integer;

    .line 525
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private timeToStop(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)Z
    .locals 4
    .param p1, "results"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;

    .line 717
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    .line 718
    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$400(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 720
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$400(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private tryCodecs(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;[B[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "band"    # [I
    .param p3, "defaultCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "bandData"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;
    .param p5, "results"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .param p6, "encoded"    # [B
    .param p7, "potentialCodecs"    # [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 728
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 729
    .local v7, "potential":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    invoke-virtual {v7, v1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 730
    return-void

    .line 733
    :cond_0
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 734
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v10

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->access$700(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I

    move-result v8

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-ltz v8, :cond_3

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v10

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->access$800(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I

    move-result v8

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-gtz v8, :cond_3

    .line 735
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v10

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->access$100(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I

    move-result v8

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-ltz v8, :cond_3

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v10

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->access$900(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I

    move-result v8

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-gtz v8, :cond_3

    .line 737
    invoke-virtual {v7, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v8

    .line 738
    .local v8, "encoded2":[B
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$408(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)I

    .line 739
    invoke-static {v7, v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v9

    .line 740
    .local v9, "specifierEncoded":[B
    array-length v10, v3

    array-length v11, v8

    sub-int/2addr v10, v11

    array-length v11, v9

    sub-int/2addr v10, v11

    .line 741
    .local v10, "saved":I
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$600(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)I

    move-result v11

    if-le v10, v11, :cond_1

    .line 742
    invoke-static {v2, v7}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$202(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 743
    invoke-static {v2, v8}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$002(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;[B)[B

    .line 744
    invoke-static {v2, v10}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$602(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;I)I

    .line 746
    .end local v8    # "encoded2":[B
    .end local v9    # "specifierEncoded":[B
    .end local v10    # "saved":I
    :cond_1
    goto :goto_1

    .line 747
    :cond_2
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v10

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->access$100(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I

    move-result v8

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-ltz v8, :cond_3

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v10

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->access$900(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I

    move-result v8

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-gtz v8, :cond_3

    .line 748
    invoke-virtual {v7, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v8

    .line 749
    .restart local v8    # "encoded2":[B
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$408(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)I

    .line 750
    invoke-static {v7, v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v9

    .line 751
    .restart local v9    # "specifierEncoded":[B
    array-length v10, v3

    array-length v11, v8

    sub-int/2addr v10, v11

    array-length v11, v9

    sub-int/2addr v10, v11

    .line 752
    .restart local v10    # "saved":I
    invoke-static/range {p5 .. p5}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$600(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)I

    move-result v11

    if-le v10, v11, :cond_3

    .line 753
    invoke-static {v2, v7}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$202(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 754
    invoke-static {v2, v8}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$002(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;[B)[B

    .line 755
    invoke-static {v2, v10}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$602(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;I)I

    .line 758
    .end local v8    # "encoded2":[B
    .end local v9    # "specifierEncoded":[B
    .end local v10    # "saved":I
    :cond_3
    :goto_1
    move-object v8, p0

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->timeToStop(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 759
    return-void

    .line 728
    .end local v7    # "potential":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 762
    :cond_5
    move-object v8, p0

    return-void
.end method


# virtual methods
.method protected cpEntryListToArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;)[I"
        }
    .end annotation

    .line 315
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 316
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 317
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result v2

    aput v2, v0, v1

    .line 318
    aget v2, v0, v1

    if-ltz v2, :cond_0

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Index should be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method protected cpEntryOrNullListToArray(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;)[I"
        }
    .end annotation

    .line 332
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 333
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 334
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;

    .line 335
    .local v2, "cpEntry":Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    aput v3, v0, v1

    .line 336
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_2

    .line 337
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Index should be > 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    .end local v2    # "cpEntry":Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "j":I
    :cond_3
    return-object v0
.end method

.method public encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ints"    # [I
    .param p3, "defaultCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    .line 360
    .local v0, "encodedBand":[B
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    array-length v1, p2

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effortThresholds:[I

    iget v6, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    aget v5, v5, v6

    if-lt v1, v5, :cond_4

    .line 361
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->analyseBand(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;

    move-result-object v1

    .line 362
    .local v1, "results":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$200(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v5

    .line 363
    .local v5, "betterCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$000(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)[B

    move-result-object v0

    .line 364
    if-eqz v5, :cond_4

    .line 365
    instance-of v6, v5, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz v6, :cond_2

    .line 366
    invoke-static {v5, p3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v6

    .line 367
    .local v6, "specifierBand":[I
    aget v7, v6, v3

    .line 368
    .local v7, "specifier":I
    array-length v8, v6

    if-le v8, v4, :cond_0

    .line 369
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v8, v6

    if-ge v4, v8, :cond_0

    .line 370
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    aget v9, v6, v4

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->appendBandCodingSpecifier(I)V

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    sub-int/2addr v2, v7

    .end local v7    # "specifier":I
    .local v2, "specifier":I
    goto :goto_1

    .line 376
    .end local v2    # "specifier":I
    .restart local v7    # "specifier":I
    :cond_1
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v2

    add-int/2addr v2, v7

    .line 378
    .end local v7    # "specifier":I
    .restart local v2    # "specifier":I
    :goto_1
    filled-new-array {v2}, [I

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v4

    .line 379
    .local v4, "specifierEncoded":[B
    array-length v7, v4

    array-length v8, v0

    add-int/2addr v7, v8

    new-array v7, v7, [B

    .line 380
    .local v7, "band":[B
    array-length v8, v4

    invoke-static {v4, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    array-length v8, v4

    array-length v9, v0

    invoke-static {v0, v3, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    return-object v7

    .line 384
    .end local v2    # "specifier":I
    .end local v4    # "specifierEncoded":[B
    .end local v6    # "specifierBand":[I
    .end local v7    # "band":[B
    :cond_2
    instance-of v6, v5, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz v6, :cond_3

    .line 385
    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;->access$300(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;)[I

    move-result-object v2

    invoke-static {v2}, Lj$/util/stream/IntStream$-CC;->of([I)Lj$/util/stream/IntStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda4;

    invoke-direct {v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    invoke-interface {v2, v4}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    .line 386
    return-object v0

    .line 388
    :cond_3
    instance-of v6, v5, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    .line 395
    .end local v1    # "results":Lorg/apache/commons/compress/harmony/pack200/BandSet$BandAnalysisResults;
    .end local v5    # "betterCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_4
    array-length v1, p2

    if-lez v1, :cond_8

    .line 396
    if-nez v0, :cond_5

    .line 397
    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v0

    .line 399
    :cond_5
    aget v1, p2, v3

    .line 400
    .local v1, "first":I
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getB()I

    move-result v5

    if-eq v5, v4, :cond_7

    .line 401
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, -0x100

    if-lt v1, v4, :cond_6

    if-gt v1, v2, :cond_6

    .line 402
    invoke-static {p3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifierForDefaultCodec(Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v4

    sub-int/2addr v2, v4

    .line 403
    .restart local v2    # "specifier":I
    filled-new-array {v2}, [I

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v4

    .line 404
    .restart local v4    # "specifierEncoded":[B
    array-length v5, v4

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 405
    .local v5, "band":[B
    array-length v6, v4

    invoke-static {v4, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    array-length v6, v4

    array-length v7, v0

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    return-object v5

    .line 409
    .end local v2    # "specifier":I
    .end local v4    # "specifierEncoded":[B
    .end local v5    # "band":[B
    :cond_6
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v2

    if-lt v1, v2, :cond_7

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v2

    add-int/lit16 v2, v2, 0xff

    if-gt v1, v2, :cond_7

    .line 410
    invoke-static {p3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifierForDefaultCodec(Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v2

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v4

    add-int/2addr v2, v4

    .line 411
    .restart local v2    # "specifier":I
    filled-new-array {v2}, [I

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v4

    .line 412
    .restart local v4    # "specifierEncoded":[B
    array-length v5, v4

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 413
    .restart local v5    # "band":[B
    array-length v6, v4

    invoke-static {v4, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    array-length v6, v4

    array-length v7, v0

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    return-object v5

    .line 418
    .end local v2    # "specifier":I
    .end local v4    # "specifierEncoded":[B
    .end local v5    # "band":[B
    :cond_7
    return-object v0

    .line 420
    .end local v1    # "first":I
    :cond_8
    new-array v1, v3, [B

    return-object v1
.end method

.method protected encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # [J
    .param p3, "loCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "hiCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "haveHiFlags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 436
    if-nez p5, :cond_0

    .line 437
    array-length v0, p2

    new-array v0, v0, [I

    .line 438
    .local v0, "loBits":[I
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda5;-><init>([J)V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticAPIConversion0;->m([ILj$/util/function/IntUnaryOperator;)V

    .line 439
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    return-object v1

    .line 441
    .end local v0    # "loBits":[I
    :cond_0
    array-length v0, p2

    new-array v0, v0, [I

    .line 442
    .local v0, "hiBits":[I
    array-length v1, p2

    new-array v1, v1, [I

    .line 443
    .local v1, "loBits":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 444
    aget-wide v3, p2, v2

    .line 445
    .local v3, "l":J
    const/16 v5, 0x20

    shr-long v5, v3, v5

    long-to-int v6, v5

    aput v6, v0, v2

    .line 446
    long-to-int v5, v3

    aput v5, v1, v2

    .line 443
    .end local v3    # "l":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p1, v0, p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 449
    .local v2, "hi":[B
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 450
    .local v3, "lo":[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 451
    .local v4, "total":[B
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    array-length v7, v3

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    return-object v4
.end method

.method protected encodeFlags(Ljava/lang/String;[[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # [[J
    .param p3, "loCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "hiCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "haveHiFlags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 484
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->flatten([[J)[J

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public encodeScalar(ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B
    .locals 1
    .param p1, "value"    # I
    .param p2, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 496
    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode(I)[B

    move-result-object v0

    return-object v0
.end method

.method public encodeScalar([ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B
    .locals 1
    .param p1, "band"    # [I
    .param p2, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 508
    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encode([I)[B

    move-result-object v0

    return-object v0
.end method

.method protected integerListToArray(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 692
    .local p1, "integerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method protected longListToArray(Ljava/util/List;)[J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 702
    .local p1, "longList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/LongStream;->toArray()[J

    move-result-object v0

    return-object v0
.end method

.method public abstract pack(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.class public Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;
.super Lorg/apache/commons/compress/harmony/pack200/Codec;
.source "PopulationCodec.java"


# instance fields
.field private favoured:[I

.field private final favouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field private l:I

.field private tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

.field private final unfavouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Codec;ILorg/apache/commons/compress/harmony/pack200/Codec;)V
    .locals 2
    .param p1, "favouredCodec"    # Lorg/apache/commons/compress/harmony/pack200/Codec;
    .param p2, "l"    # I
    .param p3, "unfavouredCodec"    # Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Codec;-><init>()V

    .line 42
    const/16 v0, 0x100

    if-ge p2, v0, :cond_0

    if-lez p2, :cond_0

    .line 45
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 46
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->l:I

    .line 47
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->unfavouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 48
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "L must be between 1..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V
    .locals 0
    .param p1, "favouredCodec"    # Lorg/apache/commons/compress/harmony/pack200/Codec;
    .param p2, "tokenCodec"    # Lorg/apache/commons/compress/harmony/pack200/Codec;
    .param p3, "unvafouredCodec"    # Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 35
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Codec;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 37
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 38
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->unfavouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 39
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v1, "Population encoding does not work unless the number of elements are known"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/io/InputStream;J)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "last"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v1, "Population encoding does not work unless the number of elements are known"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeInts(ILjava/io/InputStream;)[I
    .locals 10
    .param p1, "n"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->lastBandLength:I

    .line 63
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favoured:[I

    .line 67
    const v1, 0x7fffffff

    .line 68
    .local v1, "smallest":I
    const/4 v2, 0x0

    .line 69
    .local v2, "last":I
    const/4 v3, 0x0

    .line 70
    .local v3, "value":I
    const/4 v4, -0x1

    .line 72
    .local v4, "k":I
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    int-to-long v6, v2

    invoke-virtual {v5, p2, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result v3

    .line 73
    const/4 v5, -0x1

    if-le v4, v5, :cond_8

    if-eq v3, v1, :cond_0

    if-ne v3, v2, :cond_8

    .line 74
    nop

    .line 87
    :cond_0
    iget v5, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->lastBandLength:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->lastBandLength:I

    .line 89
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    if-nez v5, :cond_5

    .line 90
    const/16 v5, 0x100

    if-ge v4, v5, :cond_1

    .line 91
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    goto :goto_1

    .line 94
    :cond_1
    const/4 v6, 0x1

    .line 95
    .local v6, "b":I
    const/4 v7, 0x0

    .line 96
    .local v7, "codec":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x5

    if-ge v6, v8, :cond_3

    .line 97
    new-instance v8, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget v9, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->l:I

    rsub-int v9, v9, 0x100

    invoke-direct {v8, v6, v9, v0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    move-object v7, v8

    .line 98
    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->encodes(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    iput-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 100
    nop

    .line 103
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 104
    :cond_4
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot calculate token codec from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->l:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    .end local v6    # "b":I
    .end local v7    # "codec":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    :cond_5
    :goto_1
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->lastBandLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->lastBandLength:I

    .line 110
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v0

    .line 112
    .local v0, "result":[I
    const/4 v2, 0x0

    .line 113
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, p1, :cond_7

    .line 114
    aget v6, v0, v5

    .line 115
    .local v6, "index":I
    if-nez v6, :cond_6

    .line 116
    iget v7, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->lastBandLength:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->lastBandLength:I

    .line 117
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->unfavouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    int-to-long v8, v2

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result v7

    move v2, v7

    aput v7, v0, v5

    goto :goto_3

    .line 119
    :cond_6
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favoured:[I

    add-int/lit8 v8, v6, -0x1

    aget v7, v7, v8

    aput v7, v0, v5

    .line 113
    .end local v6    # "index":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 122
    .end local v5    # "i":I
    :cond_7
    return-object v0

    .line 76
    .end local v0    # "result":[I
    :cond_8
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favoured:[I

    add-int/lit8 v4, v4, 0x1

    aput v3, v5, v4

    .line 77
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 78
    .local v5, "absoluteSmallest":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 79
    .local v6, "absoluteValue":I
    if-le v5, v6, :cond_9

    .line 80
    move v1, v3

    goto :goto_4

    .line 81
    :cond_9
    if-ne v5, v6, :cond_a

    .line 83
    move v1, v5

    .line 85
    :cond_a
    :goto_4
    move v2, v3

    goto/16 :goto_0
.end method

.method public encode(I)[B
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v1, "Population encoding does not work unless the number of elements are known"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(II)[B
    .locals 2
    .param p1, "value"    # I
    .param p2, "last"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v1, "Population encoding does not work unless the number of elements are known"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([I[I[I)[B
    .locals 8
    .param p1, "favoured"    # [I
    .param p2, "tokens"    # [I
    .param p3, "unfavoured"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 136
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 137
    .local v0, "favoured2":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget v2, p1, v2

    aput v2, v0, v1

    .line 138
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/Codec;->encode([I)[B

    move-result-object v1

    .line 139
    .local v1, "favouredEncoded":[B
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v2, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->encode([I)[B

    move-result-object v2

    .line 140
    .local v2, "tokensEncoded":[B
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->unfavouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    invoke-virtual {v3, p3}, Lorg/apache/commons/compress/harmony/pack200/Codec;->encode([I)[B

    move-result-object v3

    .line 141
    .local v3, "unfavouredEncoded":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 142
    .local v4, "band":[B
    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    array-length v5, v1

    array-length v7, v2

    invoke-static {v2, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    array-length v5, v1

    array-length v7, v2

    add-int/2addr v5, v7

    array-length v7, v3

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object v4
.end method

.method public getFavoured()[I
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favoured:[I

    return-object v0
.end method

.method public getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->favouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object v0
.end method

.method public getTokenCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->tokenCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object v0
.end method

.method public getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->unfavouredCodec:Lorg/apache/commons/compress/harmony/pack200/Codec;

    return-object v0
.end method

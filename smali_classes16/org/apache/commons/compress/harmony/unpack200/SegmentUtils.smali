.class public final Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;
.super Ljava/lang/Object;
.source "SegmentUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countArgs(Ljava/lang/String;)I
    .locals 1
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countArgs(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static countArgs(Ljava/lang/String;I)I
    .locals 8
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "widthOfLongsAndDoubles"    # I

    .line 38
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 39
    .local v0, "bra":I
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 40
    .local v1, "ket":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    if-lt v1, v0, :cond_8

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "inType":Z
    const/4 v3, 0x0

    .line 46
    .local v3, "consumingNextType":Z
    const/4 v4, 0x0

    .line 47
    .local v4, "count":I
    add-int/lit8 v5, v0, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_7

    .line 48
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 49
    .local v6, "charAt":C
    if-eqz v2, :cond_0

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    goto :goto_2

    .line 52
    :cond_0
    if-nez v2, :cond_1

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_1

    .line 53
    const/4 v2, 0x1

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 55
    :cond_1
    const/16 v7, 0x5b

    if-ne v6, v7, :cond_2

    .line 56
    const/4 v3, 0x1

    goto :goto_2

    .line 57
    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    .line 59
    :cond_3
    if-eqz v3, :cond_4

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    const/4 v3, 0x0

    goto :goto_2

    .line 62
    :cond_4
    const/16 v7, 0x44

    if-eq v6, v7, :cond_6

    const/16 v7, 0x4a

    if-ne v6, v7, :cond_5

    goto :goto_1

    .line 65
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 63
    :cond_6
    :goto_1
    add-int/2addr v4, p1

    .line 47
    .end local v6    # "charAt":C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    .end local v5    # "i":I
    :cond_7
    return v4

    .line 41
    .end local v2    # "inType":Z
    .end local v3    # "consumingNextType":Z
    .end local v4    # "count":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No arguments"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static countBit16([I)I
    .locals 5
    .param p0, "flags"    # [I

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 74
    .local v3, "flag":I
    const/high16 v4, 0x10000

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 73
    .end local v3    # "flag":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return v0
.end method

.method public static countBit16([J)I
    .locals 10
    .param p0, "flags"    # [J

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p0, v2

    .line 84
    .local v3, "flag":J
    const-wide/32 v5, 0x10000

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 83
    .end local v3    # "flag":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return v0
.end method

.method public static countBit16([[J)I
    .locals 14
    .param p0, "flags"    # [[J

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 94
    .local v4, "flag":[J
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-wide v7, v4, v6

    .line 95
    .local v7, "element":J
    const-wide/32 v9, 0x10000

    and-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 94
    .end local v7    # "element":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 93
    .end local v4    # "flag":[J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_2
    return v0
.end method

.method public static countInvokeInterfaceArgs(Ljava/lang/String;)I
    .locals 1
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countArgs(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I
    .locals 6
    .param p0, "flags"    # [J
    .param p1, "matcher"    # Lorg/apache/commons/compress/harmony/unpack200/IMatcher;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p0, v2

    .line 110
    .local v3, "flag":J
    invoke-interface {p1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/IMatcher;->matches(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 109
    .end local v3    # "flag":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return v0
.end method

.method public static countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I
    .locals 5
    .param p0, "flags"    # [[J
    .param p1, "matcher"    # Lorg/apache/commons/compress/harmony/unpack200/IMatcher;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 120
    .local v3, "flag":[J
    invoke-static {v3, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v4

    add-int/2addr v0, v4

    .line 119
    .end local v3    # "flag":[J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return v0
.end method

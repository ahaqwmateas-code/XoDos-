.class public Lcom/termux/widget/NaturalOrderComparator;
.super Ljava/lang/Object;
.source "NaturalOrderComparator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static charAt(Ljava/lang/String;I)C
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    :goto_0
    return v0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "b":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ia":I
    const/4 v3, 0x0

    .line 78
    .local v3, "ib":I
    :goto_0
    const/4 v4, 0x0

    move v5, v4

    .line 80
    .local v4, "nza":I
    .local v5, "nzb":I
    invoke-static {v0, v2}, Lcom/termux/widget/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v6

    .line 81
    .local v6, "ca":C
    invoke-static {v1, v3}, Lcom/termux/widget/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v7

    .line 84
    .local v7, "cb":C
    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    const/16 v9, 0x30

    if-nez v8, :cond_8

    if-ne v6, v9, :cond_0

    goto :goto_5

    .line 95
    :cond_0
    :goto_2
    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-nez v8, :cond_6

    if-ne v7, v9, :cond_1

    goto :goto_3

    .line 107
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/termux/widget/NaturalOrderComparator;->compareRight(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 109
    .local v8, "bias":I
    if-eqz v8, :cond_2

    .line 110
    return v8

    .line 114
    .end local v8    # "bias":I
    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 117
    invoke-static {v0, v1, v4, v5}, Lcom/termux/widget/NaturalOrderComparator;->compareEqual(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    return v8

    .line 119
    :cond_3
    if-ge v6, v7, :cond_4

    .line 120
    const/4 v8, -0x1

    return v8

    .line 122
    :cond_4
    if-le v6, v7, :cond_5

    .line 123
    const/4 v8, 0x1

    return v8

    .line 126
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_6
    :goto_3
    if-ne v7, v9, :cond_7

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 100
    :cond_7
    const/4 v5, 0x0

    .line 103
    :goto_4
    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/termux/widget/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v7

    goto :goto_2

    .line 85
    :cond_8
    :goto_5
    if-ne v6, v9, :cond_9

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 89
    :cond_9
    const/4 v4, 0x0

    .line 92
    :goto_6
    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/termux/widget/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v6

    goto :goto_1
.end method

.method private static compareEqual(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "nza"    # I
    .param p3, "nzb"    # I

    .line 140
    sub-int v0, p2, p3

    if-eqz v0, :cond_0

    .line 141
    sub-int v0, p2, p3

    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 146
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static compareRight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    .local v0, "bias":I
    const/4 v1, 0x0

    .local v1, "ia":I
    const/4 v2, 0x0

    .line 42
    .local v2, "ib":I
    :goto_0
    invoke-static {p0, v1}, Lcom/termux/widget/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v3

    .line 43
    .local v3, "ca":C
    invoke-static {p1, v2}, Lcom/termux/widget/NaturalOrderComparator;->charAt(Ljava/lang/String;I)C

    move-result v4

    .line 45
    .local v4, "cb":C
    invoke-static {v3}, Lcom/termux/widget/NaturalOrderComparator;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/termux/widget/NaturalOrderComparator;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    return v0

    .line 48
    :cond_0
    invoke-static {v3}, Lcom/termux/widget/NaturalOrderComparator;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    const/4 v5, -0x1

    return v5

    .line 51
    :cond_1
    invoke-static {v4}, Lcom/termux/widget/NaturalOrderComparator;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 52
    const/4 v5, 0x1

    return v5

    .line 54
    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 55
    return v0

    .line 58
    :cond_3
    if-nez v0, :cond_5

    .line 59
    if-ge v3, v4, :cond_4

    .line 60
    const/4 v0, -0x1

    goto :goto_1

    .line 61
    :cond_4
    if-le v3, v4, :cond_5

    .line 62
    const/4 v0, 0x1

    .line 41
    .end local v3    # "ca":C
    .end local v4    # "cb":C
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 132
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

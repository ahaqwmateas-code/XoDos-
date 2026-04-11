.class Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;
.super Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LENIENT"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;Lj$/time/format/DateTimeFormatterBuilder$1;)V

    .line 4210
    return-void
.end method

.method private isLenientChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 4218
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

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


# virtual methods
.method public match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 4241
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 4242
    .local v0, "off":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4243
    .local v1, "end":I
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4244
    .local v2, "len":I
    const/4 v3, 0x0

    .line 4245
    .local v3, "koff":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_2

    if-ge v0, v1, :cond_2

    .line 4246
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4247
    add-int/lit8 v0, v0, 0x1

    .line 4248
    goto :goto_0

    .line 4250
    :cond_0
    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->key:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "koff":I
    .local v6, "koff":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "off":I
    .local v5, "off":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v3, v0}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isEqual(CC)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4251
    return-object v4

    .line 4250
    :cond_1
    move v0, v5

    move v3, v6

    goto :goto_0

    .line 4254
    .end local v5    # "off":I
    .end local v6    # "koff":I
    .restart local v0    # "off":I
    .restart local v3    # "koff":I
    :cond_2
    if-eq v3, v2, :cond_3

    .line 4255
    return-object v4

    .line 4257
    :cond_3
    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v4, :cond_7

    if-eq v0, v1, :cond_7

    .line 4258
    move v4, v0

    .line 4259
    .local v4, "off0":I
    :goto_1
    if-ge v4, v1, :cond_4

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4260
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4262
    :cond_4
    if-ge v4, v1, :cond_7

    .line 4263
    iget-object v5, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->child:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4265
    .local v5, "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_5
    iget-char v6, v5, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v6, v7}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isEqual(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4266
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4267
    invoke-virtual {v5, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v6

    .line 4268
    .local v6, "found":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 4269
    return-object v6

    .line 4273
    .end local v6    # "found":Ljava/lang/String;
    :cond_6
    iget-object v5, v5, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4274
    if-nez v5, :cond_5

    .line 4277
    .end local v4    # "off0":I
    .end local v5    # "c":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_7
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4278
    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->value:Ljava/lang/String;

    return-object v4
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4214
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;

    invoke-direct {v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 0

    .line 4206
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object p1

    return-object p1
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;

    .line 4222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4223
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4225
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4226
    add-int/lit8 v0, v0, 0x1

    .line 4227
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4228
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4229
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4233
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4222
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4236
    .end local v0    # "i":I
    :cond_3
    return-object p1
.end method

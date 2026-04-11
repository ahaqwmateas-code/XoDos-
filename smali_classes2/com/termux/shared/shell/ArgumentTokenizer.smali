.class public abstract Lcom/termux/shared/shell/ArgumentTokenizer;
.super Ljava/lang/Object;
.source "ArgumentTokenizer.java"


# static fields
.field private static final DOUBLE_QUOTE_STATE:I = 0x3

.field private static final NORMAL_TOKEN_STATE:I = 0x1

.field private static final NO_TOKEN_STATE:I = 0x0

.field private static final SINGLE_QUOTE_STATE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static _escapeQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 202
    .local v2, "c":C
    const/16 v3, 0x5c

    if-eq v2, v3, :cond_5

    const/16 v4, 0x22

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v3, "\\n"

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 210
    :cond_1
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 212
    const-string v3, "\\t"

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 214
    :cond_2
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v3, "\\r"

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 218
    :cond_3
    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v3, "\\b"

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 222
    :cond_4
    const/16 v3, 0xc

    if-ne v2, v3, :cond_6

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v3, "\\f"

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 203
    :cond_5
    :goto_1
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 200
    .end local v2    # "c":C
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static tokenize(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "arguments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/shell/ArgumentTokenizer;->tokenize(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static tokenize(Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .param p0, "arguments"    # Ljava/lang/String;
    .param p1, "stringify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 73
    .local v0, "argList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v1, "currArg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 75
    .local v2, "escaped":Z
    const/4 v3, 0x0

    .line 76
    .local v3, "state":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 79
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x5c

    if-ge v5, v4, :cond_8

    .line 80
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 81
    .local v7, "c":C
    const/4 v8, 0x1

    if-eqz v2, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 87
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 166
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ArgumentTokenizer state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is invalid!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    :pswitch_0
    const/16 v9, 0x22

    if-ne v7, v9, :cond_1

    .line 100
    const/4 v3, 0x1

    goto :goto_3

    .line 102
    :cond_1
    if-ne v7, v6, :cond_4

    .line 104
    add-int/lit8 v5, v5, 0x1

    .line 105
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 106
    .local v10, "next":C
    if-eq v10, v9, :cond_3

    if-ne v10, v6, :cond_2

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 107
    :cond_3
    :goto_1
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .end local v10    # "next":C
    :goto_2
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    goto :goto_3

    .line 89
    :pswitch_1
    const/16 v6, 0x27

    if-ne v7, v6, :cond_5

    .line 91
    const/4 v3, 0x1

    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    goto :goto_3

    .line 141
    :pswitch_2
    sparse-switch v7, :sswitch_data_0

    .line 153
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_6

    .line 154
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    const/4 v3, 0x1

    goto :goto_3

    .line 143
    :sswitch_0
    const/4 v2, 0x1

    .line 144
    const/4 v3, 0x1

    .line 145
    goto :goto_3

    .line 147
    :sswitch_1
    const/4 v3, 0x2

    .line 148
    goto :goto_3

    .line 150
    :sswitch_2
    const/4 v3, 0x3

    .line 151
    goto :goto_3

    .line 157
    :cond_6
    if-ne v3, v8, :cond_7

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 161
    const/4 v3, 0x0

    .line 79
    .end local v7    # "c":C
    :cond_7
    :goto_3
    add-int/2addr v5, v8

    goto/16 :goto_0

    .line 172
    .end local v5    # "i":I
    :cond_8
    if-eqz v2, :cond_9

    .line 173
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 177
    :cond_9
    if-eqz v3, :cond_a

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_a
    :goto_4
    if-eqz p1, :cond_b

    .line 182
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/termux/shared/shell/ArgumentTokenizer;->_escapeQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 186
    .end local v5    # "i":I
    :cond_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

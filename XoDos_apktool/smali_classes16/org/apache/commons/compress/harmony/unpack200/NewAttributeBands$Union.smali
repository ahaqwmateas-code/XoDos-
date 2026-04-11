.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;
.super Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Union"
.end annotation


# instance fields
.field private caseCounts:[I

.field private final defaultCaseBody:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCount:I

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

.field private final unionCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;",
            ">;"
        }
    .end annotation
.end field

.field private final unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;)V"
        }
    .end annotation

    .line 439
    .local p3, "unionCases":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;>;"
    .local p4, "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;>;"
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$1;)V

    .line 440
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    .line 441
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    .line 442
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    .line 443
    return-void
.end method


# virtual methods
.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 10
    .param p1, "n"    # I
    .param p2, "attribute"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;

    .line 447
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "offset":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->access$300(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;)[I

    move-result-object v1

    .line 450
    .local v1, "tagBand":[I
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->getValue(I)I

    move-result v2

    .line 451
    .local v2, "tag":I
    const/4 v3, 0x1

    .line 452
    .local v3, "defaultCase":Z
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    .line 453
    .local v5, "unionCase":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    invoke-virtual {v5, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    const/4 v3, 0x0

    .line 455
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, p1, :cond_1

    .line 456
    aget v7, v1, v6

    invoke-virtual {v5, v7}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 457
    add-int/lit8 v0, v0, 0x1

    .line 455
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 460
    .end local v6    # "j":I
    :cond_1
    invoke-virtual {v5, v0, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    .line 462
    .end local v5    # "unionCase":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    :cond_2
    goto :goto_0

    .line 463
    :cond_3
    if-eqz v3, :cond_8

    .line 465
    const/4 v4, 0x0

    .line 466
    .local v4, "defaultOffset":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, p1, :cond_7

    .line 467
    const/4 v6, 0x0

    .line 468
    .local v6, "found":Z
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    .line 469
    .local v8, "unionCase":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    aget v9, v1, v5

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 470
    const/4 v6, 0x1

    .line 472
    .end local v8    # "unionCase":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    :cond_4
    goto :goto_3

    .line 473
    :cond_5
    if-nez v6, :cond_6

    .line 474
    add-int/lit8 v4, v4, 0x1

    .line 466
    .end local v6    # "found":Z
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 477
    .end local v5    # "j":I
    :cond_7
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    if-eqz v5, :cond_8

    .line 478
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 479
    .local v6, "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    invoke-virtual {v6, v4, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    .line 480
    .end local v6    # "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    goto :goto_4

    .line 483
    .end local v4    # "defaultOffset":I
    :cond_8
    return-void
.end method

.method public getDefaultCaseBody()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    return-object v0
.end method

.method public getUnionCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    return-object v0
.end method

.method public getUnionTag()Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    return-object v0
.end method

.method public readBands(Ljava/io/InputStream;I)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->readBands(Ljava/io/InputStream;I)V

    .line 500
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;->access$300(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;)[I

    move-result-object v0

    .line 502
    .local v0, "values":[I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->caseCounts:[I

    .line 503
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->caseCounts:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 504
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    .line 505
    .local v2, "unionCase":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    array-length v4, v0

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v0, v3

    .line 506
    .local v5, "value":I
    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 507
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->caseCounts:[I

    aget v7, v6, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v1

    .line 505
    .end local v5    # "value":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 510
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->caseCounts:[I

    aget v3, v3, v1

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->readBands(Ljava/io/InputStream;I)V

    .line 503
    .end local v2    # "unionCase":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v1    # "i":I
    :cond_2
    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_6

    aget v2, v0, v3

    .line 514
    .local v2, "value":I
    const/4 v4, 0x0

    .line 515
    .local v4, "found":Z
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    .line 516
    .local v6, "unionCase":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    invoke-virtual {v6, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->hasTag(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 517
    const/4 v4, 0x1

    .line 519
    .end local v6    # "unionCase":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    :cond_3
    goto :goto_3

    .line 520
    :cond_4
    if-nez v4, :cond_5

    .line 521
    iget v5, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCount:I

    .line 513
    .end local v2    # "value":I
    .end local v4    # "found":Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 524
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 525
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 526
    .local v2, "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;->defaultCount:I

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->readBands(Ljava/io/InputStream;I)V

    .line 527
    .end local v2    # "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    goto :goto_4

    .line 529
    :cond_7
    return-void
.end method

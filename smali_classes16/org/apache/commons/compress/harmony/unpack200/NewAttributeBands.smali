.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;,
        Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    }
.end annotation


# instance fields
.field private final attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

.field protected attributeLayoutElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field private backwardsCallCount:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V
    .locals 1
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/unpack200/Segment;
    .param p2, "attributeLayout"    # Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 590
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 591
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseLayout()V

    .line 592
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->backwardsCallCount:I

    invoke-virtual {p2, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->setBackwardsCallCount(I)V

    .line 593
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    .line 46
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    .param p1, "x1"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    move-result-object v0

    return-object v0
.end method

.method private getOneAttribute(ILjava/util/List;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;",
            ">;)",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;"
        }
    .end annotation

    .line 630
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;>;"
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 631
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    .line 632
    .local v0, "attribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 633
    .local v2, "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    invoke-interface {v2, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    .line 634
    .end local v2    # "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    goto :goto_0

    .line 635
    :cond_0
    return-object v0
.end method

.method private getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;
    .locals 5
    .param p1, "stream"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 649
    .local v1, "foundBracket":I
    :goto_0
    if-eqz v1, :cond_4

    .line 650
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    .line 651
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 652
    goto :goto_1

    .line 654
    :cond_0
    int-to-char v3, v2

    .line 655
    .local v3, "c":C
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    .line 656
    add-int/lit8 v1, v1, 0x1

    .line 658
    :cond_1
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    .line 659
    add-int/lit8 v1, v1, -0x1

    .line 661
    :cond_2
    if-eqz v1, :cond_3

    .line 662
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    .end local v2    # "read":I
    .end local v3    # "c":C
    :cond_3
    goto :goto_0

    .line 665
    :cond_4
    :goto_1
    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private parseLayout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    if-nez v0, :cond_1

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    .line 698
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayout:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getLayout()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "stream":Ljava/io/StringReader;
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextAttributeElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 703
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->resolveCalls()V

    .line 705
    .end local v0    # "stream":Ljava/io/StringReader;
    .end local v2    # "e":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    :cond_1
    return-void
.end method

.method private readBody(Ljava/io/StringReader;)Ljava/util/List;
    .locals 3
    .param p1, "stream"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StringReader;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v0, "layoutElements":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;>;"
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    if-eqz v1, :cond_0

    .line 728
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 730
    :cond_0
    return-object v0
.end method

.method private readNextAttributeElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    .locals 3
    .param p1, "stream"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 735
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 736
    .local v0, "next":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 737
    const/4 v1, 0x0

    return-object v1

    .line 739
    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 740
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;-><init>(Ljava/util/List;)V

    return-object v1

    .line 742
    :cond_1
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 743
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    move-result-object v1

    return-object v1
.end method

.method private readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    .locals 8
    .param p1, "stream"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 748
    .local v0, "nextChar":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 749
    return-object v2

    .line 751
    :cond_0
    const/4 v1, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 822
    return-object v2

    .line 785
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "intType":Ljava/lang/String;
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 789
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v2, "unionCases":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;>;"
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNextUnionCase(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    move-result-object v3

    move-object v5, v3

    .local v5, "c":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    if-eqz v3, :cond_2

    .line 792
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 795
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 796
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 797
    const/4 v3, 0x0

    .line 798
    .local v3, "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;>;"
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 799
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v4

    int-to-char v4, v4

    .line 800
    .local v4, "next":C
    const/16 v6, 0x5d

    if-eq v4, v6, :cond_3

    .line 801
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 802
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object v3

    .line 804
    :cond_3
    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;

    invoke-direct {v6, p0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Union;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v6

    .line 762
    .end local v1    # "intType":Ljava/lang/String;
    .end local v2    # "unionCases":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;>;"
    .end local v3    # "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;>;"
    .end local v4    # "next":C
    .end local v5    # "c":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    :sswitch_1
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 763
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_4

    .line 764
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 765
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v1

    .line 767
    :cond_4
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v1

    .line 769
    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 770
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    const/16 v2, 0x53

    if-eq v1, v2, :cond_5

    .line 771
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 772
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v1

    .line 774
    :cond_5
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v1

    .line 778
    :sswitch_3
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    .line 779
    .local v1, "uintType":C
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 780
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readUpToMatchingBracket(Ljava/io/StringReader;)Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, "str":Ljava/lang/String;
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p0, v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 814
    .end local v1    # "uintType":C
    .end local v2    # "str":Ljava/lang/String;
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 815
    .local v1, "string":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    int-to-char v2, v2

    .line 816
    .local v2, "nxt":C
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    const/16 v3, 0x4e

    if-ne v2, v3, :cond_6

    .line 818
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    :cond_6
    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Reference;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v3

    .line 760
    .end local v1    # "string":Ljava/lang/StringBuilder;
    .end local v2    # "nxt":C
    :sswitch_5
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v3, Ljava/lang/String;

    int-to-char v5, v0

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v6

    int-to-char v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [C

    aput-char v5, v7, v1

    aput-char v6, v7, v4

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v2

    .line 757
    :sswitch_6
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;

    new-instance v3, Ljava/lang/String;

    int-to-char v5, v0

    new-array v4, v4, [C

    aput-char v5, v4, v1

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v2

    .line 808
    :sswitch_7
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 809
    .local v1, "number":I
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 810
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;I)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_7
        0x42 -> :sswitch_6
        0x46 -> :sswitch_5
        0x48 -> :sswitch_6
        0x49 -> :sswitch_6
        0x4b -> :sswitch_4
        0x4e -> :sswitch_3
        0x4f -> :sswitch_2
        0x50 -> :sswitch_1
        0x52 -> :sswitch_4
        0x53 -> :sswitch_5
        0x54 -> :sswitch_0
        0x56 -> :sswitch_6
    .end sparse-switch
.end method

.method private readNextUnionCase(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
    .locals 6
    .param p1, "stream"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 834
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 835
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 836
    .local v0, "next":I
    int-to-char v1, v0

    .line 837
    .local v1, "ch":C
    const/16 v2, 0x29

    if-eq v1, v2, :cond_4

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 841
    :cond_0
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 842
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 843
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;

    move-result-object v3

    .line 847
    .local v3, "nextTag":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 848
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 851
    :cond_2
    if-nez v3, :cond_1

    .line 852
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 853
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 854
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v4

    int-to-char v1, v4

    .line 855
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_3

    .line 856
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    invoke-direct {v4, p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/util/List;)V

    return-object v4

    .line 858
    :cond_3
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 859
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, p0, v2, v5}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/util/List;Ljava/util/List;)V

    return-object v4

    .line 838
    .end local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "nextTag":Ljava/lang/Integer;
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 839
    const/4 v2, 0x0

    return-object v2
.end method

.method private readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;
    .locals 8
    .param p1, "stream"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 871
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    .line 872
    .local v1, "first":C
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 873
    .local v0, "negative":Z
    :goto_0
    if-nez v0, :cond_1

    .line 874
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 876
    :cond_1
    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Ljava/io/StringReader;->mark(I)V

    .line 878
    const/4 v2, 0x0

    .line 879
    .local v2, "length":I
    :goto_1
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    move v4, v3

    .local v4, "i":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    int-to-char v3, v4

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 882
    :cond_2
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 883
    if-nez v2, :cond_3

    .line 884
    const/4 v3, 0x0

    return-object v3

    .line 886
    :cond_3
    new-array v3, v2, [C

    .line 887
    .local v3, "digits":[C
    invoke-virtual {p1, v3}, Ljava/io/StringReader;->read([C)I

    move-result v5

    .line 888
    .local v5, "read":I
    array-length v6, v3

    if-ne v5, v6, :cond_5

    .line 891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_4

    const-string v7, "-"

    goto :goto_2

    :cond_4
    const-string v7, ""

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 889
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error reading from the input stream"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private readUpToMatchingBracket(Ljava/io/StringReader;)Ljava/lang/String;
    .locals 5
    .param p1, "stream"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 904
    .local v1, "foundBracket":I
    :goto_0
    if-eqz v1, :cond_4

    .line 905
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    .line 906
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 907
    goto :goto_1

    .line 909
    :cond_0
    int-to-char v3, v2

    .line 910
    .local v3, "c":C
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    .line 911
    add-int/lit8 v1, v1, 0x1

    .line 913
    :cond_1
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    .line 914
    add-int/lit8 v1, v1, -0x1

    .line 916
    :cond_2
    if-eqz v1, :cond_3

    .line 917
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    .end local v2    # "read":I
    .end local v3    # "c":C
    :cond_3
    goto :goto_0

    .line 920
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private resolveCalls()V
    .locals 7

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "backwardsCalls":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 929
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 930
    .local v2, "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-eqz v3, :cond_1

    .line 931
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    .line 932
    .local v3, "callable":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;
    if-nez v1, :cond_0

    .line 933
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->setFirstCallable(Z)V

    .line 936
    :cond_0
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->access$400(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 938
    .local v5, "layoutElement":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    invoke-direct {p0, v1, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->resolveCallsForElement(ILorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;)I

    move-result v6

    add-int/2addr v0, v6

    .line 939
    .end local v5    # "layoutElement":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    goto :goto_1

    .line 928
    .end local v2    # "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    .end local v3    # "callable":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    .end local v1    # "i":I
    :cond_2
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->backwardsCallCount:I

    .line 943
    return-void
.end method

.method private resolveCallsForElement(ILorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;)I
    .locals 6
    .param p1, "i"    # I
    .param p2, "currentCallable"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;
    .param p3, "layoutElement"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "backwardsCalls":I
    instance-of v1, p3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;

    if-eqz v1, :cond_5

    .line 948
    move-object v1, p3

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;

    .line 949
    .local v1, "call":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;
    invoke-static {v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;->access$500(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;)I

    move-result v2

    .line 950
    .local v2, "index":I
    if-nez v2, :cond_0

    .line 951
    add-int/lit8 v0, v0, 0x1

    .line 952
    invoke-virtual {v1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)V

    goto/16 :goto_4

    .line 953
    :cond_0
    if-lez v2, :cond_3

    .line 954
    add-int/lit8 v3, p1, 0x1

    .local v3, "k":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 955
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 956
    .local v4, "el":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    instance-of v5, v4, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-eqz v5, :cond_1

    .line 957
    add-int/lit8 v2, v2, -0x1

    .line 958
    if-nez v2, :cond_1

    .line 959
    move-object v5, v4

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    invoke-virtual {v1, v5}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)V

    .line 960
    goto :goto_1

    .line 954
    .end local v4    # "el":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "k":I
    :cond_2
    :goto_1
    goto :goto_4

    .line 965
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 966
    add-int/lit8 v3, p1, -0x1

    .restart local v3    # "k":I
    :goto_2
    if-ltz v3, :cond_6

    .line 967
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 968
    .restart local v4    # "el":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    instance-of v5, v4, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-eqz v5, :cond_4

    .line 969
    add-int/lit8 v2, v2, 0x1

    .line 970
    if-nez v2, :cond_4

    .line 971
    move-object v5, v4

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    invoke-virtual {v1, v5}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;)V

    .line 972
    goto :goto_4

    .line 966
    .end local v4    # "el":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 977
    .end local v1    # "call":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Call;
    .end local v2    # "index":I
    .end local v3    # "k":I
    :cond_5
    instance-of v1, p3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;

    if-eqz v1, :cond_6

    .line 978
    move-object v1, p3

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;->access$600(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Replication;)Ljava/util/List;

    move-result-object v1

    .line 979
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 980
    .local v3, "child":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    invoke-direct {p0, p1, p2, v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->resolveCallsForElement(ILorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;)I

    move-result v4

    add-int/2addr v0, v4

    .line 981
    .end local v3    # "child":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    goto :goto_3

    .line 977
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;>;"
    :cond_6
    :goto_4
    nop

    .line 983
    :cond_7
    return v0
.end method


# virtual methods
.method public getBackwardsCallCount()I
    .locals 1

    .line 596
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->backwardsCallCount:I

    return v0
.end method

.method public getCodec(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .locals 1
    .param p1, "layoutElement"    # Ljava/lang/String;

    .line 606
    const/16 v0, 0x4f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 607
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0

    .line 609
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 610
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0

    .line 612
    :cond_1
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    const-string v0, "KS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 613
    const-string v0, "RS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 614
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->SIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0

    .line 616
    :cond_2
    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 617
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0

    .line 619
    :cond_3
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0
.end method

.method public parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "occurrenceCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 680
    .local v1, "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;->readBands(Ljava/io/InputStream;I)V

    .line 681
    .end local v1    # "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    goto :goto_0

    .line 683
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    .local v0, "attributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 685
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->getOneAttribute(ILjava/util/List;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 715
    return-void
.end method

.method public setBackwardsCalls([I)V
    .locals 5
    .param p1, "backwardsCalls"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "index":I
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseLayout()V

    .line 997
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;

    .line 998
    .local v2, "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->isBackwardsCallable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 999
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$Callable;->addCount(I)V

    .line 1000
    add-int/lit8 v0, v0, 0x1

    .line 1002
    .end local v2    # "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;
    :cond_0
    goto :goto_0

    .line 1003
    :cond_1
    return-void
.end method

.method public unpack()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1008
    return-void
.end method

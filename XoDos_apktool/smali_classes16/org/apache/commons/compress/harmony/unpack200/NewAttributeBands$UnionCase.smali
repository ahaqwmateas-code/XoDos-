.class public Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;
.super Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnionCase"
.end annotation


# instance fields
.field private body:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$1;)V

    .line 543
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->tags:Ljava/util/List;

    .line 544
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;)V"
        }
    .end annotation

    .line 546
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;>;"
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->this$0:Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$1;)V

    .line 547
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->tags:Ljava/util/List;

    .line 548
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->body:Ljava/util/List;

    .line 549
    return-void
.end method


# virtual methods
.method public addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "attribute"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;

    .line 553
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->body:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 555
    .local v1, "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->addToAttribute(ILorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;)V

    .line 556
    .end local v1    # "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    goto :goto_0

    .line 558
    :cond_0
    return-void
.end method

.method public getBody()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->body:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->body:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public hasTag(I)Z
    .locals 2
    .param p1, "i"    # I

    .line 565
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->tags:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTag(J)Z
    .locals 2
    .param p1, "l"    # J

    .line 569
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->tags:Ljava/util/List;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readBands(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->body:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$UnionCase;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;

    .line 576
    .local v1, "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;->readBands(Ljava/io/InputStream;I)V

    .line 577
    .end local v1    # "element":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
    goto :goto_0

    .line 579
    :cond_0
    return-void
.end method

.class public Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;
.super Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Replication"
.end annotation


# instance fields
.field private final countElement:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

.field private final layoutElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)V

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->layoutElements:Ljava/util/List;

    .line 354
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->countElement:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    .line 355
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "stream":Ljava/io/StringReader;
    :goto_0
    invoke-static {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$400(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->layoutElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;

    .line 347
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->layoutElements:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "attribute"    # Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 364
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->countElement:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V

    .line 365
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->countElement:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->latestValue()I

    move-result v0

    .line 366
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 367
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->layoutElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 368
    .local v3, "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    invoke-interface {v3, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;->addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V

    .line 369
    .end local v3    # "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    goto :goto_1

    .line 366
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public getCountElement()Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->countElement:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    return-object v0
.end method

.method public getLayoutElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->layoutElements:Ljava/util/List;

    return-object v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->countElement:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->pack(Ljava/io/OutputStream;)V

    .line 384
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->layoutElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 385
    .local v1, "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    invoke-interface {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;->pack(Ljava/io/OutputStream;)V

    .line 386
    .end local v1    # "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method public renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 2
    .param p1, "bciRenumbering"    # Lorg/apache/commons/compress/harmony/pack200/IntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 391
    .local p2, "labelsToOffsets":Ljava/util/Map;, "Ljava/util/Map<Lorg/objectweb/asm/Label;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->layoutElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 392
    .local v1, "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 393
    .end local v1    # "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

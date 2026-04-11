.class public Lcom/termux/x11/controller/core/KeyValueSet;
.super Ljava/lang/Object;
.source "KeyValueSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    .line 11
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    :cond_0
    iput-object v0, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    .line 12
    return-void
.end method

.method static synthetic access$000(Lcom/termux/x11/controller/core/KeyValueSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/core/KeyValueSet;

    .line 7
    iget-object v0, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    return-object v0
.end method

.method private indexOfKey(Ljava/lang/String;)[I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "start":I
    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 17
    .local v1, "end":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v4, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 19
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_3

    .line 20
    iget-object v4, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    const-string v5, "="

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 21
    .local v4, "index":I
    iget-object v5, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 22
    .local v5, "currKey":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    return-object v2

    .line 23
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 24
    iget-object v6, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 25
    if-ne v1, v3, :cond_2

    iget-object v6, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 26
    .end local v4    # "index":I
    .end local v5    # "currKey":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 28
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/termux/x11/controller/core/KeyValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .local v1, "keyValue":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    return-object v0

    .end local v1    # "keyValue":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 48
    .local v0, "start":[I
    iget-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    .line 49
    .local v1, "end":[I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 50
    .local v2, "item":[Ljava/lang/String;
    new-instance v3, Lcom/termux/x11/controller/core/KeyValueSet$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/termux/x11/controller/core/KeyValueSet$1;-><init>(Lcom/termux/x11/controller/core/KeyValueSet;[I[I[Ljava/lang/String;)V

    return-object v3
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 37
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/core/KeyValueSet;->indexOfKey(Ljava/lang/String;)[I

    move-result-object v0

    .line 38
    .local v0, "range":[I
    const-string v1, "="

    if-eqz v0, :cond_0

    .line 39
    iget-object v2, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/termux/x11/controller/core/StringUtils;->replace(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    goto :goto_1

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    .line 42
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/termux/x11/controller/core/KeyValueSet;->data:Ljava/lang/String;

    return-object v0
.end method

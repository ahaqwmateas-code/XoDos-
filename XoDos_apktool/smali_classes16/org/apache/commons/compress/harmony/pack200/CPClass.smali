.class public Lorg/apache/commons/compress/harmony/pack200/CPClass;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "CPClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
        ">;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final isInnerClass:Z

.field private final utf8:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V
    .locals 6
    .param p1, "utf8"    # Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->utf8:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 30
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 32
    .local v0, "chars":[C
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    .line 33
    .local v4, "element":C
    const/16 v5, 0x2d

    if-gt v4, v5, :cond_0

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->isInnerClass:Z

    .line 35
    return-void

    .line 32
    .end local v4    # "element":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_1
    iput-boolean v2, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->isInnerClass:Z

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I
    .locals 2
    .param p1, "arg0"    # Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 43
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIndexInCpUtf8()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->utf8:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v0

    return v0
.end method

.method public isInnerClass()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->isInnerClass:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->className:Ljava/lang/String;

    return-object v0
.end method

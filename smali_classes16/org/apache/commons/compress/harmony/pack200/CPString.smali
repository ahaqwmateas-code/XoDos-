.class public Lorg/apache/commons/compress/harmony/pack200/CPString;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "CPString.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPString;",
        ">;"
    }
.end annotation


# instance fields
.field private final string:Ljava/lang/String;

.field private final utf8:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V
    .locals 1
    .param p1, "utf8"    # Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 27
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->utf8:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 29
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->string:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPString;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPString;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPString;)I
    .locals 2
    .param p1, "arg0"    # Lorg/apache/commons/compress/harmony/pack200/CPString;

    .line 34
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->string:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/commons/compress/harmony/pack200/CPString;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIndexInCpUtf8()I
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->utf8:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->string:Ljava/lang/String;

    return-object v0
.end method

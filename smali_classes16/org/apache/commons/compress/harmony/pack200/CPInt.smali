.class public Lorg/apache/commons/compress/harmony/pack200/CPInt;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "CPInt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPInt;",
        ">;"
    }
.end annotation


# instance fields
.field private final theInt:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "theInt"    # I

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    .line 27
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->theInt:I

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPInt;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPInt;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPInt;)I
    .locals 2
    .param p1, "obj"    # Lorg/apache/commons/compress/harmony/pack200/CPInt;

    .line 32
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->theInt:I

    iget v1, p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;->theInt:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->theInt:I

    return v0
.end method

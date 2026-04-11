.class Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
.super Ljava/lang/Object;
.source "IcBands.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/IcBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IcTuple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;",
        ">;"
    }
.end annotation


# instance fields
.field protected C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field protected C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field protected F:I

.field protected N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/pack200/IcBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/IcBands;Lorg/apache/commons/compress/harmony/pack200/CPClass;ILorg/apache/commons/compress/harmony/pack200/CPClass;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/harmony/pack200/IcBands;
    .param p2, "C"    # Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .param p3, "F"    # I
    .param p4, "C2"    # Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .param p5, "N"    # Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 41
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->this$0:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 43
    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    .line 44
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 45
    iput-object p5, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->compareTo(Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;)I
    .locals 2
    .param p1, "arg0"    # Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v1, p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    .line 57
    .local v0, "icT":Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    iget v3, v0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    .line 58
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 57
    :goto_0
    return v1

    .line 60
    .end local v0    # "icT":Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
    :cond_1
    return v1
.end method

.method public isAnonymous()Z
    .locals 3

    .line 64
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "className":Ljava/lang/String;
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "innerName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

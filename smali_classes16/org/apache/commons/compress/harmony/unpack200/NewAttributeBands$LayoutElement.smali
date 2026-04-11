.class abstract Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;
.super Ljava/lang/Object;
.source "NewAttributeBands.java"

# interfaces
.implements Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$AttributeLayoutElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LayoutElement"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$1;

    .line 269
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands$LayoutElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLength(C)I
    .locals 1
    .param p1, "uintType"    # C

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "length":I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 284
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :sswitch_1
    const/4 v0, 0x4

    .line 282
    goto :goto_0

    .line 278
    :sswitch_2
    const/4 v0, 0x2

    .line 279
    goto :goto_0

    .line 275
    :sswitch_3
    const/4 v0, 0x1

    .line 276
    nop

    .line 287
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x48 -> :sswitch_2
        0x49 -> :sswitch_1
        0x56 -> :sswitch_0
    .end sparse-switch
.end method

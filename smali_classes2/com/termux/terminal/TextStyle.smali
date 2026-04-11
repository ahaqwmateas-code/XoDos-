.class public final Lcom/termux/terminal/TextStyle;
.super Ljava/lang/Object;
.source "TextStyle.java"


# static fields
.field public static final CHARACTER_ATTRIBUTE_BLINK:I = 0x8

.field public static final CHARACTER_ATTRIBUTE_BOLD:I = 0x1

.field public static final CHARACTER_ATTRIBUTE_DIM:I = 0x100

.field public static final CHARACTER_ATTRIBUTE_INVERSE:I = 0x10

.field public static final CHARACTER_ATTRIBUTE_INVISIBLE:I = 0x20

.field public static final CHARACTER_ATTRIBUTE_ITALIC:I = 0x2

.field public static final CHARACTER_ATTRIBUTE_PROTECTED:I = 0x80

.field public static final CHARACTER_ATTRIBUTE_STRIKETHROUGH:I = 0x40

.field private static final CHARACTER_ATTRIBUTE_TRUECOLOR_BACKGROUND:I = 0x400

.field private static final CHARACTER_ATTRIBUTE_TRUECOLOR_FOREGROUND:I = 0x200

.field public static final CHARACTER_ATTRIBUTE_UNDERLINE:I = 0x4

.field public static final COLOR_INDEX_BACKGROUND:I = 0x101

.field public static final COLOR_INDEX_CURSOR:I = 0x102

.field public static final COLOR_INDEX_FOREGROUND:I = 0x100

.field static final NORMAL:J

.field public static final NUM_INDEXED_COLORS:I = 0x103


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const/16 v0, 0x101

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {v2, v0, v1}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    sput-wide v0, Lcom/termux/terminal/TextStyle;->NORMAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBackColor(J)I
    .locals 6
    .param p0, "style"    # J

    .line 79
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    const/16 v4, 0x10

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 80
    ushr-long v0, p0, v4

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    .line 82
    :cond_0
    ushr-long v0, p0, v4

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    const/high16 v0, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public static decodeEffect(J)I
    .locals 2
    .param p0, "style"    # J

    .line 87
    const-wide/16 v0, 0x7ff

    and-long/2addr v0, p0

    long-to-int v1, v0

    return v1
.end method

.method public static decodeForeColor(J)I
    .locals 6
    .param p0, "style"    # J

    .line 70
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    const/16 v4, 0x28

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 71
    ushr-long v0, p0, v4

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    .line 73
    :cond_0
    ushr-long v0, p0, v4

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    const/high16 v0, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method static encode(III)J
    .locals 13
    .param p0, "foreColor"    # I
    .param p1, "backColor"    # I
    .param p2, "effect"    # I

    .line 50
    and-int/lit16 v0, p2, 0x1ff

    int-to-long v0, v0

    .line 51
    .local v0, "result":J
    const/high16 v2, -0x1000000

    and-int v3, p0, v2

    const-wide/32 v4, 0xffffff

    const/16 v6, 0x28

    const-wide/16 v7, 0x1ff

    if-ne v3, v2, :cond_0

    .line 53
    int-to-long v9, p0

    and-long/2addr v9, v4

    shl-long/2addr v9, v6

    const-wide/16 v11, 0x200

    or-long/2addr v9, v11

    or-long/2addr v0, v9

    goto :goto_0

    .line 56
    :cond_0
    int-to-long v9, p0

    and-long/2addr v9, v7

    shl-long/2addr v9, v6

    or-long/2addr v0, v9

    .line 58
    :goto_0
    and-int v3, p1, v2

    const/16 v6, 0x10

    if-ne v3, v2, :cond_1

    .line 60
    int-to-long v2, p1

    and-long/2addr v2, v4

    shl-long/2addr v2, v6

    const-wide/16 v4, 0x400

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_1

    .line 63
    :cond_1
    int-to-long v2, p1

    and-long/2addr v2, v7

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 66
    :goto_1
    return-wide v0
.end method

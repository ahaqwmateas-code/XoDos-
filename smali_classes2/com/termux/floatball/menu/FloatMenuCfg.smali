.class public Lcom/termux/floatball/menu/FloatMenuCfg;
.super Ljava/lang/Object;
.source "FloatMenuCfg.java"


# instance fields
.field public mItemSize:I

.field public mSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "itemSize"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/termux/floatball/menu/FloatMenuCfg;->mSize:I

    .line 9
    iput p2, p0, Lcom/termux/floatball/menu/FloatMenuCfg;->mItemSize:I

    .line 10
    return-void
.end method

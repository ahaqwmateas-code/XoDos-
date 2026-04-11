.class public Lcom/termux/x11/controller/xserver/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"


# instance fields
.field public final height:S

.field public final width:S


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    int-to-short v0, p1

    iput-short v0, p0, Lcom/termux/x11/controller/xserver/ScreenInfo;->width:S

    .line 9
    int-to-short v0, p2

    iput-short v0, p0, Lcom/termux/x11/controller/xserver/ScreenInfo;->height:S

    .line 10
    return-void
.end method

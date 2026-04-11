.class public final Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;
.super Ljava/lang/Object;
.source "LocalClientSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/net/socket/local/LocalClientSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutableInt"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput p1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    .line 404
    return-void
.end method

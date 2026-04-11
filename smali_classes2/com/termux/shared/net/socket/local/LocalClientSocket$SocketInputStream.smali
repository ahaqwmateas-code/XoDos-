.class public Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;
.super Ljava/io/InputStream;
.source "LocalClientSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/net/socket/local/LocalClientSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocketInputStream"
.end annotation


# instance fields
.field private final mBytes:[B

.field final synthetic this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;


# direct methods
.method protected constructor <init>(Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 410
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;->this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 411
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;->mBytes:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;-><init>(I)V

    .line 450
    .local v0, "available":Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;
    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;->this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    invoke-virtual {v1, v0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->available(Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 451
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-nez v1, :cond_0

    .line 454
    iget v2, v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    return v2

    .line 452
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;-><init>(I)V

    .line 416
    .local v0, "bytesRead":Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;
    iget-object v2, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;->this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;->mBytes:[B

    invoke-virtual {v2, v3, v0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->read([BLcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;)Lcom/termux/shared/errors/Error;

    move-result-object v2

    .line 417
    .local v2, "error":Lcom/termux/shared/errors/Error;
    if-nez v2, :cond_1

    .line 421
    iget v3, v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    if-nez v3, :cond_0

    .line 422
    const/4 v1, -0x1

    return v1

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;->mBytes:[B

    aget-byte v1, v3, v1

    return v1

    .line 418
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v2}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([B)I
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    if-eqz p1, :cond_2

    .line 434
    new-instance v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;-><init>(I)V

    .line 435
    .local v0, "bytesRead":Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;
    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketInputStream;->this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    invoke-virtual {v1, p1, v0}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->read([BLcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;)Lcom/termux/shared/errors/Error;

    move-result-object v1

    .line 436
    .local v1, "error":Lcom/termux/shared/errors/Error;
    if-nez v1, :cond_1

    .line 440
    iget v2, v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    if-nez v2, :cond_0

    .line 441
    const/4 v2, -0x1

    return v2

    .line 444
    :cond_0
    iget v2, v0, Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;->value:I

    return v2

    .line 437
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    .end local v0    # "bytesRead":Lcom/termux/shared/net/socket/local/LocalClientSocket$MutableInt;
    .end local v1    # "error":Lcom/termux/shared/errors/Error;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Read buffer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

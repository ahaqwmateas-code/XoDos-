.class public Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalClientSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/net/socket/local/LocalClientSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocketOutputStream"
.end annotation


# instance fields
.field private final mBytes:[B

.field final synthetic this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;


# direct methods
.method protected constructor <init>(Lcom/termux/shared/net/socket/local/LocalClientSocket;)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/shared/net/socket/local/LocalClientSocket;

    .line 461
    iput-object p1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;->this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 462
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;->mBytes:[B

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;->mBytes:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 468
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;->this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    iget-object v1, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;->mBytes:[B

    invoke-virtual {v0, v1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->send([B)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 469
    .local v0, "error":Lcom/termux/shared/errors/Error;
    if-nez v0, :cond_0

    .line 472
    return-void

    .line 470
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/termux/shared/net/socket/local/LocalClientSocket$SocketOutputStream;->this$0:Lcom/termux/shared/net/socket/local/LocalClientSocket;

    invoke-virtual {v0, p1}, Lcom/termux/shared/net/socket/local/LocalClientSocket;->send([B)Lcom/termux/shared/errors/Error;

    move-result-object v0

    .line 477
    .local v0, "error":Lcom/termux/shared/errors/Error;
    if-nez v0, :cond_0

    .line 480
    return-void

    .line 478
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/termux/shared/errors/Error;->getErrorMarkdownString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

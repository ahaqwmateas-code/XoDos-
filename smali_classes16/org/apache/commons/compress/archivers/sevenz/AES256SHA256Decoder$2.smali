.class Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;
.super Ljava/io/OutputStream;
.source "AES256SHA256Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final cipherBlockBuffer:[B

.field private final cipherBlockSize:I

.field private final cipherOutputStream:Ljavax/crypto/CipherOutputStream;

.field private count:I

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

.field final synthetic val$opts:Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

.field final synthetic val$out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;Ljava/io/OutputStream;Lorg/apache/commons/compress/archivers/sevenz/AES256Options;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

    .line 174
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->this$0:Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->val$out:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->val$opts:Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 175
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->val$out:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->val$opts:Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherOutputStream:Ljavax/crypto/CipherOutputStream;

    .line 180
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->val$opts:Lorg/apache/commons/compress/archivers/sevenz/AES256Options;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    iput p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    .line 181
    iget p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockBuffer:[B

    .line 182
    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    return-void
.end method

.method private flushBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherOutputStream:Ljavax/crypto/CipherOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockBuffer:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    .line 200
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockBuffer:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 201
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    if-lez v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherOutputStream:Ljavax/crypto/CipherOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockBuffer:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherOutputStream:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 190
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherOutputStream:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 195
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockBuffer:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 226
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    if-ne v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->flushBuffer()V

    .line 229
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, p3

    .line 206
    .local v0, "gap":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    .line 209
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    if-ne v1, v2, :cond_2

    .line 210
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->flushBuffer()V

    .line 212
    sub-int v1, p3, v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    if-lt v1, v2, :cond_1

    .line 214
    sub-int v1, p3, v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockSize:I

    mul-int v1, v1, v2

    .line 215
    .local v1, "multipleCipherBlockSizeLen":I
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherOutputStream:Ljavax/crypto/CipherOutputStream;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, v1}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 216
    add-int/2addr v0, v1

    .line 218
    .end local v1    # "multipleCipherBlockSizeLen":I
    :cond_1
    add-int v1, p2, v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->cipherBlockBuffer:[B

    const/4 v3, 0x0

    sub-int v4, p3, v0

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    sub-int v1, p3, v0

    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$2;->count:I

    .line 221
    :cond_2
    return-void
.end method

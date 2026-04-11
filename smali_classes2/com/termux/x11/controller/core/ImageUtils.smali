.class public abstract Lcom/termux/x11/controller/core/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxSize"    # I

    .line 22
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 23
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 24
    .local v1, "width":I
    const/4 v2, 0x1

    .line 26
    .local v2, "inSampleSize":I
    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 27
    .local v4, "reqWidth":I
    :goto_0
    if-lt v0, v1, :cond_1

    move v3, p1

    .line 29
    .local v3, "reqHeight":I
    :cond_1
    if-gt v0, v3, :cond_2

    if-le v1, v4, :cond_3

    .line 30
    :cond_2
    div-int/lit8 v5, v0, 0x2

    .line 31
    .local v5, "halfHeight":I
    div-int/lit8 v6, v1, 0x2

    .line 32
    .local v6, "halfWidth":I
    :goto_1
    div-int v7, v5, v2

    if-lt v7, v3, :cond_3

    div-int v7, v6, v2

    if-lt v7, v4, :cond_3

    .line 33
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 36
    .end local v5    # "halfHeight":I
    .end local v6    # "halfWidth":I
    :cond_3
    return v2
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/termux/x11/controller/core/ImageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSize"    # I

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 67
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 68
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 70
    invoke-static {v1, p2}, Lcom/termux/x11/controller/core/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    .line 71
    .local v2, "inSampleSize":I
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v2    # "inSampleSize":I
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 80
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 73
    :catch_1
    move-exception v2

    .line 74
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 82
    :goto_1
    invoke-static {p0, p1, v1}, Lcom/termux/x11/controller/core/ImageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 77
    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 78
    :catch_2
    move-exception v3

    goto :goto_4

    .line 79
    :cond_1
    :goto_3
    nop

    .line 80
    :goto_4
    throw v2
.end method

.method public static getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 43
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    const/4 v2, 0x0

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 51
    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    move-exception v2

    .line 54
    goto :goto_2

    .line 53
    :cond_1
    :goto_1
    goto :goto_2

    .line 50
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 47
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 55
    :goto_2
    return-object v1

    .line 51
    :goto_3
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 52
    :catch_2
    move-exception v3

    goto :goto_5

    .line 53
    :cond_2
    :goto_4
    nop

    .line 54
    :goto_5
    throw v2
.end method

.method public static getFileMD5(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "bi":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 89
    .local v1, "is":Ljava/io/InputStream;
    const/16 v2, 0x2000

    :try_start_0
    new-array v2, v2, [B

    .line 90
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 91
    .local v3, "len":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    .line 92
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 93
    .local v4, "md":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v3, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 94
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 97
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 98
    .local v5, "b":[B
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "b":[B
    goto :goto_1

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 100
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 103
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    nop

    .line 104
    :goto_2
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "output"    # Ljava/io/File;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 111
    invoke-virtual {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    nop

    .line 117
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 118
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 115
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 117
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 118
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 120
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 122
    :cond_0
    :goto_1
    nop

    .line 124
    :goto_2
    const/4 v1, 0x0

    return v1

    .line 116
    :goto_3
    if-eqz v0, :cond_1

    .line 117
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 118
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 120
    :catch_3
    move-exception v2

    .line 121
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    nop

    .line 123
    :goto_5
    throw v1
.end method

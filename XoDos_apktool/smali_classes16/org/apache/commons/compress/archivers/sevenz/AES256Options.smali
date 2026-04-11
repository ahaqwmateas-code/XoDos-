.class Lorg/apache/commons/compress/archivers/sevenz/AES256Options;
.super Ljava/lang/Object;
.source "AES256Options.java"


# static fields
.field static final ALGORITHM:Ljava/lang/String; = "AES"

.field static final TRANSFORMATION:Ljava/lang/String; = "AES/CBC/NoPadding"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final iv:[B

.field private final numCyclesPower:I

.field private final salt:[B


# direct methods
.method public constructor <init>([C)V
    .locals 3
    .param p1, "password"    # [C

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->randomBytes(I)[B

    move-result-object v1

    const/16 v2, 0x13

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;-><init>([C[B[BI)V

    .line 65
    return-void
.end method

.method public constructor <init>([C[B[BI)V
    .locals 5
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iv"    # [B
    .param p4, "numCyclesPower"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->salt:[B

    .line 76
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->iv:[B

    .line 77
    iput p4, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->numCyclesPower:I

    .line 80
    invoke-static {p1, p4, p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->sha256Password([CI[B)[B

    move-result-object v0

    .line 81
    .local v0, "aesKeyBytes":[B
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->newSecretKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 84
    .local v1, "aesKey":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v2, "AES/CBC/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->cipher:Ljavax/crypto/Cipher;

    .line 85
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->cipher:Ljavax/crypto/Cipher;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 92
    return-void

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "generalSecurityException":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Encryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static newSecretKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2
    .param p0, "bytes"    # [B

    .line 42
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static randomBytes(I)[B
    .locals 4
    .param p0, "size"    # I

    .line 45
    new-array v0, p0, [B

    .line 47
    .local v0, "bytes":[B
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    nop

    .line 51
    return-object v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No strong secure random available to generate strong AES key"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method getIv()[B
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->iv:[B

    return-object v0
.end method

.method getNumCyclesPower()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->numCyclesPower:I

    return v0
.end method

.method getSalt()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->salt:[B

    return-object v0
.end method

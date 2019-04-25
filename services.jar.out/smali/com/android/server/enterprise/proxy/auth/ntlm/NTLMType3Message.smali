.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType3Message.java"


# static fields
.field private static final CIPHER_DES_ECB_NO_PADDING:Ljava/lang/String; = "DES/ECB/NoPadding"

.field private static final ENCODING_US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final HASH_MD5:Ljava/lang/String; = "MD5"

.field private static final MAGIC:Ljava/lang/String; = "KGS!@#$%"


# instance fields
.field domain:Ljava/lang/String;

.field lmCompatibility:I

.field lmResponse:[B

.field ntResponse:[B

.field password:Ljava/lang/String;

.field private randomBytesGenerator:Ljava/security/SecureRandom;

.field serverChallenge:[B

.field username:Ljava/lang/String;

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    iput p7, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmCompatibility:I

    return-void
.end method

.method private createHashPartForLm([BLjavax/crypto/Cipher;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getSecret([B)Ljava/security/Key;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "KGS!@#$%"

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method private createKeyFrom([BI)[B
    .locals 3

    const/4 v0, 0x7

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method private createLMResponse([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForLm([B)[B

    move-result-object v0

    const/16 v1, 0x15

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    const/16 v4, 0xe

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method private createNTLMResponse([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForNtlm([B)[B

    move-result-object v0

    const/16 v1, 0x15

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    const/16 v4, 0xe

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method private createType3Message()[B
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UTF-16LE"

    goto :goto_0

    :cond_1
    const-string v0, "Cp850"

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->domain:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object v3, v5

    array-length v5, v3

    move v4, v5

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->workstation:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    move-object v5, v7

    array-length v7, v5

    move v6, v7

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "Cp850"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    :cond_4
    iget-object v9, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    move-object v7, v9

    array-length v9, v7

    move v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    array-length v11, v11

    iget-object v12, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    array-length v12, v12

    const/16 v13, 0x40

    add-int/2addr v13, v4

    add-int/2addr v13, v8

    add-int/2addr v13, v6

    add-int/2addr v13, v12

    add-int/2addr v13, v11

    add-int/2addr v13, v10

    new-array v13, v13, [B

    sget-object v14, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->NTLM_HEADER_BYTES:[B

    const/16 v15, 0x8

    const/4 v2, 0x0

    invoke-static {v14, v2, v13, v2, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v2, 0x3

    const/4 v14, 0x4

    invoke-static {v13, v15, v2, v14}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    const/16 v2, 0x40

    const/16 v15, 0xc

    iget-object v14, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    invoke-static {v13, v15, v2, v14}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v2, v12

    const/16 v14, 0x14

    iget-object v15, v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    invoke-static {v13, v14, v2, v15}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v2, v11

    const/16 v14, 0x1c

    invoke-static {v13, v14, v2, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v2, v4

    const/16 v14, 0x24

    invoke-static {v13, v14, v2, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v2, v8

    const/16 v14, 0x2c

    invoke-static {v13, v14, v2, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v2, v6

    const/16 v14, 0x34

    invoke-static {v13, v14, v2, v9}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    const/16 v14, 0x3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getFlags()I

    move-result v15

    move-object/from16 v16, v0

    const/4 v0, 0x4

    invoke-static {v13, v14, v15, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v13

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    nop

    :goto_1
    const/4 v2, 0x0

    return-object v2

    :cond_5
    :goto_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getSecret([B)Ljava/security/Key;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p4, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, p3, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method private getBytesForNtlm2([B[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->hashForNtlm([B)[B

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, p3, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    new-array v4, v2, [B

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v2, 0x15

    new-array v2, v2, [B

    const/16 v5, 0x10

    invoke-static {v0, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v3

    const/4 v5, 0x7

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v5

    const/16 v6, 0xe

    invoke-direct {p0, v2, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v6

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getLmBytes([B[B[B[B)[B

    move-result-object v7

    return-object v7
.end method

.method private getLmBytes([B[B[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x18

    new-array v0, v0, [B

    const-string v1, "DES/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    const/16 v6, 0x8

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    const/16 v6, 0x10

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->encriptAndFillResponse([B[B[BLjavax/crypto/Cipher;I)V

    return-object v0
.end method

.method private getPasswordForLm(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cp850"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getPasswordForNtlm(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getSecret([B)Ljava/security/Key;
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p1, v3

    array-length v4, v0

    sub-int/2addr v4, v2

    shl-int/2addr v3, v4

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    ushr-int/2addr v4, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    shl-int/lit8 v1, v3, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->processParityForBytes([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private hashForLm([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createHashPartForLm([BLjavax/crypto/Cipher;)[B

    move-result-object v4

    const/4 v5, 0x7

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createKeyFrom([BI)[B

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createHashPartForLm([BLjavax/crypto/Cipher;)[B

    move-result-object v5

    const/16 v6, 0x10

    new-array v6, v6, [B

    const/16 v7, 0x8

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v5, v2, v6, v7, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v6
.end method

.method private hashForNtlm([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;

    invoke-direct {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/MD4;-><init>()V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method private processParityForBytes([B)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-byte v2, p1, v1

    ushr-int/lit8 v3, v2, 0x7

    ushr-int/lit8 v4, v2, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x1

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_1

    aget-byte v5, p1, v1

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    goto :goto_2

    :cond_1
    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, -0x2

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->username:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmCompatibility:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x80000

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->isFlagSet(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x18

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v3, 0x8

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForNtlm(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getBytesForNtlm2([B[B[B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createType3Message()[B

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForLm(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createLMResponse([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->lmResponse:[B

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->getPasswordForNtlm(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createNTLMResponse([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->ntResponse:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createType3Message()[B

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :goto_0
    return-object v1

    :cond_5
    :goto_1
    return-object v1
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

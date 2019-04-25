.class public Lcom/android/server/locksettings/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "SyntheticPasswordCrypto.java"


# static fields
.field private static final AES_KEY_LENGTH:I = 0x20

.field private static final APPLICATION_ID_PERSONALIZATION:[B

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordCrypto"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordCrypto.SDP"

.field private static final USER_AUTHENTICATION_VALIDITY:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application-id"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KBKDF([B[B[BI)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeKBKDF([B[B[BI)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static KDF([B[B[BI)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeKDF([B[B[BI)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static PBKDF2([B[BII)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativePBKDF2([B[BII)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static RBG(I)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeRBG(I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static varargs createBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[BJ[[B)[B
    .locals 4

    :try_start_0
    invoke-static {p6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v1, 0x20

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2

    invoke-static {p1, v2, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v3

    return-object v3

    :cond_0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v0, p2, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B[[B)[B

    move-result-object v0

    invoke-static {p1, v0, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to encrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs createBlob(Ljava/lang/String;[B[BJ[[B)[B
    .locals 8

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    :cond_0
    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v6

    invoke-virtual {v2, p0, v5, v6}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-static {p5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v6, 0x20

    invoke-static {p2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v6

    new-array v4, v4, [[B

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v5, p1, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v4

    invoke-static {v1, v4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v7

    return-object v7

    :cond_1
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v4, p1, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B[[B)[B

    move-result-object v4

    invoke-static {v1, v4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to encrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs decrypt(Ljavax/crypto/SecretKey;[B[[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v2, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_1
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method public static varargs decrypt([B[B[B[[B)[B
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-static {v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public static varargs decryptBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B[[B)[B
    .locals 5

    :try_start_0
    invoke-static {p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v0

    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v0, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v3

    return-object v3

    :cond_0
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v1, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs decryptBlob(Ljava/lang/String;[B[B[[B)[B
    .locals 7

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    invoke-static {v1, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v4, 0x20

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v2, v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v5

    return-object v5

    :cond_0
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v3, v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decryptBlobV1(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B)[B
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    const/4 v1, 0x0

    new-array v2, v1, [[B

    invoke-static {p3, v0, p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v0

    new-array v1, v1, [[B

    invoke-static {p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decryptBlobV1(Ljava/lang/String;[B[B)[B
    .locals 5

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    const/4 v3, 0x0

    new-array v4, v3, [[B

    invoke-static {p2, v2, p1, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v2

    new-array v3, v3, [[B

    invoke-static {v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static destroyBlobKey(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static varargs encrypt(Ljavax/crypto/SecretKey;[B[[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    array-length v3, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid iv length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static varargs encrypt([B[B[B[[B)[B
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-static {v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public static native nativeKBKDF([B[B[BI)[B
.end method

.method public static native nativeKDF([B[B[BI)[B
.end method

.method public static native nativePBKDF2([B[BII)[B
.end method

.method public static native nativeRBG(I)[B
.end method

.method protected static personalise([BILjava/lang/String;Ljava/lang/String;)[B
    .locals 6

    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/4 v1, 0x2

    if-gt p1, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v1

    const/16 v4, 0x20

    if-gt v3, v4, :cond_3

    array-length v3, v2

    const/16 v5, 0x40

    if-gt v3, v5, :cond_3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    if-eq p1, v0, :cond_0

    invoke-static {p0, v1, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->KBKDF([B[B[BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->KDF([B[B[BI)[B

    move-result-object v0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_2

    array-length v3, v0

    if-le v3, v4, :cond_1

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    move-object v0, v3

    :cond_1
    return-object v0

    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected native error while personalization"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Personalization too long"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid secure mode for personalization"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Make sure of input parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static varargs personalisedHash([B[[B)[B
    .locals 5

    const/16 v0, 0x80

    :try_start_0
    const-string v1, "SHA-512"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    array-length v2, p0

    const/16 v3, 0x80

    if-gt v2, v3, :cond_1

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object p0, v2

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Personalisation too long"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static varargs personalizedHash([B[[B)[B
    .locals 5

    const/16 v0, 0x40

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    array-length v2, p0

    const/16 v3, 0x40

    if-gt v2, v3, :cond_1

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object p0, v2

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Personalization too long"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-256"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

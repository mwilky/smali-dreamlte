.class public Lcom/android/server/KeyProtector;
.super Ljava/lang/Object;
.source "KeyProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KeyProtector$KeyStore;
    }
.end annotation


# static fields
.field private static final DEFAULT_IV_LEN:I = 0xc

.field private static final DEFAULT_KEY_LEN:I = 0x20

.field private static final FILE_PREFIX:Ljava/lang/String; = "ENCRYPTED_KEY_"

.field public static final LEGACY_KNOXCORE_UID:I = 0x4e2

.field private static final TAG:Ljava/lang/String; = "KeyProtector"

.field private static sInstance:Lcom/android/server/KeyProtector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([B)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/KeyProtector;->clear([B)V

    return-void
.end method

.method private static attach(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static clear([B)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private deleteFile(ILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ENCRYPTED_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile - File path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string v2, "KeyProtector"

    const-string v3, "Null path..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/KeyProtector;
    .locals 2

    const-class v0, Lcom/android/server/KeyProtector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/KeyProtector;

    invoke-direct {v1}, Lcom/android/server/KeyProtector;-><init>()V

    sput-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    :cond_0
    sget-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKeyStore()Lcom/android/server/KeyProtector$KeyStore;
    .locals 2

    new-instance v0, Lcom/android/server/KeyProtector$KeyStore;

    const/16 v1, 0x4e2

    invoke-direct {v0, v1}, Lcom/android/server/KeyProtector$KeyStore;-><init>(I)V

    return-object v0
.end method

.method private readFile(ILjava/lang/String;)[B
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ENCRYPTED_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFile - File path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string v1, "KeyProtector"

    const-string v2, "Null path..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v5, v4, [B

    move-object v1, v5

    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_2

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    :cond_1
    :goto_2
    throw v4

    :cond_2
    :goto_3
    return-object v1
.end method

.method private writeToFile(ILjava/lang/String;[B)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ENCRYPTED_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeToFile - File path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string v2, "KeyProtector"

    const-string v3, "Null path..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-virtual {v3, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    nop

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_1

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    :cond_2
    :goto_3
    throw v4
.end method


# virtual methods
.method public decryptFast([B[B)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    nop

    const/4 v1, 0x0

    const/16 v2, 0xc

    :try_start_0
    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v7, 0x80

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v4, v5, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyProtector"

    const-string/jumbo v3, "fast decryption - Unexpected error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    const-string v1, "KeyProtector"

    const-string/jumbo v2, "fast decryption - Only supported for 32-bytes key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 7

    nop

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->deleteSecretKey(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->deleteFile(ILjava/lang/String;)Z

    move-result v3

    if-nez v0, :cond_2

    const-string v4, "KeyProtector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected failure while delete key with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v3, :cond_3

    const-string v4, "KeyProtector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected failure while delete file with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public encryptFast([B[B)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    move-object v1, v0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v7

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v2, "KeyProtector"

    const-string/jumbo v3, "fast encryption - Unexpected error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1

    :cond_2
    :goto_3
    const-string v1, "KeyProtector"

    const-string/jumbo v2, "fast encryption - Only supported for 32-bytes key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public exists(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    nop

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_0

    const-string v1, "KeyProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key exists in the KeyStore. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public migrateFromTimaKeyStore(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KeyProtector"

    const-string v3, "Error while migrating from TIMA KeyStore..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public protect([BLjava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->setSecretKey(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v3

    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    move-object v0, v6

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v6

    nop

    nop

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    array-length v4, v1

    :goto_0
    const/16 v6, 0xc

    if-eq v4, v6, :cond_2

    :try_start_1
    const-string v5, "KeyProtector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid iv length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v2

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {p0, p3, p2, v6}, Lcom/android/server/KeyProtector;->writeToFile(ILjava/lang/String;[B)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v5, "KeyProtector"

    const-string v6, "Failed to write into file..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v2

    :cond_3
    const-string v2, "KeyProtector"

    const-string v6, "Successfully wrote into file!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_1
    nop

    const-string v6, "KeyProtector"

    const-string v7, "Failed to concatenate byte arrays"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v2

    :cond_4
    :try_start_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unexpected failure while set key"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->deleteSecretKey(Ljava/lang/String;I)Z

    return v2

    :cond_5
    :goto_2
    const-string v3, "KeyProtector"

    const-string v4, "Wrong input parameter..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public release(Ljava/lang/String;I)[B
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->readFile(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0xc

    :try_start_0
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    array-length v4, v1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v4

    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "KeyProtector"

    const-string v4, "Failed in copying array..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3

    :cond_0
    :goto_0
    return-object v0
.end method

.method public releaseMinor(Ljava/lang/String;I)[B
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->readFile(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v4

    invoke-virtual {v4, p2, p1}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_2

    const-string v5, "KeyProtector"

    const-string v6, "Found key from TIMA KeyStore."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "KeyProtector"

    const-string v6, "Error while migrating from TIMA KeyStore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p2, p1}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "Failed to get key from TIMA KeyStore."

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_1
    return-object v0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

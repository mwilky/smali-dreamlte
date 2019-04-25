.class public Lcom/android/server/KnoxFileHandler;
.super Landroid/content/pm/IPersonaFileHandler$Stub;
.source "KnoxFileHandler.java"


# static fields
.field private static ALIAS_NAME:Ljava/lang/String; = null

.field private static final DEBUG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static final FILE_EDK_DE_PATH:Ljava/lang/String; = "knox_edk_de_"

.field public static final FLAG_STORAGE_CE:I = 0x1

.field public static final FLAG_STORAGE_CE_NO_REMOUNT:I = 0x100

.field public static final FLAG_STORAGE_DE:I = 0x10

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final PREFIX_DATA_SYSTEM_USERS_PATH:Ljava/lang/String; = "/data/system/users"

.field static final TAG:Ljava/lang/String; = "KnoxFileHandler"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String; = null

.field static final TIMA_TAG:Ljava/lang/String; = "KnoxFileHandler.tima"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEpm:Lcom/android/server/EnterprisePartitionManager;

.field private mKeyProtector:Lcom/android/server/KeyProtector;

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    const-string v0, "/data/system/container/key"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v0, "ecryptfsKey"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/IPersonaFileHandler$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-static {p1}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    iput-object p1, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mKeyProtector:Lcom/android/server/KeyProtector;

    return-void
.end method

.method private checkTimaError(II)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "KnoxFileHandler.tima"

    const-string v1, "Setting to KNOX_STATE_TIMA_COMPROMISED....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setTimaCompromisedState(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkTimaStatus(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private convertStorageTypeToFlag(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "KnoxFileHandler"

    const-string v1, "Not specified storage type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0x100

    return v0

    :pswitch_1
    const/16 v0, 0x10

    return v0

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createPartitionInternal(ILjava/lang/String;ZI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/KnoxFileHandler;->generateEcryptfsKey(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v2, p1, p4}, Lcom/android/server/EnterprisePartitionManager;->createPartition(II)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "KnoxFileHandler"

    const-string v4, "Knox persona partition successfully created.."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v3, "KnoxFileHandler"

    const-string v4, "createPartition : secretkey not saved successfully. Removing partition"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->convertStorageTypeToFlag(I)I

    move-result v3

    invoke-virtual {p0, p1, p3, v3}, Lcom/android/server/KnoxFileHandler;->removePartition(IZI)Z

    return v1

    :cond_1
    return v1
.end method

.method private deleteEcryptFSKey(IZI)V
    .locals 4

    const-string v0, "KnoxFileHandler"

    const-string v1, "deleteEcryptFSKey enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/KnoxFileHandler;->mKeyProtector:Lcom/android/server/KeyProtector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KnoxFileHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully removed key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "KnoxFileHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    nop

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->generateSalt()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "HmacSHA256"

    const-string v4, "AndroidOpenSSL"

    invoke-static {v3, v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "KnoxFileHandler"

    const-string v3, "Error inside generateCMK "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private generateSalt()[B
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private getEcryptfsAliasByType(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "KnoxFileHandler"

    const-string v1, "Not specified type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "De"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :pswitch_1
    sget-object v0, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "KnoxFileHandler"

    const-string v3, "Returning key password"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load TKS instance..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxFileHandler.tima"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    throw v2

    :catch_1
    move-exception v2

    sget-boolean v3, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get TKS instance..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxFileHandler.tima"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v2
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getTimaService()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getTimaStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/TimaHelper;->getTimaStatus()I

    move-result v0

    return v0
.end method

.method public static isDirectBootEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isFileSystemEncrypted(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private mountByType(IZIZI)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSKey(IZII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v1, p1, v0, p4, p5}, Lcom/android/server/EnterprisePartitionManager;->mount(ILjava/lang/String;ZI)Z

    move-result v1

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaStatus()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/KnoxFileHandler;->checkTimaError(II)V

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private readDeKeyFromFile(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 16

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v0

    const/16 v6, 0x64

    new-array v6, v6, [B

    move-object v3, v6

    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v0

    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    nop

    return-object v2

    :catch_2
    move-exception v0

    move-object v7, v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v6, v0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    nop

    return-object v2

    :goto_1
    nop

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    throw v0

    :cond_1
    :goto_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    move v7, v0

    move v0, v6

    :goto_3
    const/4 v8, 0x5

    if-ge v0, v8, :cond_2

    aget-byte v8, v3, v0

    const/16 v9, 0x30

    if-lt v8, v9, :cond_2

    aget-byte v8, v3, v0

    const/16 v9, 0x39

    if-gt v8, v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    if-nez v7, :cond_3

    return-object v2

    :cond_3
    new-array v8, v7, [B

    move v0, v6

    :goto_4
    if-ge v0, v7, :cond_4

    aget-byte v9, v3, v0

    aput-byte v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v0, 0x5f

    if-gt v10, v0, :cond_7

    if-nez v10, :cond_5

    goto :goto_6

    :cond_5
    new-array v11, v10, [B

    nop

    :goto_5
    move v0, v6

    if-ge v0, v10, :cond_6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v3, v6

    aput-byte v6, v11, v0

    add-int/lit8 v6, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/16 v12, 0x10

    :try_start_7
    new-array v12, v12, [B

    fill-array-data v12, :array_0

    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v15, "AES/CBC/PKCS7Padding"

    invoke-direct {v13, v14, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v13

    const-string v13, "AES/CBC/PKCS7Padding"

    const-string v14, "AndroidOpenSSL"

    invoke-static {v13, v14}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    move-object v6, v13

    const/4 v13, 0x2

    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v14, v12}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v6, v13, v0, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v6, v11}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    return-object v13

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "KnoxFileHandler"

    const-string/jumbo v12, "error inside aes decrypt de key"

    invoke-static {v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7
    :goto_6
    return-object v2

    nop

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private removePartitionInternal(IZIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "KnoxFileHandler"

    const-string/jumbo v4, "remove partition failed.., file system not encrypted!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    and-int/lit8 v2, p3, 0x10

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/KnoxFileHandler;->deleteEcryptFSKey(IZI)V

    if-eqz p4, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/EnterprisePartitionManager;->removePartition(II)Z

    move-result v2

    :goto_0
    move v0, v2

    :cond_2
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v5, :cond_4

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/KnoxFileHandler;->deleteEcryptFSKey(IZI)V

    if-eqz p4, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/EnterprisePartitionManager;->removePartition(II)Z

    move-result v2

    :goto_1
    move v1, v2

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    move v3, v5

    nop

    :cond_5
    return v3
.end method

.method private retrieveEcryptFSKey(IZII)Ljava/lang/String;
    .locals 6

    const-string v0, "KnoxFileHandler"

    const-string/jumbo v1, "retrieveEcryptFSKey enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/KnoxFileHandler;->mKeyProtector:Lcom/android/server/KeyProtector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/KeyProtector;->releaseMinor(Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "KnoxFileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Succesfully retrieved key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "KnoxFileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private retrieveEcryptFSKeyForTima20(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private retrieveEcryptFSPwd(IZI)Ljava/lang/String;
    .locals 8

    const-string v0, "KnoxFileHandler"

    const-string/jumbo v1, "retrieveEcryptFSPwd enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v2, p2

    :try_start_0
    sget-boolean v3, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KnoxFileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retrieveEcryptFSPwd-> isTimaEnabled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_6

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v4

    check-cast v4, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from TIMA keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " entry is null in TIMA keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    sget-boolean v4, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "KnoxFileHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "key not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in TIMA keystore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    if-nez v3, :cond_6

    :try_start_2
    const-string v4, "KnoxFileHandler"

    const-string/jumbo v5, "retrieveEcryptFSPwd :: Null keystore..."

    :goto_2
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_6

    :try_start_4
    const-string v4, "KnoxFileHandler"

    const-string/jumbo v5, "retrieveEcryptFSPwd :: Null keystore..."

    goto :goto_2

    :goto_3
    if-nez v3, :cond_5

    const-string v5, "KnoxFileHandler"

    const-string/jumbo v6, "retrieveEcryptFSPwd :: Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_4
    goto :goto_5

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz v0, :cond_7

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method private setFsErrorState(I)V
    .locals 1

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    return-void
.end method

.method private setFsSuccessState(I)V
    .locals 1

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    return-void
.end method

.method private setTimaCompromisedState(I)V
    .locals 2

    const-string v0, "KnoxFileHandler"

    const-string/jumbo v1, "setTimaCompromisedState is called.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.POLICY_DEVICE_COMPROMISE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private storeEcryptFSKey(I[BZI)Z
    .locals 5

    const-string v0, "KnoxFileHandler"

    const-string/jumbo v1, "storeEcryptFSKey enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/KnoxFileHandler;->mKeyProtector:Lcom/android/server/KeyProtector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3, p1}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "KnoxFileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succesfully saved key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "KnoxFileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private storeEcryptfsKeyForTima20(I[BI)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkStoreDeKey(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "knox_edk_de_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, p1, v2}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSKey(IZII)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/KnoxFileHandler;->readDeKeyFromFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-direct {p0, p1, v4, v2, v6}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "KnoxFileHandler"

    const-string v6, "Success to store DE key!!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "KnoxFileHandler"

    const-string v6, "Failed to delete legacy DE key.."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "KnoxFileHandler"

    const-string v6, "Failed to store DE key.."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public clearLegacyEncryptionKey(IZI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/KnoxFileHandler;->removePartitionInternal(IZIZ)Z

    move-result v0

    return v0
.end method

.method public createPartition(ILjava/lang/String;ZI)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/16 v2, 0x10

    new-array v3, v2, [B

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    const-string v2, "KnoxFileHandler"

    const-string v3, "createPartition : password with password"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/android/server/KnoxFileHandler;->isDirectBootEnabled()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, p3, v3}, Lcom/android/server/KnoxFileHandler;->createPartitionInternal(ILjava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "KnoxFileHandler"

    const-string v3, "Failed to create DE storage"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, p3, v2}, Lcom/android/server/KnoxFileHandler;->createPartitionInternal(ILjava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "KnoxFileHandler"

    const-string v4, "Failed to create CE storage"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3, v3}, Lcom/android/server/KnoxFileHandler;->removePartition(IZI)Z

    return v1

    :cond_2
    const-string v1, "KnoxFileHandler"

    const-string v3, "createPartition : success all..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isEncrypted(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v0

    return v0
.end method

.method public isMounted(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KnoxFileHandler"

    const-string v1, "Unmounting failed.., file system not encrypted!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v0

    return v0
.end method

.method public isTimaAvailable()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZI)Z

    move-result v0

    return v0
.end method

.method public mountFS(ILjava/lang/String;ZIZI)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p6

    invoke-static {}, Lcom/android/server/KnoxFileHandler;->isDirectBootEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    and-int/lit8 v1, v0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    const/4 v9, 0x3

    move-object v4, p0

    move v5, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v2

    :cond_0
    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v9, 0x1

    move-object v4, p0

    move v5, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v2

    :cond_1
    and-int/lit16 v1, v0, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_2

    const/4 v10, 0x4

    move-object v5, p0

    move v6, p1

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsSuccessState(I)V

    return v3
.end method

.method public removePartition(IZI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/KnoxFileHandler;->removePartitionInternal(IZIZ)Z

    move-result v0

    return v0
.end method

.method public unmount(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0}, Lcom/android/server/KnoxFileHandler;->unmount(II)Z

    move-result v0

    return v0
.end method

.method public unmount(II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "KnoxFileHandler"

    const-string v2, "Unmounting failed.., file system not encrypted!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/EnterprisePartitionManager;->unmount(II)Z

    move-result v0

    :cond_1
    const/4 v2, 0x1

    and-int/lit8 v4, p2, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Lcom/android/server/EnterprisePartitionManager;->unmount(II)Z

    move-result v2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1
.end method

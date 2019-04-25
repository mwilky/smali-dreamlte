.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "KnoxVpnCredentialHandler.java"


# static fields
.field private static final DBG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "KnoxVpnCredentialHandler"

.field public static final TIMA_DEPRECATED:I = 0x1

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String;

.field private static final USER_ID:I

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static mTimaService:Landroid/service/tima/ITimaService;

.field private static timaVersion20:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    const-string v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    const-string v0, "/data/system/vpn/key"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    return-void
.end method

.method public static clearKey(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method private deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    const-string v2, "KnoxVpnCredentialHandler"

    const-string v3, "deleteing key store file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
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
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->generateSalt()[B

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

    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string v2, "KnoxVpnCredentialHandler"

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

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 3

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

    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load TKS instance..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxVpnCredentialHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get TKS instance..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxVpnCredentialHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .locals 4

    const-string v0, "N/A"

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7ec2e91

    if-eq v2, v3, :cond_1

    const v3, 0xc535

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "FIPS3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "FipsTimaKeyStore"

    goto :goto_2

    :pswitch_1
    const-string v0, "TIMAKeyStore"

    nop

    :goto_2
    const-string v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-object v0
.end method

.method private getTimaStatus()I
    .locals 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ec2e91

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0xc174

    if-eq v3, v4, :cond_2

    const v4, 0xc535

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "3.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v5

    goto :goto_0

    :cond_2
    const-string v3, "2.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "FIPS3.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string v1, "KnoxVpnCredentialHandler"

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v1

    move v0, v1

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v1

    move v0, v1

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    move v0, v1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->keystoreShutdown()I

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    nop

    :goto_3
    const-string v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaStatus() - Tima Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p2, v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    return-void
.end method

.method public static isKeyinStore(Ljava/lang/String;[B)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x20

    new-array v3, v2, [B

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v8

    const-string v9, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveCredentialsFromTima20 errorCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_0

    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    invoke-interface {v6, v7}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v9

    move-object v1, v9

    if-eqz v1, :cond_0

    const/4 v9, 0x0

    aget-byte v10, v1, v9

    if-nez v10, :cond_0

    const/4 v10, 0x1

    invoke-static {v1, v10, v3, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_0
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    return-object v0
.end method

.method public static setKey(Ljava/lang/String;[B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, p0, p1, v3, v0}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "setKey Exception:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private storeCredentials(Ljava/lang/String;[B)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    const-string v3, "KnoxVpnCredentialHandler"

    const-string v5, "Tima status is unknown"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    goto/16 :goto_7

    :pswitch_0
    const-string v3, "KnoxVpnCredentialHandler"

    const-string v4, "TIMA Compromised"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    :goto_2
    nop

    :goto_3
    return v0

    :pswitch_1
    :try_start_2
    const-string v3, "KnoxVpnCredentialHandler"

    const-string v5, "Tima have been deprecated"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7ec2e91

    if-eq v6, v7, :cond_4

    const v7, 0xc174

    if-eq v6, v7, :cond_3

    const v7, 0xc535

    if-eq v6, v7, :cond_2

    goto :goto_4

    :cond_2
    const-string v6, "3.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_3
    const-string v6, "2.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_5

    :cond_4
    const-string v6, "FIPS3.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_5

    :cond_5
    :goto_4
    move v3, v5

    :goto_5
    packed-switch v3, :pswitch_data_2

    const-string v3, "KnoxVpnCredentialHandler"

    goto/16 :goto_10

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    goto :goto_6

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    nop

    :goto_6
    nop

    :goto_7
    if-eqz p2, :cond_8

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, ""

    invoke-direct {v3, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "An entry is already present, deleting it and updating the name"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v4

    invoke-virtual {v1, p1, v5, v4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    :cond_8
    if-eqz v2, :cond_9

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    :catch_1
    move-exception v3

    goto :goto_9

    :cond_9
    :goto_8
    if-nez v1, :cond_a

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_b

    :goto_9
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    const-string v6, "Failed to close input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_a
    :goto_b
    goto/16 :goto_19

    :pswitch_5
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsForTima20(Ljava/lang/String;[B)Z

    move-result v3
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_b

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_c

    :catch_2
    move-exception v4

    goto :goto_d

    :cond_b
    :goto_c
    if-nez v1, :cond_c

    const-string v4, "KnoxVpnCredentialHandler"

    const-string/jumbo v5, "storeCredentials :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_e

    :goto_d
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_c
    :goto_e
    nop

    :goto_f
    return v3

    :goto_10
    :try_start_6
    const-string/jumbo v4, "unknown TIMA Version"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    if-eqz v2, :cond_d

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_11

    :catch_3
    move-exception v3

    goto :goto_12

    :cond_d
    :goto_11
    if-nez v1, :cond_e

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_13

    :goto_12
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_e
    :goto_13
    nop

    :goto_14
    return v0

    :catchall_0
    move-exception v3

    goto :goto_1a

    :catch_4
    move-exception v3

    :try_start_8
    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "Exception occured while trying to store the info inside keystore"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_f
    if-eqz v2, :cond_10

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_15

    :catch_5
    move-exception v3

    goto :goto_16

    :cond_10
    :goto_15
    if-nez v1, :cond_a

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_b

    :goto_16
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_a

    :catch_6
    move-exception v3

    :try_start_a
    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "KeyStoreException occured while trying to store the info inside keystore"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_11
    if-eqz v2, :cond_12

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_17

    :catch_7
    move-exception v3

    goto :goto_18

    :cond_12
    :goto_17
    if-nez v1, :cond_a

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_b

    :goto_18
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_a

    :goto_19
    return v0

    :goto_1a
    nop

    if-eqz v2, :cond_13

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1b

    :catch_8
    move-exception v4

    goto :goto_1c

    :cond_13
    :goto_1b
    if-nez v1, :cond_14

    const-string v4, "KnoxVpnCredentialHandler"

    const-string/jumbo v5, "storeCredentials :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_1d

    :goto_1c
    nop

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KnoxVpnCredentialHandler"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_14
    :goto_1d
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private storeCredentialsForTima20(Ljava/lang/String;[B)Z
    .locals 9

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v5

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storeCredentialsForTima20 errorCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    invoke-interface {v0, v1, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    :cond_0
    invoke-interface {v0}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v4, 0x1

    return v4

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_1
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_2
    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "storeCredentialsForTima20 failed returning false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private updateTimaVersion()V
    .locals 3

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "2.0"

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    if-eqz v0, :cond_0

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FIPS3.0"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "KnoxVpnCredentialHandler"

    const-string/jumbo v2, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string v0, "KnoxVpnCredentialHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method protected deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "Tima status is unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    move-object v1, v4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    :goto_2
    nop

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_0
    :try_start_2
    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "TIMA Compromised"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_5

    :cond_2
    :goto_4
    if-nez v1, :cond_3

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :goto_5
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_3
    :goto_6
    nop

    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_1
    :try_start_4
    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "Tima have been deprecated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7ec2e91

    if-eq v6, v7, :cond_6

    const v7, 0xc174

    if-eq v6, v7, :cond_5

    const v7, 0xc535

    if-eq v6, v7, :cond_4

    goto :goto_8

    :cond_4
    const-string v6, "3.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    goto :goto_8

    :cond_5
    const-string v6, "2.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    goto :goto_8

    :cond_6
    const-string v6, "FIPS3.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x2

    :cond_7
    :goto_8
    packed-switch v5, :pswitch_data_2

    const-string v4, "KnoxVpnCredentialHandler"

    goto/16 :goto_14

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    move-object v1, v4

    goto :goto_9

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    move-object v1, v4

    nop

    :goto_9
    nop

    :goto_a
    if-eqz v1, :cond_8

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_b

    :catch_2
    move-exception v4

    goto :goto_c

    :cond_9
    :goto_b
    if-nez v1, :cond_a

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_e

    :goto_c
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d
    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_a
    :goto_e
    nop

    :goto_f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_23

    :pswitch_5
    if-eqz v0, :cond_b

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_10

    :catch_3
    move-exception v4

    goto :goto_11

    :cond_b
    :goto_10
    if-nez v1, :cond_c

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_12

    :goto_11
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_c
    :goto_12
    nop

    :goto_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_14
    :try_start_7
    const-string/jumbo v5, "unknown TIMA Version"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_d

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_15

    :catch_4
    move-exception v4

    goto :goto_16

    :cond_d
    :goto_15
    if-nez v1, :cond_e

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_17

    :goto_16
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_e
    :goto_17
    nop

    :goto_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    goto/16 :goto_24

    :catch_5
    move-exception v4

    :try_start_9
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "Exception occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_10

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_19

    :catch_6
    move-exception v4

    goto :goto_1a

    :cond_10
    :goto_19
    if-nez v1, :cond_a

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_e

    :goto_1a
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :catch_7
    move-exception v4

    :try_start_b
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "IOException occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v0, :cond_12

    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1b

    :catch_8
    move-exception v4

    goto :goto_1c

    :cond_12
    :goto_1b
    if-nez v1, :cond_a

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_e

    :goto_1c
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :catch_9
    move-exception v4

    :try_start_d
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_13

    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :cond_13
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "CertificateException occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v0, :cond_14

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1d

    :catch_a
    move-exception v4

    goto :goto_1e

    :cond_14
    :goto_1d
    if-nez v1, :cond_a

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_e

    :goto_1e
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :catch_b
    move-exception v4

    :try_start_f
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_15
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "NoSuchAlgorithmException occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v0, :cond_16

    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1f

    :catch_c
    move-exception v4

    goto :goto_20

    :cond_16
    :goto_1f
    if-nez v1, :cond_a

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_e

    :goto_20
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :catch_d
    move-exception v4

    :try_start_11
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Ljava/security/KeyStoreException;->printStackTrace()V

    :cond_17
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "KeyStoreException occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v0, :cond_18

    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_21

    :catch_e
    move-exception v4

    goto :goto_22

    :cond_18
    :goto_21
    if-nez v1, :cond_a

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto/16 :goto_e

    :goto_22
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :goto_23
    return-void

    :goto_24
    nop

    if-eqz v0, :cond_19

    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_25

    :catch_f
    move-exception v5

    goto :goto_26

    :cond_19
    :goto_25
    if-nez v1, :cond_1a

    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_27

    :goto_26
    nop

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KnoxVpnCredentialHandler"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_1a
    :goto_27
    nop

    :goto_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KnoxVpnCredentialHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieveCredentialsFromKeystore alias retrieved is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    const-string v5, "KnoxVpnCredentialHandler"

    const-string v7, "Tima status is unknown"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    move-object v1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    goto/16 :goto_7

    :pswitch_0
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "TIMA Comprimised"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    :goto_2
    nop

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :pswitch_1
    :try_start_2
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v7, "Tima have been deprecated"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_2
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x7ec2e91

    if-eq v8, v9, :cond_5

    const v9, 0xc174

    if-eq v8, v9, :cond_4

    const v9, 0xc535

    if-eq v8, v9, :cond_3

    goto :goto_4

    :cond_3
    const-string v8, "3.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    const-string v8, "2.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_5
    const-string v8, "FIPS3.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    goto :goto_5

    :cond_6
    :goto_4
    move v5, v7

    :goto_5
    packed-switch v5, :pswitch_data_2

    const-string v5, "KnoxVpnCredentialHandler"

    goto/16 :goto_e

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v5

    move-object v1, v5

    goto :goto_6

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v5

    move-object v1, v5

    nop

    :goto_6
    nop

    :goto_7
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v7

    :cond_7
    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    :catch_1
    move-exception v5

    goto :goto_9

    :cond_8
    :goto_8
    if-nez v1, :cond_11

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_18

    :goto_9
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_17

    :pswitch_5
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_9

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_a

    :catch_2
    move-exception v6

    goto :goto_b

    :cond_9
    :goto_a
    if-nez v1, :cond_a

    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_c

    :goto_b
    nop

    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_a
    :goto_c
    nop

    :goto_d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :goto_e
    :try_start_6
    const-string/jumbo v6, "unknown TIMA Version"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    if-eqz v2, :cond_b

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_f

    :catch_3
    move-exception v5

    goto :goto_10

    :cond_b
    :goto_f
    if-nez v1, :cond_c

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_11

    :goto_10
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_c
    :goto_11
    nop

    :goto_12
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v5

    goto/16 :goto_1a

    :catch_4
    move-exception v5

    :try_start_8
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "Exception occured while trying to retrieve the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_d
    if-eqz v2, :cond_e

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_13

    :catch_5
    move-exception v5

    goto :goto_14

    :cond_e
    :goto_13
    if-nez v1, :cond_11

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_18

    :goto_14
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_17

    :catch_6
    move-exception v5

    :try_start_a
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "KeyStoreException occured while trying to retrieve the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_f
    if-eqz v2, :cond_10

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_15

    :catch_7
    move-exception v5

    goto :goto_16

    :cond_10
    :goto_15
    if-nez v1, :cond_11

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_18

    :goto_16
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_17
    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_11
    :goto_18
    nop

    :goto_19
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :goto_1a
    nop

    if-eqz v2, :cond_12

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1b

    :catch_8
    move-exception v6

    goto :goto_1c

    :cond_12
    :goto_1b
    if-nez v1, :cond_13

    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_1d

    :goto_1c
    nop

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KnoxVpnCredentialHandler"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_13
    :goto_1d
    nop

    :goto_1e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "N/A"

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentials(Ljava/lang/String;[B)Z

    move-result v4

    move v0, v4

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeCredentialsInKeystore status key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

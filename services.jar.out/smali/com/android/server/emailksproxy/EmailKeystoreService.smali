.class public Lcom/android/server/emailksproxy/EmailKeystoreService;
.super Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;
.source "EmailKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreStatus;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreErrors;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "EmailKeystoreService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/emailksproxy/EmailKeystoreService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v2, Lcom/android/server/emailksproxy/EmailKeystoreService$2;

    invoke-direct {v2, v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/security/IKeyChainService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "EmailKeystoreService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyChainConnection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-virtual {p0, v3, v2, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    new-instance v8, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/security/IKeyChainService;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v2, v9, v10}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/emailksproxy/EmailKeystoreService$1;)V

    return-object v8

    :cond_1
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Could not bind to KeyChainService"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private broadcastStorageChange()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCEPCaller()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private checkCaller()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private installCaCertificate([B)V
    .locals 5

    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "EmailKeystoreService"

    const-string v3, "CA Certificate parse error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "EmailKeystoreService"

    const-string v4, "CA Certificate successfully installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "EmailKeystoreService"

    const-string v3, "CertificateException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "EmailKeystoreService"

    const-string v3, "IOException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->broadcastStorageChange()V

    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    new-instance v4, Lsun/security/x509/AlgorithmId;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v5, v3}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v4}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    invoke-static {v4}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "System Service"

    const-string v3, "Failed to parse key data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private makeUidWithUserID(II)I
    .locals 1

    if-gez p1, :cond_0

    return p2

    :cond_0
    const v0, 0x186a0

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public getKeystoreStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    sget-object v3, Lcom/android/server/emailksproxy/EmailKeystoreService$3;->$SwitchMap$android$security$KeyStore$State:[I

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    nop

    :goto_0
    nop

    sget-boolean v1, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EmailKeystoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeystoreStatus returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/emailksproxy/EmailKeystoreService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/emailksproxy/EmailKeystoreService$1;-><init>(Lcom/android/server/emailksproxy/EmailKeystoreService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->certs:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/emailksproxy/EmailKeystoreService;->installCaCertificate([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    return v1
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CZI)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    return v5

    :cond_0
    if-nez v2, :cond_1

    return v5

    :cond_1
    const-wide/16 v6, 0x0

    :try_start_0
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iget v10, v2, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    new-array v10, v10, [B

    iget-object v11, v2, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    move-object v10, v11

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v11, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v12

    new-array v13, v5, [Ljava/security/cert/Certificate;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-wide v6, v15

    sget-boolean v15, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v15, :cond_2

    const-string v15, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_7

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRCERT_"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v5, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object v11, v15, v5

    invoke-static {v15}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v15

    move-object/from16 v17, v0

    const/16 v0, 0x3f2

    invoke-virtual {v9, v14, v15, v0, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v14
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_3

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :cond_3
    :try_start_1
    invoke-interface {v12}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isHardwareBackedKey([B)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRPKEY_"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12}, Ljava/security/Key;->getEncoded()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v9, v5, v14, v0, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v5
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_5

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :cond_4
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "USRPKEY_"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12}, Ljava/security/Key;->getEncoded()[B

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v9, v5, v14, v0, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v5
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_5

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v15

    :cond_5
    :try_start_3
    iget v5, v2, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    if-lez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CACERT_"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v14, v2, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    const/4 v15, 0x0

    invoke-virtual {v9, v5, v14, v0, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_6

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :cond_6
    goto/16 :goto_0

    :cond_7
    move-object/from16 v17, v0

    :try_start_4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/security/cert/Certificate;

    const/4 v9, 0x0

    aput-object v11, v14, v9

    invoke-static {v14}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v9

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const/16 v15, 0x3e8

    invoke-direct {v1, v14, v15}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v0, v5, v9, v14, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "EmailKeystoreService"

    const-string v9, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Alias : USRCERT_"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uid : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const/16 v15, 0x3e8

    invoke-direct {v1, v14, v15}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x1

    return v5

    :cond_9
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const/16 v15, 0x3e8

    invoke-direct {v1, v14, v15}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v0, v5, v9, v14, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_b

    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "EmailKeystoreService"

    const-string v9, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Alias : USRPKEY_"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uid : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const/16 v15, 0x3e8

    invoke-direct {v1, v14, v15}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x1

    return v5

    :cond_b
    :try_start_6
    iget v5, v2, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    if-lez v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v2, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const/16 v15, 0x3e8

    invoke-direct {v1, v14, v15}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v0, v5, v9, v14, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_d

    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "EmailKeystoreService"

    const-string v9, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Alias : CACERT_"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uid : "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const/16 v15, 0x3e8

    invoke-direct {v1, v14, v15}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x1

    return v5

    :cond_d
    :goto_0
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x4

    return v5

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x2

    return v5

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x4

    return v5

    :catch_3
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v5, 0x3

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_4
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x2

    return v5

    :catch_5
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x2

    return v5

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "EmailKeystoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAliasExists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const/16 v2, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    return v4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    nop

    return v1

    :cond_5
    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

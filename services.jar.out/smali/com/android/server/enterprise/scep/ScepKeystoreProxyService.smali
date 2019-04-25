.class public Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.super Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyStoreErrors;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SCEPKeystoreProxyService"


# instance fields
.field private UidoftheCert:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

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

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SCEPKeystoreProxyService"

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

    new-instance v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/security/IKeyChainService;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v2, v9, v10}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;)V

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

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCEPCaller()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

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
    const/4 v4, 0x0

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
.method public deletecertificateEntry(Ljava/lang/String;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    return v5

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    sget-boolean v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "SCEPKeystoreProxyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteCertificateEntry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v6, 0x3e8

    if-nez p2, :cond_2

    const/16 v0, 0x3e8

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move v1, v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    move v2, v7

    goto :goto_0

    :cond_2
    const/16 v0, 0x3f2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move v1, v7

    const/16 v2, 0x3f2

    :goto_0
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: UidoftheCert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: processId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v7, 0x0

    if-nez p2, :cond_14

    if-ne v2, v6, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v6

    move-object v3, v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "USRCERT_"

    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_6

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delete user cert: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    nop

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_7
    return v5

    :cond_8
    const/4 v7, 0x1

    :try_start_1
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_a

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delete user cert: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_a

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "CACERT_"

    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_b

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delete CA Cert: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    nop

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_c
    return v5

    :cond_d
    const/4 v7, 0x1

    :try_start_2
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_f

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delete CA cert: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_f

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v8, "USRPKEY_"

    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_10

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delKeyAsUser: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_10
    nop

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_11
    return v5

    :cond_12
    const/4 v7, 0x1

    :try_start_3
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_24

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delKeyAsUser: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_13
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_24

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : USRPKEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_14
    :goto_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_17

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_15

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delete user cert: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_15
    nop

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_16
    return v5

    :cond_17
    const/4 v7, 0x1

    :try_start_4
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_19

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delete user cert: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_18
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_19

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1c

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1a

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delete CA Cert: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1a
    nop

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1b
    return v5

    :cond_1c
    const/4 v7, 0x1

    :try_start_5
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1e

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delete CA cert: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_1d
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1e

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_22

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_21

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1f

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delKeyAsUser: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1f
    nop

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_20
    return v5

    :cond_21
    const/4 v7, 0x1

    :try_start_6
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_23

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delKeyAsUser: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_22
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_23

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : USRPKEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_23
    :goto_6
    nop

    :cond_24
    :goto_7
    if-ne v5, v7, :cond_26

    const/4 v5, 0x0

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_25
    return v5

    :cond_26
    nop

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_27
    return v5

    :catchall_0
    move-exception v4

    goto :goto_8

    :catch_0
    move-exception v4

    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v6, :cond_28

    const-string v6, "SCEPKeystoreProxyService"

    const-string v7, "deleteCertificateEntry return exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_28
    nop

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_29
    return v5

    :goto_8
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_2a
    throw v4
.end method

.method public getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/cepproxyks/CertificateAKS;

    invoke-direct {v2}, Lcom/samsung/android/cepproxyks/CertificateAKS;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCertificate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x3e8

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    const/16 v7, 0x3f2

    if-ne v5, v6, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v6

    :goto_0
    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v6

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v6

    move-object v4, v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    const-string v8, "USRCERT_"

    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v8

    :goto_1
    if-nez v6, :cond_5

    nop

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4
    return-object v1

    :cond_5
    :try_start_1
    invoke-static {v6}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/security/cert/Certificate;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/Certificate;

    aput-object v11, v9, v10

    iput-object v9, v2, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    nop

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_7
    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_8
    return-object v1

    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_9
    throw v1
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

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

    new-instance v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3
    return v5

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4
    return v2

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_5
    throw v1
.end method

.method public installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/16 v0, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v0, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v7

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_2
    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public installCaCertificate([B)V
    .locals 5

    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "CA Certificate parse error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "SCEPKeystoreProxyService"

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

    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "CertificateException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "IOException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->broadcastStorageChange()V

    return-void
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    return v5

    :cond_0
    if-nez v2, :cond_1

    return v5

    :cond_1
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    move-object v8, v0

    :try_start_0
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iget v11, v2, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    new-array v11, v11, [B

    iget-object v12, v2, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    move-object v11, v12

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v12, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v13

    new-array v14, v5, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v6, v16

    sget-boolean v16, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v16, :cond_2

    const-string v10, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_b

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v0

    const/4 v15, 0x1

    new-array v0, v15, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v12, v0, v15

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    const/16 v4, 0x3f2

    invoke-virtual {v10, v5, v0, v4, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :try_start_1
    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->isHardwareBackedKey([B)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    const/4 v15, 0x0

    invoke-virtual {v10, v0, v5, v4, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_8

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    const/4 v15, 0x1

    invoke-virtual {v10, v0, v5, v4, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_8

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_7
    const/4 v0, 0x1

    return v0

    :cond_8
    :try_start_3
    iget v0, v2, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v15, 0x0

    invoke-virtual {v10, v0, v5, v4, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_a

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_a
    goto/16 :goto_0

    :cond_b
    move-object/from16 v18, v0

    :try_start_4
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v4, 0x3e8

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    if-ne v0, v4, :cond_15

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/security/cert/Certificate;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v15}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v15

    invoke-virtual {v4, v5, v15, v0, v10}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_e

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : USRCERT_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_d
    const/4 v5, 0x1

    return v5

    :cond_e
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRPKEY_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    const/4 v15, 0x1

    invoke-virtual {v4, v5, v10, v0, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_11

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_f

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : USRPKEY_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_f
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_10
    const/4 v5, 0x1

    return v5

    :cond_11
    :try_start_6
    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "MarkKeyAsUserSelectable call"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;

    invoke-direct {v5, v1, v3, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;Ljava/lang/String;I)V

    const/4 v10, 0x0

    new-array v15, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v15}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v5, v2, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CACERT_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v2, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v15, 0x1

    invoke-virtual {v4, v5, v10, v0, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_14

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_12

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : CACERT_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_12
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_13
    const/4 v5, 0x1

    return v5

    :cond_14
    goto/16 :goto_0

    :cond_15
    :try_start_7
    iget-object v4, v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v4

    move-object v8, v4

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    const-string v5, "USRCERT_"

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/security/cert/Certificate;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v15}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v15

    invoke-interface {v4, v3, v5, v15, v10}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v5

    if-nez v5, :cond_18

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_16

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "USER_CERTIFICATE keyChainService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : USRCERT_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_16
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_17
    const/4 v5, 0x1

    return v5

    :cond_18
    :try_start_8
    const-string v5, "USRPKEY_"

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    const/4 v15, 0x1

    invoke-interface {v4, v3, v5, v10, v15}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v5

    if-nez v5, :cond_1b

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_19

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "USER_PRIVATE_KEY keyChainService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : USRPKEY_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_19
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1a
    const/4 v5, 0x1

    return v5

    :cond_1b
    :try_start_9
    const-string v5, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "setUserSelectable called for other uid"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V

    iget v5, v2, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v5, :cond_1e

    const-string v5, "CACERT_"

    iget-object v10, v2, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v15, 0x1

    invoke-interface {v4, v3, v5, v10, v15}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v5

    if-nez v5, :cond_1e

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_1c

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "CA_CERTIFICATE keyChainService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : CACERT_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_1c
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1d
    const/4 v5, 0x1

    return v5

    :cond_1e
    :goto_0
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_1f

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1f
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_20

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_20
    const/4 v4, 0x4

    return v4

    :catch_1
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_21

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_21
    const/4 v4, 0x2

    return v4

    :catch_2
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_22

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_22
    const/4 v4, 0x4

    return v4

    :catch_3
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v4, 0x3

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_23

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_23
    return v4

    :catch_4
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_24

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_24
    const/4 v4, 0x2

    return v4

    :catch_5
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_25

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_25
    const/4 v4, 0x2

    return v4

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_26

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_26
    throw v0
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SCEPKeystoreProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAliasExists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    const/16 v5, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz p2, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_8

    :cond_2
    nop

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3
    return v7

    :cond_4
    if-ne v3, v4, :cond_7

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_7

    :cond_5
    nop

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_6
    return v7

    :cond_7
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v4

    move-object v2, v4

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_8

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_9
    return v1

    :cond_a
    :goto_0
    nop

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_b
    return v7

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_c
    return v1

    :goto_1
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_d
    throw v1
.end method

.method setPrivateKey([B)Ljava/security/PrivateKey;
    .locals 2

    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

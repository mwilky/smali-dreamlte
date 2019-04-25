.class public Lcom/android/server/enterprise/certificate/CertificatePolicy;
.super Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;
.source "CertificatePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;,
        Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;
    }
.end annotation


# static fields
.field private static final ADD_TRUSTED_LIST:I = 0x0

.field private static final ADD_UNTRUSTED_LIST:I = 0x1

.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final CERTIFICATE_POLICY_SERVICE:Ljava/lang/String; = "CertificatePolicy"

.field private static final CERT_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.certinstaller"

.field private static final CHROME_MODULE:Ljava/lang/String; = "Chrome_module"

.field private static final GET_TRUSTED_LIST:I = 0x4

.field private static final GET_UNTRUSTED_LIST:I = 0x5

.field private static final MIGRATION_DONE:Ljava/lang/String; = "ok"

.field private static final PACKAGE_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PERFORM_MIGRATION_KEY:Ljava/lang/String; = "cert_migration"

.field private static final PERM_APP_PKEY_HOST_DOT:Ljava/lang/String; = "."

.field private static final PERM_APP_PKEY_HOST_WILDCARD:Ljava/lang/String; = "*"

.field private static final PERM_APP_PKEY_PORT_WILDCARD:I = -0x1

.field private static final REMOVE_TRUSTED_LIST:I = 0x2

.field private static final REMOVE_UNTRUSTED_LIST:I = 0x3

.field private static final SBROWSER_PKGNAME:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field private static final TAG:Ljava/lang/String; = "CertificatePolicy"

.field public static final TRUSTED_POLICY_MASK:I = 0x1

.field public static final TRUST_LIST_TOKEN:Ljava/lang/String; = ","

.field public static final UNTRUSTED_POLICY_MASK:I = 0x2


# instance fields
.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mCheckRevocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private final mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field private final mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

.field private mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field private mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field private mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerReceivers()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificateCache;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificateCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificateCache;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificateCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackRefreshHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    new-instance v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    new-instance v1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->displayAppSignature(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->onUserRemoved(I)V

    return-void
.end method

.method private addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CERTIFICATE"

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, ""

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    goto :goto_2

    :cond_3
    const-string v3, ""

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    invoke-virtual {v4, p1, v5, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v1

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4
.end method

.method private auditLog(Ljava/util/List;ILjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string/jumbo v4, "null"

    :goto_1
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    const-string/jumbo v5, "null"

    :goto_2
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "CertificatePolicy"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v13, p3

    :try_start_1
    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    move-object/from16 v13, p3

    :goto_3
    goto :goto_0

    :cond_3
    move-object/from16 v13, p3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v13, p3

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private checkPackageCallerOrEnforcePermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p1, v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    return-object v2
.end method

.method private clearCertificates(II)Z
    .locals 7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v1, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearTrustDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v6

    invoke-virtual {v6, v3, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v1, p1, v3, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private clearPermissionApplicationPrivateKey(I)Z
    .locals 12

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "pkgName"

    const-string v2, "alias"

    const-string/jumbo v3, "storageName"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PermAppPrivateKey"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-string v5, "alias"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v5, "storageName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PermAppPrivateKey"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private clearTrustDB(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "CERTIFICATE"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "CERTIFICATE"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method private displayAppSignature(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2240

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "CertificatePolicy"

    const-string v7, "Name not found"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v5, :cond_3

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_3

    move-object v6, v3

    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v7, "CertificatePolicy"

    const-string v8, "Name not found"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget-object v8, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x10409b9

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const-string v12, "\n"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v11, v4

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v11, v7

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, " / "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v11, v7

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    move-object v11, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v14, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v4, "\n"

    const-string v3, ""

    invoke-virtual {v15, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080078

    new-instance v15, Landroid/app/Notification;

    invoke-direct {v15, v4, v11, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v16, v0

    iget v0, v15, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v15, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    move/from16 v17, v4

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    move-object/from16 v18, v5

    const-string/jumbo v5, "package"

    move-object/from16 v19, v6

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "appInfoPkgName"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v5, v14, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->getRandomInt()I

    move-result v5

    invoke-virtual {v10, v5, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method

.method private enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_CERTIFICATE"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceNotifyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_CERTIFICATE"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_CERTIFICATE"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v2, "CertificatePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find credential storage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    goto :goto_2

    :cond_3
    const-string v1, "CertificatePolicy"

    const-string v2, "Couldn\'t enforce UCM permission. Is UCM service running?"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0
.end method

.method private executeRollbackRefresh(II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static findIssuerInAndroidKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;I)Ljava/security/cert/X509Certificate;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/security/cert/Certificate;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v5}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/security/IKeyChainService;->findIssuer([B)[B

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v7

    if-eqz v0, :cond_1

    nop

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "findIssuerInAndroidKeystore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "findIssuerInAndroidKeystore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v5

    const-string v6, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "findIssuerInAndroidKeystore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v4

    :try_start_3
    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "findIssuerInAndroidKeystore - is KeyChainService running for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    goto :goto_2

    :catch_4
    move-exception v4

    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "findIssuerInAndroidKeystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_2

    :goto_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private fromContentValues(Landroid/content/ContentValues;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    const-string v1, "adminUid"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string/jumbo v3, "pkgName"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "host"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "port"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/Integer;

    const/4 v7, -0x1

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, v4

    :cond_0
    const-string v4, "alias"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "storageName"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    nop

    invoke-static {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->setAdminPkgName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CertificatePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ContentValues error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    nop

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->findIssuerInAndroidKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;I)Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "CertificatePolicy"

    const-string/jumbo v5, "getCertificateChain error. Could not find certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not build certificate chain; certificate not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "adminUid"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CERTIFICATE"

    invoke-virtual {v2, v3, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/samsung/android/knox/keystore/CertificateControlInfo;

    invoke-direct {v7}, Lcom/samsung/android/knox/keystore/CertificateControlInfo;-><init>()V

    const-string v8, "adminUid"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/android/knox/keystore/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    const-string v9, ","

    invoke-static {v6, v9}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3, v9, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v3, v7, Lcom/samsung/android/knox/keystore/CertificateControlInfo;->entries:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getCertificatesList(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v1, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private getContainersForRollbackOrRefresh(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getNumAliasesForUser(I)I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackagesForPid(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_1

    iget-object v5, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v4, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    nop

    :cond_0
    return-object v4

    :cond_1
    goto :goto_0

    :cond_2
    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z
    .locals 9

    move v0, p2

    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    move v4, p2

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CERTIFICATE"

    invoke-virtual {v5, v1, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPolicyValueBackwardCompatibleAsUser: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v5, v4

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq p3, v6, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v5

    :cond_1
    if-ne p2, v3, :cond_3

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    move v2, v3

    nop

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    move v0, v2

    :goto_3
    goto :goto_7

    :cond_6
    if-lez p3, :cond_b

    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v4

    if-ne p2, v3, :cond_8

    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    move v2, v3

    nop

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    if-nez v1, :cond_a

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    goto :goto_5

    :cond_a
    :goto_4
    move v2, v3

    :goto_5
    move v0, v2

    :goto_6
    goto :goto_7

    :cond_b
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    :goto_7
    return v0
.end method

.method private getStrictestValueAsUser(Ljava/lang/String;ZI)Z
    .locals 4

    move v0, p2

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "CERTIFICATE"

    invoke-virtual {v1, v2, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private declared-synchronized getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private initCache(I)V
    .locals 13

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificateCache;->clear()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "adminUid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CERTIFICATE"

    invoke-virtual {v6, v7, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v10, "adminUid"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, ","

    invoke-static {v9, v11}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1, v5, v12, v11}, Lcom/android/server/enterprise/certificate/CertificateCache;->addToCache(IILjava/util/List;)V

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private installCertificates(Lcom/android/server/enterprise/certificate/EdmKeyStore;Ljava/util/List;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private loadCache()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    return-void
.end method

.method private obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const-string v0, "CertificatePolicy"

    const-string/jumbo v1, "obtainMsgFromModule"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, -0x1

    const-string/jumbo v3, "wifi_module"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040b77

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "CertificatePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "eventReason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    array-length v4, v3

    if-le v4, v2, :cond_0

    aget-object v4, v3, v2

    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reasonStr "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "reason="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v6

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "CertificatePolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error converting reason to integer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    :cond_0
    :goto_0
    goto/16 :goto_8

    :cond_1
    const-string v3, "browser_module"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0xd

    const/4 v6, -0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v7, 0x104016c

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    if-eqz p2, :cond_7

    move v3, v6

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v6, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error converting reason to integer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v4, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "errorCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v3, v5, :cond_2

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x4

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0xd

    nop

    :goto_2
    goto/16 :goto_8

    :cond_3
    const-string/jumbo v3, "package_manager_module"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040649

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v6

    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v4

    goto :goto_3

    :catch_2
    move-exception v4

    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error converting reason to integer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    packed-switch v3, :pswitch_data_1

    const/4 v1, 0x0

    goto :goto_4

    :pswitch_5
    const/16 v1, 0xa

    goto :goto_4

    :pswitch_6
    const/16 v1, 0xc

    goto :goto_4

    :pswitch_7
    const/16 v1, 0xb

    nop

    :goto_4
    goto/16 :goto_8

    :cond_4
    const-string/jumbo v3, "installer_module"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040439

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v6

    :try_start_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move v3, v4

    goto :goto_5

    :catch_3
    move-exception v4

    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error converting reason to integer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    packed-switch v3, :pswitch_data_2

    :pswitch_8
    const/4 v1, 0x0

    goto :goto_6

    :pswitch_9
    const/16 v1, 0xd

    goto :goto_6

    :pswitch_a
    const/16 v1, 0xb

    goto :goto_6

    :pswitch_b
    const/16 v1, 0xa

    goto :goto_6

    :pswitch_c
    const/16 v1, 0x8

    goto :goto_6

    :pswitch_d
    const/4 v1, 0x4

    goto :goto_6

    :pswitch_e
    const/4 v1, 0x3

    goto :goto_6

    :pswitch_f
    const/4 v1, 0x2

    goto :goto_6

    :pswitch_10
    const/4 v1, 0x1

    nop

    :goto_6
    goto :goto_8

    :cond_5
    const-string v3, "Chrome_module"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CHROME"

    aput-object v3, v0, v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v6

    :try_start_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move v3, v4

    goto :goto_7

    :catch_4
    move-exception v4

    const-string v6, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error converting reason to integer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-eq v3, v5, :cond_6

    packed-switch v3, :pswitch_data_3

    const/4 v1, 0x0

    goto :goto_8

    :pswitch_11
    const/4 v1, 0x4

    goto :goto_8

    :pswitch_12
    const/4 v1, 0x3

    goto :goto_8

    :pswitch_13
    const/4 v1, 0x2

    goto :goto_8

    :pswitch_14
    const/4 v1, 0x1

    goto :goto_8

    :cond_6
    const/16 v1, 0xd

    nop

    :cond_7
    :goto_8
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x104019e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x104019d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040197

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040196

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040198

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040192

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x104019b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040194

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040193

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_9

    :pswitch_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x104019c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_9

    :pswitch_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040195

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_9

    :pswitch_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040199

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_9

    :pswitch_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x104019a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_9

    :pswitch_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x104019f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    nop

    :goto_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x69
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method private onUserRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->hasPendingActionForUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserSwitched(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->isGuestUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    :cond_0
    return-void
.end method

.method private performGenericTableUpgrade()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "userRemovedList"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/utils/Utils;->isInteger(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v6, 0x1

    if-le v8, v9, :cond_0

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    goto :goto_3

    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    goto :goto_1

    :cond_2
    const-string/jumbo v4, "userRemovedList"

    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private performKeystoreUpgrade()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    return-void
.end method

.method private registerPackageChangeReceiver()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "CertificatePolicy"

    const-string/jumbo v2, "registerPackageChangeReceiver() : Done"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAuditMessageFormat()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p4, p2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->auditLog(Ljava/util/List;ILjava/lang/String;)V

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeFromCache(IILjava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->isAliasPresent(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAction()I

    move-result v3

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v4

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->updateKeystores(III)V

    const/4 v3, 0x1

    return v3
.end method

.method private removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    invoke-virtual {v3, p1, v4, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CERTIFICATE"

    invoke-virtual {v7, p1, v8, p3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    return-object v7

    :cond_3
    return-object v1
.end method

.method private retrieveAppPermissionsFromDb(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "adminUid"

    const-string/jumbo v2, "pkgName"

    const-string/jumbo v3, "host"

    const-string/jumbo v4, "port"

    const-string v5, "alias"

    const-string/jumbo v6, "storageName"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    nop

    const/4 v3, 0x0

    invoke-static {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#SelectClause#"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PermAppPrivateKey"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->fromContentValues(Landroid/content/ContentValues;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v0, v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v7, v8}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    if-eqz v6, :cond_4

    if-eqz p4, :cond_2

    :try_start_2
    new-instance v7, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v7, p4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v3

    move-object p3, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3, v5, p3, p5}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    goto :goto_4

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_3
    throw v3

    :goto_2
    nop

    const/4 v3, 0x0

    if-eqz v6, :cond_5

    :goto_3
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_5

    :cond_4
    :goto_4
    move v3, v4

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    const-string v4, "com.sec.android.app.sbrowser"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_6
    return v3

    :catchall_1
    move-exception v3

    goto :goto_6

    :catch_1
    move-exception v3

    :try_start_3
    const-string v7, "CertificatePolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPrivateKeyGrant - is KeyChainService running for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_2
    move-exception v3

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_2
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "host"

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "port"

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "alias"

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "storageName"

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private triggerContainerOperation(IIII)V
    .locals 3

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getContainersForRollbackOrRefresh(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " validateAlias called. storage name : null or empty, alias : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", userId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    move-object/from16 v5, p0

    :cond_0
    move-object/from16 v6, p5

    goto/16 :goto_0

    :cond_1
    const-string v5, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " validateAlias called. storage name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", alias : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", userId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p0

    iget-object v7, v5, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v9, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v11, v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string/jumbo v12, "stringarrayresponse"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "errorresponse"

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "CertificatePolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "statusCode - "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_2

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    return-object v6

    :goto_0
    if-nez v6, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    return-object v4

    :cond_4
    const/4 v7, 0x0

    return-object v7
.end method

.method private varargs validateCerts(I[Ljava/security/cert/X509Certificate;)I
    .locals 11

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v6, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    goto :goto_0

    :cond_0
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    move-object v6, v7

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    move-object v6, v7

    :goto_1
    new-instance v7, Ljava/security/cert/TrustAnchor;

    invoke-direct {v7, v6, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    move-object v3, v8

    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v9
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v9

    nop

    :try_start_1
    new-instance v5, Ljava/security/cert/PKIXParameters;

    invoke-direct {v5, v3}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    nop

    nop

    nop

    :try_start_2
    const-string v6, "PKIX"

    invoke-static {v6}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v6
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v6

    nop

    invoke-virtual {v5, v4}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    nop

    :try_start_3
    invoke-virtual {v2, v1, v5}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v6

    const-string v7, "CertificatePolicy"

    const-string v8, "Validation success"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, -0x1

    goto/16 :goto_6

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CertificatePolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Validation failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Additional certificate path checker failed."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    :cond_2
    const-string/jumbo v8, "is revoked"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "Certificate revocation after"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v8, "OCSP check failed!"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "Certificate status could not be determined."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "CRL distribution point extension could not be read"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "Distribution points could not be read."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "No valid CRL found."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "Unable to get CRL for certificate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    const-string v8, ", expiration time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Ljava/security/cert/CertificateExpiredException;

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    const-string v8, ", validation time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    :goto_2
    const/4 v4, 0x3

    goto :goto_7

    :cond_8
    :goto_3
    const/4 v4, 0x4

    goto :goto_7

    :cond_9
    :goto_4
    const/16 v4, 0xd

    goto :goto_7

    :cond_a
    :goto_5
    const/4 v4, 0x2

    goto :goto_7

    :catch_1
    move-exception v6

    const-string v7, "CertificatePolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Should not happen!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_6
    nop

    :goto_7
    return v4

    :catch_2
    move-exception v6

    const-string v7, "CertificatePolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Should not happen!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_3
    move-exception v2

    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Should not happen!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_4
    move-exception v2

    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "If FIPS mode is turned on, cannot use MD5 algorithm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_5
    move-exception v2

    const-string v4, "CertificatePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure generating cert path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    return v4
.end method

.method private validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;
    .locals 12

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    move-result v9

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    new-instance v11, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    move-object v1, v11

    move-object v2, v0

    move-object v3, v7

    move v4, v9

    move-object v5, v8

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;I)Z"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v4, p0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v6

    invoke-static {p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v8

    invoke-direct {p0, v8, v7, p3, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->installCertificates(Lcom/android/server/enterprise/certificate/EdmKeyStore;Ljava/util/List;II)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    return v3

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    move v9, v3

    :goto_0
    and-int/2addr v2, v9

    nop

    invoke-virtual {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    return v3

    :cond_3
    invoke-virtual {v5, v1, v0, v9}, Lcom/android/server/enterprise/certificate/CertificateCache;->addToCache(IILjava/util/List;)V

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAuditMessageFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->auditLog(Ljava/util/List;ILjava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAction()I

    move-result v3

    invoke-virtual {p0, v3, v6, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->updateKeystores(III)V

    return v2

    :cond_5
    :goto_1
    return v3
.end method

.method public addPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, "CertificatePolicy"

    const-string v7, "Operation not allowed, another rule for given package name has host set to wildcard"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PermAppPrivateKey"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    const/4 v3, 0x1

    nop

    :cond_3
    move v1, v3

    :cond_4
    return v1
.end method

.method public addTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public addUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public allowUserRemoveCertificates(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "CERTIFICATE"

    const-string v4, "allowUserRemoveCertificate"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    :cond_0
    return v0
.end method

.method public clearPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearPermissionApplicationPrivateKey(I)Z

    move-result v0

    return v0
.end method

.method public clearTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    move-result v0

    return v0
.end method

.method public clearUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: can\'t dump CertificatePolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Trusted Cache]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/certificate/CertificateCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Untrusted Cache]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/certificate/CertificateCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Trusted Keystore]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[User Keystore]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Native Keystore]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Untrusted Keystore]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v1, "PermAppPrivateKey"

    const-string v2, "adminUid"

    const-string/jumbo v3, "pkgName"

    const-string/jumbo v4, "host"

    const-string/jumbo v5, "port"

    const-string v6, "alias"

    const-string/jumbo v7, "storageName"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v1, "CERTIFICATE"

    const-string/jumbo v2, "trustedCaList"

    const-string/jumbo v3, "untrustedCertsList"

    const-string/jumbo v4, "signatureIdentityInformationEnabled"

    const-string/jumbo v5, "notificateSignatureFailureToUser"

    const-string/jumbo v6, "validateCertificateAtInstall"

    const-string v7, "allowUserRemoveCertificate"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string/jumbo v1, "generic"

    const-string/jumbo v2, "systemDisabledList"

    const-string/jumbo v3, "systemPrevDisabledList"

    const-string/jumbo v4, "userRemovedList"

    const-string/jumbo v5, "nativeRemovedList"

    const-string/jumbo v6, "nativeRemovedList_wifi"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public enableCertificateFailureNotification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string/jumbo v3, "notificateSignatureFailureToUser"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableCertificateValidationAtInstall(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CERTIFICATE"

    const-string/jumbo v4, "validateCertificateAtInstall"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v4, "CERTIFICATE_VALIDATION"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return v2
.end method

.method public enableSignatureIdentityInformation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string/jumbo v3, "signatureIdentityInformationEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public generateAliases(Ljava/util/List;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getGenericList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v6, 0x0

    move-object v7, v6

    :try_start_0
    const-string v8, "X509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v8

    nop

    nop

    :try_start_1
    invoke-virtual {v7, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v8

    nop

    new-instance v8, Landroid/net/http/SslCertificate;

    invoke-direct {v8, v6}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v8}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    move-object v12, v10

    move-object v13, v9

    :goto_1
    goto :goto_2

    :cond_0
    move-object v12, v10

    move-object v13, v11

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v9

    const-string v13, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    :goto_2
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    aput-object v12, v14, v0

    const/4 v15, 0x1

    aput-object v13, v14, v15

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v8, "CertificatePolicy"

    const-string v9, "X509Certificate error"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_1
    move-exception v0

    const-string v6, "CertificatePolicy"

    const-string v8, "CertificateFactory error"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    return-object v2
.end method

.method public getListPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z
    .locals 2

    const-string/jumbo v0, "systemDisabledList"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZZI)Z

    move-result v0

    return v0
.end method

.method public isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZZI)Z
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v1, p4}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v1, p4}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v4, v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/security/cert/X509Certificate;Z)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p0, v3, v2, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, v3, v2, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v2

    and-int/2addr v1, v2

    :goto_1
    if-eqz p2, :cond_3

    if-nez v1, :cond_3

    const v2, 0x10401a0

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_3
    return v1
.end method

.method public isCertificateFailureNotificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-string/jumbo v1, "notificateSignatureFailureToUser"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public isCertificateTrustedUntrustedEnabledAsUser(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isCertificateValidationAtInstallEnabledAsUser(I)Z
    .locals 2

    const-string/jumbo v0, "validateCertificateAtInstall"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackagesForPid(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.certinstaller"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "*"

    invoke-virtual {v2, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method public isPrivateKeyApplicationPermitted(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    if-eqz v1, :cond_8

    move-object/from16 v1, p0

    move/from16 v9, p5

    invoke-direct {v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object/from16 v12, p2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    move-object v2, v1

    move-object v5, v8

    move v6, v9

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    invoke-static {v12}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v14, v2

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    move-result v2

    move/from16 v15, p3

    if-ne v15, v2, :cond_5

    goto :goto_1

    :cond_3
    move/from16 v15, p3

    :goto_1
    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    move-object v2, v1

    move-object v5, v8

    move v6, v9

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v15, p3

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    goto/16 :goto_0

    :cond_7
    move/from16 v15, p3

    goto :goto_4

    :cond_8
    move-object/from16 v1, p0

    move/from16 v15, p3

    move/from16 v9, p5

    move-object/from16 v12, p2

    :goto_4
    return-object v0
.end method

.method public isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackagesForPid(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.certinstaller"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "*"

    invoke-virtual {v2, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method public isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    const-string v0, "com.android.packageinstaller"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->checkPackageCallerOrEnforcePermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "CERTIFICATE"

    const-string/jumbo v3, "signatureIdentityInformationEnabled"

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .locals 2

    const-string v0, "allowUserRemoveCertificate"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 15

    move-object v7, p0

    move/from16 v8, p4

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceNotifyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "CertificatePolicy"

    const-string/jumbo v3, "notifyCertificateFailure"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.CERTIFICATE_FAILURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MODULE"

    const/4 v10, 0x0

    aget-object v2, v0, v10

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MESSAGE"

    const/4 v11, 0x1

    aget-object v2, v0, v11

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "edm.intent.certificate.action.certificate.failure"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v1

    const-string v1, "certificate_failure_module"

    aget-object v2, v0, v10

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "certificate_failure_message"

    aget-object v2, v0, v11

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.edm.intent.extra.USER_ID"

    invoke-virtual {v12, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v13, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;

    move-object v1, v13

    move-object v2, v7

    move v3, v8

    move-object v4, v0

    move-object v5, v9

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I[Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string/jumbo v2, "notificateSignatureFailureToUser"

    invoke-direct {v7, v2, v10, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v6, 0x10402b7

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-virtual {v5, v6, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceSystemUser()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CERTIFICATE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_REMOVED_SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.edm.intent.action.CERTIFICATE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.edm.intent.extra.CERTIFICATE_REMOVED_SUBJECT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.edm.intent.extra.USER_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v2, p2

    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    :cond_0
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending certificate removed intent to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " containing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (subject), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (userId)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v4, "CertificatePolicy/certificateRemoved"

    invoke-static {v3, v4, p2}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->hasPendingActionForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    :cond_0
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2

    const-string v0, "CertificatePolicy"

    const-string/jumbo v1, "onPreAdminRemoval..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    return-void
.end method

.method public performUpgrade()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "cert_migration"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->performKeystoreUpgrade()V

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->performGenericTableUpgrade()V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "cert_migration"

    const-string/jumbo v3, "ok"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, ","

    invoke-static {p2, v1}, Lcom/android/server/enterprise/utils/Utils;->convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public reloadCacheForNewContainer()V
    .locals 2

    const-string v0, "CertificatePolicy"

    const-string v1, "Reloading cache for new container"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V

    return-void
.end method

.method public removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;I)Z"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v2, p0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->generateAliases(Ljava/util/List;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object v3

    nop

    invoke-virtual {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    nop

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v2, v0, v4, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z

    move-result v6

    return v6

    :cond_3
    :goto_1
    return v1
.end method

.method public removePermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PermAppPrivateKey"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v1, v3

    :cond_1
    return v1
.end method

.method public removeTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public removeUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method sendIntentToSettings(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-boolean v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    return-void
.end method

.method public systemReady()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->performUpgrade()V

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V

    return-void
.end method

.method public updateKeystores(III)V
    .locals 3

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    invoke-direct {p0, v0, p3, v2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->triggerContainerOperation(IIII)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    invoke-direct {p0, v0, p3, v1, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->triggerContainerOperation(IIII)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    move-result v1

    return v1
.end method

.method public validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    move-result v1

    return v1
.end method

.method public validateChainAtInstall(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public validateChainAtInstallAsUser(Ljava/util/List;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    move-result v0

    :cond_1
    return v0
.end method

.method verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    :cond_0
    and-int/lit8 v2, p2, 0x1

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    move-object v5, p1

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result v2

    and-int/2addr v0, v2

    :cond_1
    if-eqz v0, :cond_2

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    move-object v5, p1

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result v2

    xor-int/2addr v2, v8

    and-int/2addr v0, v2

    :cond_2
    return v0
.end method

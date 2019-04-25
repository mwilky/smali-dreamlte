.class public Lcom/samsung/android/knox/keystore/CertificatePolicy;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# static fields
.field public static final ACTION_CERTIFICATE_FAILURE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CERTIFICATE_FAILURE"

.field public static final ACTION_CERTIFICATE_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CERTIFICATE_REMOVED"

.field public static final ACTION_REFRESH_CREDENTIALS_UI_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL"

.field public static final APP_INFO_PKGNAME:Ljava/lang/String; = "appInfoPkgName"

.field public static final BROWSER_MODULE:Ljava/lang/String; = "browser_module"

.field public static final CERTIFICATE_FAIL_ALG_NON_FIPS_APPROVED:I = 0x9

.field public static final CERTIFICATE_FAIL_ALTSUBJECT_MISMATCH:I = 0x6

.field public static final CERTIFICATE_FAIL_BAD_CERTIFICATE:I = 0x7

.field public static final CERTIFICATE_FAIL_EXPIRED:I = 0x4

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_CERTIFICATE_ENCODING:I = 0xb

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_INCONSISTENT_CERTIFICATES:I = 0xc

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_NO_CERTIFICATES:I = 0xa

.field public static final CERTIFICATE_FAIL_NOT_YET_VALID:I = 0x3

.field public static final CERTIFICATE_FAIL_REVOKED:I = 0x2

.field public static final CERTIFICATE_FAIL_SERVER_CHAIN_PROBE:I = 0x8

.field public static final CERTIFICATE_FAIL_SUBJECT_MISMATCH:I = 0x5

.field public static final CERTIFICATE_FAIL_UNABLE_TO_CHECK_REVOCATION_STATUS:I = 0xd

.field public static final CERTIFICATE_FAIL_UNSPECIFIED:I = 0x0

.field public static final CERTIFICATE_FAIL_UNTRUSTED:I = 0x1

.field public static final CERTIFICATE_VALIDATED_SUCCESSFULLY:I = -0x1

.field public static final EXTRA_CERTIFICATE_FAILURE_MESSAGE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MESSAGE"

.field public static final EXTRA_CERTIFICATE_FAILURE_MODULE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MODULE"

.field public static final EXTRA_CERTIFICATE_REMOVED_SUBJECT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_REMOVED_SUBJECT"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID"

.field public static final INSTALLER_MODULE:Ljava/lang/String; = "installer_module"

.field public static final IS_MARKET_INSTALLATION:Ljava/lang/String; = "isMarketInstallation"

.field public static final PACKAGE_MODULE:Ljava/lang/String; = "package_manager_module"

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_MODULE:Ljava/lang/String; = "wifi_module"


# instance fields
.field private mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field private mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CertificatePolicy"

    sput-object v0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method private getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    if-nez v0, :cond_0

    const-string v0, "certificate_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    return-object v0
.end method


# virtual methods
.method public addPermissionApplicationPrivateKey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.addPermissionApplicationPrivateKey"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->addPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with certificate policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public addTrustedCaCertificateList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.addTrustedCaCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    return v1

    :cond_0
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->addTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    nop

    :cond_3
    :goto_1
    return v1
.end method

.method public addUntrustedCertificateList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.addUntrustedCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    return v1

    :cond_0
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->addUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    nop

    :cond_3
    :goto_1
    return v1
.end method

.method public allowUserRemoveCertificates(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.allowUserRemoveCertificates"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->allowUserRemoveCertificates(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearPermissionApplicationPrivateKey()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.clearPermissionApplicationPrivateKey"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->clearPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearTrustedCaCertificateList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.clearTrustedCaCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->clearTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearUntrustedCertificateList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.clearUntrustedCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->clearUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableCertificateFailureNotification(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.enableCertificateFailureNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->enableCertificateFailureNotification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableCertificateValidationAtInstall(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.enableCertificateValidationAtInstall"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->enableCertificateValidationAtInstall(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableOcspCheck(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.enableOcspCheck"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->enableOcspCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableRevocationCheck(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.enableRevocationCheck"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->enableRevocationCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListPermissionApplicationPrivateKey()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.getListPermissionApplicationPrivateKey"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->getListPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getTrustedCaCertificateList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.getTrustedCaCertificateList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->getTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getUntrustedCertificateList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.getUntrustedCertificateList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->getUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Certificate policy API isCaCertificateDisabledAsUser "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCaCertificateTrustedAsUser([BZI)Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p3}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    const/4 v0, 0x0

    :try_start_1
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    nop

    :try_start_2
    new-instance v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v3, v2, p2, p3}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with certificate policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem converting certificate! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :catch_2
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy to check if isTrustedUntrustedEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public isCertificateFailureNotificationEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.isCertificateFailureNotificationEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateFailureNotificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCertificateValidationAtInstallEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCertificateValidationAtInstallEnabledAsUser(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNonTrustedAppInstallBlocked()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNonTrustedAppInstallBlocked(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonTrustedAppInstallBlockedAsUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOcspCheckEnabled(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivateKeyApplicationPermitted(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.isPrivateKeyApplicationPermitted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isPrivateKeyApplicationPermitted(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;
    .locals 7
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

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.isPrivateKeyApplicationPermittedAsUser"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRevocationCheckEnabled(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserRemoveCertificatesAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removePermissionApplicationPrivateKey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.removePermissionApplicationPrivateKey"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->removePermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with certificate policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public removeTrustedCaCertificateList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.removeTrustedCaCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    return v1

    :cond_0
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->removeTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    nop

    :cond_3
    :goto_1
    return v1
.end method

.method public removeUntrustedCertificateList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.removeUntrustedCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    return v1

    :cond_0
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->removeUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    nop

    :cond_3
    :goto_1
    return v1
.end method

.method public setNonTrustedAppInstallBlock(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.setNonTrustedAppInstallBlock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setNonTrustedAppInstallBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public validateCertificateAtInstall([B)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.validateCertificateAtInstall"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v4

    nop

    :try_start_1
    new-instance v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v3, v2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with certificate policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem converting certificate! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :goto_0
    return v1
.end method

.method public validateChainAtInstall(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.validateChainAtInstall"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

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

    check-cast v2, Ljava/security/cert/X509Certificate;

    new-instance v3, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v1, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    nop

    :cond_2
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

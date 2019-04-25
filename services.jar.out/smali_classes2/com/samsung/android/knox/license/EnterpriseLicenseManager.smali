.class public Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
.super Ljava/lang/Object;
.source "EnterpriseLicenseManager.java"


# static fields
.field public static final ACTION_LICENSE_REGISTRATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LICENSE_REGISTRATION_INTERNAL"

.field public static final ACTION_LICENSE_REGISTRATION_UMC_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LICENSE_REGISTRATION_UMC_INTERNAL"

.field public static final ACTION_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LICENSE_STATUS"

.field private static final API_MAX_LEN:I = 0x64

.field public static final ERROR_INTERNAL:I = 0x12d

.field public static final ERROR_INTERNAL_SERVER:I = 0x191

.field public static final ERROR_INVALID_LICENSE:I = 0xc9

.field public static final ERROR_INVALID_PACKAGE_NAME:I = 0xcc

.field public static final ERROR_LICENSE_TERMINATED:I = 0xcb

.field public static final ERROR_NETWORK_DISCONNECTED:I = 0x1f5

.field public static final ERROR_NETWORK_GENERAL:I = 0x1f6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_CURRENT_DATE:I = 0xcd

.field public static final ERROR_NO_MORE_REGISTRATION:I = 0xca

.field public static final ERROR_NULL_PARAMS:I = 0x65

.field public static final ERROR_SIGNATURE_MISMATCH:I = 0xce

.field public static final ERROR_UNKNOWN:I = 0x66

.field public static final ERROR_USER_DISAGREES_LICENSE_AGREEMENT:I = 0x259

.field public static final ERROR_VERSION_CODE_MISMATCH:I = 0xcf

.field public static final EXTRA_LICENSE_ATTESTATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

.field public static final EXTRA_LICENSE_DATA_LICENSE_PERMISSIONS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

.field public static final EXTRA_LICENSE_DATA_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

.field public static final EXTRA_LICENSE_DATA_PACKAGEVERSION:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

.field public static final EXTRA_LICENSE_DATA_REQUEST_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

.field public static final EXTRA_LICENSE_ERROR_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

.field public static final EXTRA_LICENSE_GRANTED_PERMISSIONS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

.field public static final EXTRA_LICENSE_PERM_GROUP:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

.field public static final EXTRA_LICENSE_RESULT_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

.field public static final EXTRA_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

.field public static final LICENSE_LOG_API:Ljava/lang/String; = "api_call"

.field public static final LICENSE_LOG_DATE:Ljava/lang/String; = "log_date"

.field public static final LICENSE_PERMISSIONS:Ljava/lang/String; = "Permissions"

.field public static final LICENSE_RESULT_TYPE_ACTIVATION:I = 0x320

.field public static final LICENSE_RESULT_TYPE_VALIDATION:I = 0x321

.field public static final STATUS_ATTESTED:I = 0x0

.field public static final STATUS_DEVICE_NOT_SUPPORTED:I = 0x2

.field public static final STATUS_NOT_ATTESTED:I = 0x1

.field public static final STATUS_UNKNOWN_ERROR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseManager"

.field private static gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

.field private static lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iput-object p2, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    if-nez v0, :cond_0

    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    return-object v0
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v1, p0, p1, v0, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v1, p0, p1, p2, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public activateLicense(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object v1, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public activateLicense(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object v1, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public activateLicenseForUMC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object v1, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public deleteAllApiCallData()Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteAllApiCallData()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "deleteAllApiCallData(). Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteApiCallDataByAdmin(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteLicense(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteLicenseByAdmin(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiCallData(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v11

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v11

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    move-object v8, v11

    if-nez v8, :cond_0

    const-string v9, "EnterpriseLicenseManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get Bundle using key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    move-object v5, v11

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v11, "log_date"

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "api_call"

    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseManager"

    const-string v3, "Failed talking to License policy service "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseLicenseManager"

    const-string v3, "JSONException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    nop

    :goto_3
    return-object v0
.end method

.method public getApiCallDataByAdmin(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseLicenseManager.getApiCallDataByAdmin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    iget-object v3, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getApiCallDataByAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v11

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v11

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    move-object v8, v11

    if-nez v8, :cond_0

    const-string v9, "EnterpriseLicenseManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get Bundle using key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    move-object v5, v11

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v11, "log_date"

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "api_call"

    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseManager"

    const-string v3, "Failed talking to License policy service "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseLicenseManager"

    const-string v3, "JSONException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    nop

    :goto_3
    return-object v0
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    const/4 v10, -0x5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->resetLicense(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->resetLicenseByAdmin(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

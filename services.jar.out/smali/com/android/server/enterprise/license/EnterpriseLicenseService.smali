.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DEACTIVATE_LICENSE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field private static final KLMS_AGENT_PKG:Ljava/lang/String; = "com.samsung.klmsagent"

.field private static final KLMS_PACKAGE_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PACKAGE_REMOVED_INTERNAL"

.field private static final MY_PID:I

.field private static final SUCCESS_STATUS_RESULT:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static final UMCpackageName:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private allowedCaller:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mELMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyDeactivateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKlmElmChangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/license/IActivationKlmElmObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v1, "com.sec.knox.kccagent"

    const-string v2, "com.sec.knox.klat.agent"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller is approved : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    const-string/jumbo v2, "ro.product_ship"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller is approved by permission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "EnterpriseLicenseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller is not approved (caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    const-string v0, "EnterpriseLicenseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature mismatched! caller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :cond_7
    :goto_2
    const-string v1, "EnterpriseLicenseService"

    const-string v2, "caller is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "pkgName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private enforcePermission()V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :goto_0
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static declared-synchronized getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 8
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

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    move-object v3, v1

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    const-string/jumbo v6, "pkgName"

    const-string/jumbo v7, "rightsObject"

    invoke-virtual {v4, v5, v6, p0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    nop

    :try_start_1
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/license/RightsObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v5

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getPermissions() may new namespace "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/license/RightsObject;

    move-object v2, v5

    const-string v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getPermissions() - deserializeObject"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;

    move-result-object v5

    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v5

    :cond_2
    goto :goto_2

    :catch_1
    move-exception v1

    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getPermissions() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v3

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Caller is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez v0, :cond_0

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyContainerLicenseStatus(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyLicenseStatus(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "failed to get KnoxMUMContainerPolicy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyElmObservers(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateElm(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyKlmObservers(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateKlm(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "rightsObject"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pkgName"

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    move-object v2, v5

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_0

    const-string v5, "EnterpriseLicenseService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAdminPermissions() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "updateAdminPermissions() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "activateKnoxLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v8, 0x320

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    move-object v5, v2

    :cond_1
    if-nez v0, :cond_3

    array-length v11, v10

    move v12, v9

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v13, v10, v12

    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v11, v0

    if-nez v11, :cond_7

    const/16 v12, 0xcc

    :try_start_2
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-eqz v13, :cond_4

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p0

    return-void

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    array-length v0, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v0, :cond_5

    aget-object v13, v10, v9

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x320

    goto :goto_3

    :cond_5
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_a

    :cond_6
    :goto_4
    :try_start_6
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v5, v2

    :cond_7
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_8

    :try_start_7
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    move-object/from16 v8, p2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :cond_8
    move-object/from16 v8, p2

    :goto_5
    :try_start_8
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v9, :cond_a

    :try_start_9
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v9

    goto :goto_7

    :cond_a
    :goto_6
    :try_start_a
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, v9

    :goto_7
    const/4 v9, 0x0

    iget-object v10, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/SemPersonaManager;

    move-object v9, v10

    const-string/jumbo v10, "user"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v9, :cond_c

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_c

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v17, v4

    :try_start_b
    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v16

    if-nez v16, :cond_b

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v16

    if-nez v16, :cond_b

    invoke-interface {v10, v4}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    move-object/from16 v18, v16

    move-object/from16 v8, v18

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v16

    if-nez v16, :cond_b

    const/4 v11, 0x1

    move v13, v4

    :cond_b
    nop

    move/from16 v4, v17

    move-object/from16 v8, p2

    goto :goto_8

    :cond_c
    move/from16 v17, v4

    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    if-eqz v11, :cond_d

    if-eqz v4, :cond_d

    invoke-virtual {v4, v13}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v12, 0x1

    :cond_d
    if-eqz v12, :cond_e

    const-string v8, "EnterpriseLicenseService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "activateKnoxLicense. basic container exists. userId"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "destUserId"

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v14, "targetUserId"

    invoke-virtual {v8, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v8, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v8, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v14, v8, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_9

    :cond_e
    const-string v8, "EnterpriseLicenseService"

    const-string v14, "activateKnoxLicense. basic container null."

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.KNOX_LICENSE_REGISTRATION_INTERNAL"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v8, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v8, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v14, v8, v0, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_9
    :try_start_c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    monitor-exit p0

    return-void

    :cond_f
    move/from16 v17, v4

    :try_start_d
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v4, "package name is null"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move/from16 v17, v4

    :goto_a
    :try_start_e
    const-string v4, "EnterpriseLicenseService"

    const-string v8, "activateKnoxLicense() failed."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :goto_b
    :try_start_f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/16 v0, 0x12d

    if-nez v2, :cond_12

    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    array-length v8, v4

    if-lez v8, :cond_11

    array-length v8, v4

    move-wide v9, v6

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v8, :cond_10

    aget-object v7, v4, v6

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v13, "fail"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v13, 0x320

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v11, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move-wide v9, v12

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_10
    move-wide v6, v9

    :cond_11
    goto :goto_d

    :cond_12
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v9, "fail"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v8, 0x320

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v6, v8

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_13
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v6, v8

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_d
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :goto_e
    :try_start_10
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateKnoxLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "activateKnoxLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v8, 0x320

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    move-object v5, v2

    :cond_1
    if-nez v0, :cond_3

    array-length v11, v10

    move v12, v9

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v13, v10, v12

    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v11, v0

    if-nez v11, :cond_7

    const/16 v12, 0xcc

    :try_start_2
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-eqz v13, :cond_4

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    array-length v0, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v0, :cond_5

    aget-object v13, v10, v9

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x320

    goto :goto_3

    :cond_5
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v11, p2

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v11, p2

    move v10, v9

    goto/16 :goto_9

    :cond_6
    :goto_4
    :try_start_6
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v5, v2

    :cond_7
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    move-object/from16 v0, p4

    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    const-string/jumbo v9, "package"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v10, 0x0

    :try_start_7
    invoke-interface {v9, v2, v10, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v0, v12

    :cond_9
    :goto_5
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v11, p2

    :try_start_8
    invoke-interface {v9, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    move-object/from16 v11, p2

    :goto_6
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_7

    :cond_b
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v9, v12

    goto :goto_8

    :cond_c
    :goto_7
    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v9, v12

    :goto_8
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_REGISTRATION_INTERNAL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v13, v12, v9, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit p0

    return-void

    :catch_2
    move-exception v0

    move-object/from16 v11, p2

    goto :goto_9

    :cond_d
    move-object/from16 v11, p2

    const/4 v10, 0x0

    :try_start_a
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v9, "package name is null"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v11, p2

    const/4 v10, 0x0

    :goto_9
    :try_start_b
    const-string v9, "EnterpriseLicenseService"

    const-string v12, "activateLicense() failed."

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_a
    :try_start_c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v2, :cond_f

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    array-length v12, v9

    if-lez v12, :cond_e

    array-length v12, v9

    :goto_b
    if-ge v10, v12, :cond_e

    aget-object v13, v9, v10

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v0, "fail"

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v15, 0x12d

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-wide v6, v15

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_e
    goto :goto_c

    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v10, "fail"

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v10, 0x12d

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v10, 0x320

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v6, v9

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_10
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v6, v9

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_c
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_d
    :try_start_d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "deActivateKnoxLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v8, 0x322

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    move-object v5, v2

    :cond_1
    if-nez v0, :cond_3

    array-length v11, v10

    move v12, v9

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v13, v10, v12

    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v11, v0

    if-nez v11, :cond_7

    const/16 v12, 0xcc

    :try_start_2
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-eqz v13, :cond_4

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    array-length v0, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v0, :cond_5

    aget-object v13, v10, v9

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x322

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x322

    goto :goto_3

    :cond_5
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_8

    :cond_6
    :goto_4
    :try_start_6
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v5, v2

    :cond_7
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v8, p2

    :try_start_7
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    move-object/from16 v8, p2

    :goto_5
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v9

    goto :goto_7

    :cond_a
    :goto_6
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, v9

    :goto_7
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.KNOX_LICENSE_DEACTIVATION_INTERNAL"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v10, v9, v0, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-void

    :cond_b
    move-object/from16 v8, p2

    :try_start_9
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v9, "package name is null"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_8
    :try_start_a
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "deActivateKnoxLicense() failed."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_9
    :try_start_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/16 v0, 0x12d

    if-nez v2, :cond_e

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    array-length v10, v9

    if-lez v10, :cond_c

    array-length v10, v9

    move-wide v11, v6

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v10, :cond_d

    aget-object v7, v9, v6

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v15, "fail"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x322

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v13, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-wide v11, v14

    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v13, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_c
    move-wide v11, v6

    :cond_d
    goto :goto_b

    :cond_e
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v11, "fail"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v10, 0x322

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v6, v10

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_f
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v11, v10

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_b
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_c
    :try_start_c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteAllApiCallData()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLog;->deleteAllLog()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseService"

    const-string v2, "deleteAllApiCallData() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "instanceId"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pkgName"

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "EnterpriseLicenseService"

    const-string v6, "deleteApiCallData(): result is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    if-nez v1, :cond_2

    const-string v5, "EnterpriseLicenseService"

    const-string v6, "deleteApiCallData(): Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string v3, "deleteApiCallData() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string v3, "deleteApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .locals 10

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "instanceId"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "pkgName"

    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "LICENSE"

    invoke-virtual {v7, v8, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v8, "EnterpriseLicenseService"

    const-string v9, "deleteLicense(): result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_1
    :try_start_1
    const-string/jumbo v8, "pkgName"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    if-nez v4, :cond_2

    const-string v8, "EnterpriseLicenseService"

    const-string v9, "deleteLicense(): pkgName is null, Record does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-eqz v0, :cond_3

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "deleteLicense() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_4
    :goto_2
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "deleteLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_2
    const/4 v3, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 11

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "pkgName"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "instanceId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "pkgVersion"

    aput-object v5, v3, v4

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    move-object v5, v10

    const-string/jumbo v10, "pkgName"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    const-string/jumbo v10, "instanceId"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    const-string/jumbo v10, "pkgVersion"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    new-instance v10, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v10, v6, v7, v8}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/samsung/android/knox/license/LicenseInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getLicenseInfo() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "instanceId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pkgName"

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getApiCallData(): result is null, Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    if-nez v1, :cond_2

    const-string v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getApiCallData(): pkgName is null, Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getApiCallData() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getApiCallDataByAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_LOG"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    nop

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    :goto_1
    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getELMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    :goto_1
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
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "getELMPermissions() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pkgName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "instanceId"

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    move-object v3, v7

    const-string/jumbo v7, "pkgName"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "instanceId"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getInstanceId() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getKLMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getKLMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 9

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pkgName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "instanceId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "pkgVersion"

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    move-object v3, v8

    const-string/jumbo v8, "instanceId"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    const-string/jumbo v8, "pkgVersion"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v8, v5, v4, v6}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    nop

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getLicenseInfo() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 9

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pkgName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "instanceId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "pkgVersion"

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    move-object v3, v8

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "instanceId"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    const-string/jumbo v8, "pkgVersion"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v8, p1, v4, v6}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    nop

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getLicenseInfoByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const-string/jumbo v3, "instanceId"

    const-string/jumbo v4, "rightsObject"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/license/RightsObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getRightsObject() may new namespace"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    move-object v0, v3

    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getRightsObject() - deserializeObject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v3

    :cond_2
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getRightsObject() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const-string/jumbo v3, "pkgName"

    const-string/jumbo v4, "rightsObject"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/license/RightsObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getRightsObjectByAdmin() may new namespace"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    move-object v0, v3

    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getRightsObjectByAdmin() - deserializeObject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v3

    :cond_2
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getRightsObjectByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "isServiceAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const-string/jumbo v4, "pkgName"

    const-string/jumbo v5, "rightsObject"

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "rightsObject"

    aput-object v3, v2, v0

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    move-object v4, v6

    const-string/jumbo v6, "rightsObject"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/license/RightsObject;

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_4

    return v1

    :cond_4
    goto :goto_1

    :cond_5
    nop

    :cond_6
    goto :goto_3

    :goto_2
    nop

    const-string v2, "EnterpriseLicenseService"

    const-string v3, "check Service failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v0

    :cond_7
    :goto_4
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "serviceName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/enterprise/license/LicenseLog;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v8, "processKnoxLicenseResponse()"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    :cond_0
    const/4 v0, 0x0

    if-eqz v6, :cond_3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move v9, v0

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    const/4 v0, 0x0

    move-object v13, v0

    if-eqz p8, :cond_6

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v14, "pkgName"

    invoke-virtual {v0, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v15

    move-object/from16 v16, v15

    const-string/jumbo v8, "rightsObject"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v17, v10

    move-object/from16 v10, v16

    :try_start_1
    invoke-virtual {v14, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v10

    const-string v10, "LICENSE"

    invoke-virtual {v8, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_4

    sget-object v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v19, v8

    const-string v8, "LICENSE"

    invoke-virtual {v10, v8, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8

    move-object/from16 v10, p2

    move-object/from16 v20, v0

    goto :goto_2

    :cond_4
    move/from16 v19, v8

    const-string/jumbo v8, "instanceId"

    const-string v10, "-1"

    invoke-virtual {v14, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "pkgVersion"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v10, p2

    :try_start_2
    invoke-virtual {v14, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v0, "LICENSE"

    invoke-virtual {v8, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v8, v0

    :goto_2
    if-eqz v8, :cond_5

    :try_start_3
    const-string v0, "EnterpriseLicenseService"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v21, v8

    :try_start_4
    const-string/jumbo v8, "processKnoxLicenseResponse(): License Table update."

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v2}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v13, v0

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v21, v8

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move/from16 v21, v8

    goto/16 :goto_7

    :cond_5
    move/from16 v21, v8

    :goto_3
    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v10, p2

    move/from16 v21, v17

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v10, p2

    move/from16 v21, v17

    goto/16 :goto_7

    :cond_6
    move/from16 v17, v10

    move-object/from16 v10, p2

    :try_start_5
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v8, "processKnoxLicenseResponse().RO is null"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v21, v17

    :goto_4
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.action.knox_license.status"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "edm.intent.extra.knox_license.status"

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.extra.knox_license.activaton_initiator"

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.extra.knox_license.result_type"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.extra.knox_license.data.pkgname"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x320

    if-ne v5, v8, :cond_7

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    invoke-virtual {v8, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    move-object/from16 v22, v0

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v0

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ACTIVATION_INITIATOR"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v8, v0, v13}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v0, 0x320

    if-ne v5, v0, :cond_9

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    if-eqz v21, :cond_a

    nop

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v4, "Permissions"

    invoke-virtual {v14, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v8, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_b
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v4, 0x320

    if-ne v5, v4, :cond_d

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {v1, v2, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyKlmObservers(Ljava/lang/String;Z)V

    :cond_d
    const-string v4, "application_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->grantRuntimePermissionsForEnterpriseAdmin()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_e
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    :goto_5
    move/from16 v21, v17

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_6
    move/from16 v21, v17

    :goto_7
    :try_start_7
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v8, "processKnoxLicenseResponse() failed"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    nop

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    return v4

    :catchall_4
    move-exception v0

    :goto_8
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v8, "processLicenseActivationResponse()"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz v6, :cond_3

    :try_start_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move v8, v0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v12, 0x0

    if-nez p5, :cond_c

    const/4 v0, 0x1

    nop

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.action.license.status"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    if-eqz v8, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v9, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    const-string/jumbo v14, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v9, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v9, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string/jumbo v13, "edm.intent.extra.license.status"

    invoke-virtual {v9, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.perm_group"

    invoke-virtual {v9, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v9, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    const-string/jumbo v13, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    const-string/jumbo v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_7

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v9, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_7
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v9, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    if-eqz v8, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v16, v9

    const-string v9, "Permissions"

    invoke-virtual {v15, v9, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    move-object/from16 v16, v9

    :goto_3
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v13, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_9
    move-object/from16 v16, v9

    :goto_4
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v13, v9, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_5

    :cond_a
    move-object/from16 v16, v9

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_5
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_b

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_b
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    monitor-exit p0

    return v0

    :cond_c
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "pkgName"

    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v14

    const-string/jumbo v15, "rightsObject"

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v15, "instanceId"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 v17, v9

    move-object/from16 v9, p4

    :try_start_3
    invoke-virtual {v13, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "pkgVersion"

    invoke-virtual {v13, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "LICENSE"

    invoke-virtual {v15, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-lez v9, :cond_d

    :try_start_4
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v18, v9

    const-string v9, "LICENSE"

    invoke-virtual {v15, v9, v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v19, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move/from16 v9, v17

    goto/16 :goto_18

    :catch_0
    move-exception v0

    move/from16 v9, v17

    goto/16 :goto_f

    :cond_d
    move/from16 v18, v9

    :try_start_5
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v13, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "LICENSE"

    invoke-virtual {v9, v15, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v9, :cond_e

    :try_start_6
    const-string v15, "EnterpriseLicenseService"

    move-object/from16 v19, v0

    const-string v0, "check key field"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "licenseKey"

    const-string/jumbo v15, "na"

    invoke-virtual {v13, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "LICENSE"

    invoke-virtual {v0, v15, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move v9, v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :cond_e
    move-object/from16 v19, v0

    :goto_6
    :try_start_7
    const-string v0, "EnterpriseLicenseService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v20, v12

    :try_start_8
    const-string/jumbo v12, "processLicenseActivationResponse(): ret = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_f

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v12, v2}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v12, v0

    :try_start_9
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    goto :goto_7

    :cond_f
    move-object/from16 v12, v20

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eqz v9, :cond_10

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v15

    invoke-interface {v0, v2, v4, v15}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v21, v13

    goto :goto_8

    :cond_10
    const-string/jumbo v15, "fail"

    move-object/from16 v21, v13

    const/16 v13, 0x12d

    invoke-interface {v0, v2, v15, v13}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_11
    move-object/from16 v21, v13

    :goto_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->notifyLicenseStatus()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "EnterpriseLicenseService"

    const-string v13, "ccm notifyLicenseStatus failed"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string/jumbo v0, "success"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "success"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :cond_13
    :try_start_a
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.action.license.status"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_16

    if-eqz v8, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_14

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_14
    const-string/jumbo v14, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v0, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    const-string/jumbo v13, "edm.intent.extra.license.status"

    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.perm_group"

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    :cond_16
    const-string/jumbo v13, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_9
    const-string/jumbo v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_17

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_17
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_1a

    if-eqz v8, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_18

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v22, v0

    const-string v0, "Permissions"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_a

    :cond_18
    move-object/from16 v22, v0

    :goto_a
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    :cond_19
    move-object/from16 v22, v0

    :goto_b
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_c

    :cond_1a
    move-object/from16 v22, v0

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_c
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_1b

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1b
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object/from16 v12, v20

    goto/16 :goto_18

    :catch_2
    move-exception v0

    move-object/from16 v12, v20

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object/from16 v20, v12

    move/from16 v9, v17

    :goto_d
    goto/16 :goto_18

    :catch_4
    move-exception v0

    move-object/from16 v20, v12

    move/from16 v9, v17

    :goto_e
    goto :goto_f

    :catchall_4
    move-exception v0

    move/from16 v17, v9

    move-object/from16 v20, v12

    goto/16 :goto_18

    :catch_5
    move-exception v0

    move/from16 v17, v9

    move-object/from16 v20, v12

    :goto_f
    :try_start_b
    const-string v13, "EnterpriseLicenseService"

    const-string/jumbo v14, "processLicenseActivationResponse() failed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.action.license.status"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_1e

    if-eqz v8, :cond_1d

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_1c

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1c
    const-string/jumbo v14, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v0, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    const-string/jumbo v13, "edm.intent.extra.license.status"

    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.perm_group"

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_10

    :cond_1e
    const-string/jumbo v13, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_10
    const-string/jumbo v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_1f

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_22

    if-eqz v8, :cond_21

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_20

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v23, v0

    const-string v0, "Permissions"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_11

    :cond_20
    move-object/from16 v23, v0

    :goto_11
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    :cond_21
    move-object/from16 v23, v0

    :goto_12
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_13

    :cond_22
    move-object/from16 v23, v0

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_13
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_23

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_23
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_14
    nop

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-wide v10, v13

    :try_start_d
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->grantRuntimePermissionsForEnterpriseAdmin()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_24
    :try_start_e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_15
    goto :goto_16

    :catchall_5
    move-exception v0

    goto :goto_17

    :catch_6
    move-exception v0

    :try_start_f
    const-string v13, "EnterpriseLicenseService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_15

    :goto_16
    monitor-exit p0

    return v9

    :goto_17
    :try_start_11
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_6
    move-exception v0

    :goto_18
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.action.license.status"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_27

    if-eqz v8, :cond_26

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_25

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v24, v0

    const-string v0, "Permissions"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_19

    :cond_25
    move-object/from16 v24, v0

    :goto_19
    const-string/jumbo v0, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1a

    :cond_26
    move-object/from16 v24, v0

    :goto_1a
    const-string/jumbo v0, "edm.intent.extra.license.status"

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.license.perm_group"

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1b

    :cond_27
    move-object/from16 v24, v0

    const-string/jumbo v0, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1b
    const-string/jumbo v0, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_28

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_28
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    if-eqz v8, :cond_2a

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_29

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move/from16 v25, v9

    const-string v9, "Permissions"

    invoke-virtual {v15, v9, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1c

    :cond_29
    move/from16 v25, v9

    :goto_1c
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1d

    :cond_2a
    move/from16 v25, v9

    :goto_1d
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v0, v9, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1e

    :cond_2b
    move/from16 v25, v9

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1e
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_2c

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2c
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v7, "processLicenseValidationResult()"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v4, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz v6, :cond_3

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move v7, v0

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/16 v11, 0x321

    const/16 v12, 0x12d

    if-nez p3, :cond_d

    const/4 v0, 0x1

    nop

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.action.license.status"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    if-eqz v7, :cond_4

    const-string/jumbo v13, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v8, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v8, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string/jumbo v13, "edm.intent.extra.license.status"

    invoke-virtual {v8, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.perm_group"

    invoke-virtual {v8, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const-string/jumbo v13, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    const-string/jumbo v13, "edm.intent.extra.license.result_type"

    invoke-virtual {v8, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v7, :cond_6

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_6
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    if-eqz v7, :cond_7

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v13, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v11

    invoke-virtual {v13, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    const-string v11, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v13, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    const-string v11, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x321

    invoke-virtual {v13, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v7, :cond_9

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_9
    invoke-virtual {v13, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v11, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v11, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v11, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_a
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v12, "fail"

    invoke-virtual {v11, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v11, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_4
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v11, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-eqz v12, :cond_b

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v15, v8

    const-string v8, "Permissions"

    invoke-virtual {v14, v8, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v8, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v11, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_5

    :cond_b
    move-object v15, v8

    :goto_5
    const-string v8, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x321

    invoke-virtual {v11, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v11, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v11, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    :cond_c
    move-object v15, v8

    :goto_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_d
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v0, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v12

    const-string/jumbo v13, "rightsObject"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v13, "pkgVersion"

    invoke-virtual {v11, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "LICENSE"

    invoke-virtual {v13, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v13

    if-lez v13, :cond_e

    sget-object v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v16, v8

    :try_start_1
    const-string v8, "LICENSE"

    invoke-virtual {v14, v8, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move/from16 v8, v16

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move/from16 v8, v16

    goto/16 :goto_e

    :cond_e
    move/from16 v16, v8

    :goto_7
    :try_start_2
    const-string v14, "EnterpriseLicenseService"

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v11

    const-string/jumbo v11, "processLicenseValidationResult(): ret = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_f

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eqz v8, :cond_10

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v11

    invoke-interface {v0, v4, v2, v11}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_10
    const-string/jumbo v11, "fail"

    const/16 v14, 0x12d

    invoke-interface {v0, v4, v11, v14}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_11
    :goto_8
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.action.license.status"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_13

    if-eqz v7, :cond_12

    const-string/jumbo v11, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v0, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    const-string/jumbo v11, "edm.intent.extra.license.status"

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.extra.license.perm_group"

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    :cond_13
    const-string/jumbo v11, "edm.intent.extra.license.status"

    const-string/jumbo v12, "fail"

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_9
    const-string/jumbo v11, "edm.intent.extra.license.result_type"

    const/16 v12, 0x321

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v7, :cond_14

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_14
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_16

    if-eqz v7, :cond_15

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v11, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v11, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v11, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_16
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v13, "fail"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v13, 0x12d

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_a
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v13, 0x321

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v7, :cond_17

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_17
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_18

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    :cond_18
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_b
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_19

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v19, v0

    const-string v0, "Permissions"

    invoke-virtual {v14, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_c

    :cond_19
    move-object/from16 v19, v0

    :goto_c
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x321

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v12, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_d

    :cond_1a
    move-object/from16 v19, v0

    :goto_d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    :catch_1
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    move/from16 v16, v8

    goto/16 :goto_15

    :catch_2
    move-exception v0

    move/from16 v16, v8

    :goto_e
    :try_start_3
    const-string v11, "EnterpriseLicenseService"

    const-string/jumbo v12, "processLicenseValidationResult() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.action.license.status"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_1c

    if-eqz v7, :cond_1b

    const-string/jumbo v11, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v0, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1b
    const-string/jumbo v11, "edm.intent.extra.license.status"

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.extra.license.perm_group"

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f

    :cond_1c
    const-string/jumbo v11, "edm.intent.extra.license.status"

    const-string/jumbo v12, "fail"

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_f
    const-string/jumbo v11, "edm.intent.extra.license.result_type"

    const/16 v12, 0x321

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v7, :cond_1d

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1d
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_1f

    if-eqz v7, :cond_1e

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v11, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v11, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1e
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v11, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_10

    :cond_1f
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v13, "fail"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v13, 0x12d

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_10
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v13, 0x321

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v7, :cond_20

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_20
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_21

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_11

    :cond_21
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_11
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_22

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v20, v0

    const-string v0, "Permissions"

    invoke-virtual {v14, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_12

    :cond_22
    move-object/from16 v20, v0

    :goto_12
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x321

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v12, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_13

    :cond_23
    move-object/from16 v20, v0

    :goto_13
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_14
    nop

    return v8

    :catchall_2
    move-exception v0

    :goto_15
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.action.license.status"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_25

    if-eqz v7, :cond_24

    const-string/jumbo v12, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v11, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v11, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_24
    const-string/jumbo v12, "edm.intent.extra.license.status"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.extra.license.perm_group"

    invoke-virtual {v11, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16

    :cond_25
    const-string/jumbo v12, "edm.intent.extra.license.status"

    const-string/jumbo v13, "fail"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_16
    const-string/jumbo v12, "edm.intent.extra.license.result_type"

    const/16 v13, 0x321

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v7, :cond_26

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_26
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_28

    if-eqz v7, :cond_27

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_27
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_17

    :cond_28
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_17
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x321

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v7, :cond_29

    invoke-virtual {v12, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v12, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_29
    invoke-virtual {v12, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v12, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2c

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_2a

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v2

    invoke-virtual {v13, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_18

    :cond_2a
    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v13, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_18
    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2b

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Permissions"

    invoke-virtual {v14, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2b
    const-string v3, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x321

    invoke-virtual {v13, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2c
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .locals 10

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "instanceId"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "pkgName"

    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "LICENSE"

    invoke-virtual {v7, v8, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense(): result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_1
    :try_start_1
    const-string/jumbo v8, "pkgName"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    if-nez v4, :cond_2

    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense(): pkgName is null, Record does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-eqz v0, :cond_3

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "resetLicense() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_4
    :goto_2
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_2
    const/4 v3, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

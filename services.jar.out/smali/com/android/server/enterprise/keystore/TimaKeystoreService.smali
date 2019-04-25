.class public Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.super Lcom/samsung/android/knox/keystore/ITimaKeystore$Stub;
.source "TimaKeystoreService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "defaultpackage"

.field private static final DOWNLOADABLEKEYSTORE_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.BIND_TIMA_KS_CCM"

.field private static final DOWNLOADABLEKEYSTORE_PACKAGE:Ljava/lang/String; = "com.sec.downloadablekeystore"

.field private static final FIPS_TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/fips_tima_keystore/"

.field private static final GET_ADMINCONTAINER_CCMBUILDUPDATE:I = 0x5

.field private static final GET_ADMINLUIDLIST:I = 0x0

.field private static final GET_CONTAINEROWNERUID:I = 0x1

.field private static final GET_MUMCONTAINEROWNERUID:I = 0x2

.field private static final KNOX_CCM_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM"

.field private static final KNOX_CCM_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

.field private static final KNOX_DKS_INTERNAL_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

.field private static final KNOX_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

.field private static final KNOX_KEYSTORE_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

.field private static final KNOX_KEYSTORE_PER_APP_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

.field private static final KNOX_KEYSTORE_PER_APP_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

.field private static final KNOX_PROTECTED_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PROTECTED_KEYSTORE"

.field private static final MSG_BIND_DOWNLOADABLEKS:I = 0x3

.field private static final RESTART_DKS_TIMEOUT_MILLIS:I = 0x1f4

.field private static final SET_ADMIN_INFO_TABLE_FORDEFAULTCCMPROFILE:I = 0x3

.field private static final SET_USER_CCM_PROVISIONED:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/tima_keystore/"

.field private static mInternalHandler:Landroid/os/Handler;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private pReceiver:Landroid/content/BroadcastReceiver;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    const-string v0, "TimaKeystoreService"

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/ITimaKeystore$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "tima"

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TIMA_SERVICE:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->pReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "TimaKeystoreService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->setupIntentFilters()V

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_3

    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "Called TIMA service getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->pReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->systemReady(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->scheduleDKSRestart(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->bindDownlodableKeystoreService(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindDownlodableKeystoreService(I)I
    .locals 3

    const/4 v0, -0x1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "bindDownlodableKeystoreService - DOWNLOADABLEKEYSTORE_BIND_ACTION -- "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private deletePackageRecord(ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "uid"

    const-string/jumbo v2, "pkgName"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v0

    const/4 v4, 0x1

    aput-object p2, v3, v4

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "TimaKeystorePolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageRecord() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private deletePackageRecord(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "pkgName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageRecord() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private deletePackageRecordPerApp(ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "uid"

    const-string/jumbo v2, "pkgName"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v0

    const/4 v4, 0x1

    aput-object p2, v3, v4

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "TimaKeystorePerAppPolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageRecordPerApp() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private enforcePermission()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private enforcePermissionDks()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforcePermissionForUKS()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v4

    :try_start_4
    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v5

    :try_start_5
    iget-object v6, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v6

    iget-object v7, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.android.knox.permission.KNOX_PROTECTED_KEYSTORE"

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private enforcePermissionPerApp()V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private enforcePermissionPerAppOnly()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.BIND_TIMA_KS_CCM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.downloadablekeystore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object v0
.end method

.method private insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "TimaKeystorePolicy"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertOrUpdatePackageRecord() failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private insertOrUpdatePackageRecordPerApp(ILjava/lang/String;)Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "TimaKeystorePerAppPolicy"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertOrUpdatePackageRecordPerApp() failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private removeUserKeyDirectory(Ljava/io/File;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleDKSRestart(I)V
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleDKSRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleDKSRestart Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setupIntentFilters()V
    .locals 5

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in setupIntentFilters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static supportDKS()Z
    .locals 5

    const-string v0, ""

    const-string/jumbo v1, "ro.build.flavor"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "great"

    const-string/jumbo v2, "dream"

    const-string v3, "cruiser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method

.method private systemReady(I)V
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() Phase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method


# virtual methods
.method public enableTimaKeystore(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const-string v2, "API_TIMA:enableTimaKeystore"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in enableTimaKeystore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enableTimaKeystore - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    if-eqz p1, :cond_4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const-string v3, "defaultpackage"

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "enableTimaKeystore: deletePackageRecord failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, v3, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "enableTimaKeystore() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2
.end method

.method public enableTimaKeystorePerApp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const-string v2, "API_TIMA:enableTimaKeystorePerApp"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in enableTimaKeystorePerApp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerApp()V

    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enableTimaKeystorePerApp - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v3

    return v3

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v4, "disable is called, and caller is enabled. try to delete and return the result"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v3

    return v3

    :cond_5
    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v5, "disable is called, but caller is not enabled. return true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "enableTimaKeystorePerApp() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public encryptPassword(Ljava/lang/String;)[C
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_1

    nop

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "encryptPassword, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getContainerAdminDetails(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getContainerAdminDetails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionDks()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v9, "/data/system/enterprise.db"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object v4, v8

    if-eqz v4, :cond_1

    const-string v8, "SELECT * FROM MUMCONTAINER;"

    invoke-virtual {v4, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v5, v8

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v4, :cond_6

    :goto_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3

    :catch_0
    move-exception v3

    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v8, "Container list"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const-string v9, "ADMINLUIDLIST"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v8, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    const-string v9, "CONTAINERIDLIST"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_6

    :pswitch_1
    move v3, p2

    const-string/jumbo v4, "user"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    goto/16 :goto_6

    :pswitch_2
    move v4, p2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "adminName"

    const-string v7, "CCM-System"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "canRemove"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ADMIN_INFO"

    invoke-virtual {v6, v7, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    const-string v7, "SET_ADMIN_INFO_TABLE_FORDEFAULTCCMPROFILE"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    const-string v4, "MUMCONTAINEROWNERUID"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :pswitch_4
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v3

    const-string v4, "CONTAINEROWNERUID"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :pswitch_5
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [J

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    const-string v6, "ADMINLUIDLIST"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    goto :goto_6

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_c
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isTimaKeyStoreDefaultForContainer(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isTimaKeyStoreDefaultForContainer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeyStoreDefaultForContainer - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const v3, 0x186a0

    div-int/2addr v1, v3

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    move v2, v3

    nop

    :cond_3
    move v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTimaKeyStoreDefaultForContainer() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTimaKeyStoreDefaultForContainer returning - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method public isTimaKeystoreEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isTimaKeystoreEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isTimaKeystoreEnabled - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binder.getCallingPid() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Binder.getCallingUid()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "knox_timakeystore_policy"

    const-string/jumbo v6, "isTimaKeystoreEnabled"

    invoke-static {v0, v2, v4, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    return v3

    :cond_7
    return v1
.end method

.method public isTimaKeystoreEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isTimaKeystoreEnabledForPackage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isTimaKeystoreEnabledForPackage - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v2, p2, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const-string/jumbo v4, "enabled"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "TimaKeystorePolicy"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    move-object v6, v9

    if-eqz v6, :cond_4

    const-string/jumbo v9, "enabled"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move v7, v10

    :cond_4
    if-eqz v7, :cond_3

    const/4 v0, 0x1

    nop

    :cond_5
    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    const/4 v0, 0x1

    :cond_6
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTimaKeystoreEnabledForPackage() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTimaKeystoreEnabledForPackage returning - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0
.end method

.method public isTimaKeystoreEnabledForUKS(II)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isTimaKeystoreEnabledForUKS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledForUKS - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3

    return v4

    :cond_3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v1, p2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v4

    :cond_4
    const/4 v0, 0x0

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binder.getCallingPid() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Binder.getCallingUid()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_5
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "knox_timakeystore_policy"

    const-string/jumbo v6, "isTimaKeystoreEnabled"

    invoke-static {v3, p1, p2, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    return v4

    :cond_6
    if-nez v0, :cond_8

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerAppOnly()V

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isTimaKeystoreEnabledInternal - this ctx is not in TKSperappDB, but has TKSperapp permission"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return v4

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isTimaKeystoreEnabledInDBPerApp() no permission"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v2
.end method

.method public isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isTimaKeystoreEnabledInDB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isTimaKeystoreEnabledInDB - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :try_start_0
    const-string/jumbo v1, "enabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "TimaKeystorePolicy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    move-object v3, v6

    if-eqz v3, :cond_4

    const-string/jumbo v6, "enabled"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    :cond_4
    if-eqz v4, :cond_3

    const/4 v0, 0x1

    nop

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTimaKeystoreEnabledInDB() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTimaKeystoreEnabledInDB returning - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0
.end method

.method public isTimaKeystoreEnabledInDBPerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in isTimaKeystoreEnabledInDBPerApp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isTimaKeystoreEnabledInDBPerApp - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    return v3

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move v1, v3

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isTimaKeystoreEnabledInDBPerApp() get callingUid, caller failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string/jumbo v3, "uid"

    const-string/jumbo v4, "pkgName"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "TimaKeystorePerAppPolicy"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "uid"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isTimaKeystoreEnabledInDBPerApp, callingUid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", caller = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", callerUid in DB = , callerPkg in DB = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v1, v9, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "isTimaKeystoreEnabledInDBPerApp matched. caller app can use TKS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v3

    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isTimaKeystoreEnabledInDBPerApp() failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimaKeystoreEnabledInDBPerApp returning -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method public isTimaKeystoreEnabledInternal(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 8

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isTimaKeystoreEnabledInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3

    return v4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v4

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v4

    :cond_5
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binder.getCallingPid() "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Binder.getCallingUid()"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v6, "knox_timakeystore_policy"

    const-string/jumbo v7, "isTimaKeystoreEnabled"

    invoke-static {v1, v3, v5, v6, v7}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    return v4

    :cond_7
    if-nez v0, :cond_9

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerAppOnly()V

    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - this ctx is not in TKSperappDB, but has TKSperapp permission"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return v4

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isTimaKeystoreEnabledInDBPerApp() no permission"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v2
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

.method public systemReady()V
    .locals 3

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Tima Keystore InternalHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->thread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

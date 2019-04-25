.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ACTION_KES_TRIGGER:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KES_TRIGGER"

.field private static final ACTIVATE_DEVICE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field private static final BULK_ENROLL_DATA_FILE:Ljava/lang/String; = "BulkEnrollmentProfile"

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field private static final CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field private static final EXCLUDED_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KG_PKG_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final KLMS_PKG_NAME:Ljava/lang/String; = "com.samsung.klmsagent"

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field private static final MY_PID:I

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field private static final NON_MDM_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERMISSION_KNOX_ACTIVATE_DEVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field private static final PERMISSION_KNOX_PROXY_ADMIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

.field private static final PERMISSION_KNOX_SILENT_ACTIVATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

.field private static final PROXY_ADMIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_DIR:Ljava/lang/String; = "/data/app/selfUpdateApks"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_PATH:Ljava/lang/String; = "/data/app/selfUpdateApks/"

.field private static final SELF_UPDATE_ADMIN_COMPONENT_KEY:Ljava/lang/String; = "self_update_admin_component"

.field private static final SELF_UPDATE_ADMIN_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/selfUpdateAdmin.conf"

.field private static final SELF_UPDATE_ADMIN_SEPARATOR:Ljava/lang/String; = ";"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final SILENT_ACTIVATION_PERMISION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field private static final UMC_DATA_PATH:Ljava/lang/String; = "/efs/umc"

.field public static final UMC_PACKAGENAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

.field private static mFirstInitializedPolicyServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field private static mInternalHandler:Landroid/os/Handler;

.field public static mKPUPackageName:Ljava/lang/String;

.field private static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private static mPolicyServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfUpdateAdminComponent:Landroid/content/ComponentName;

.field private static mServiceAdditionCondition:Landroid/os/ConditionVariable;

.field private static mServicesAdded:Z


# instance fields
.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

.field final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field final mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v0, "com.samsung.android.email.provider"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.esdk.elm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v2, "com.samsung.android.kgclient"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.nttdocomo.android.wipe"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.nttdocomo.android.remotelock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.enterprise.knox.express"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.samsung.android.kgclient"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    new-instance v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v1, Lcom/android/server/enterprise/log/LogManagerService;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/log/LogManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "log_manager_service"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleDowngrade()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isFirmwareChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "handleUpgrade: Checking Upgrade..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->handleFirmwareUpgrade()V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    const-string/jumbo v0, "ro.build.fingerprint"

    const-string/jumbo v3, "unknown"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PlatformSoftwareVersion"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-direct {v0, v3, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    const-string/jumbo v3, "enterprise_license_policy"

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "enterprise_license_policy"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v4, "enterprise_license_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    const-string v3, "application_policy"

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v4, "application_policy"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v4, "application_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    const-string/jumbo v3, "wifi_policy"

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "wifi_policy"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v4, "wifi_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    const-string/jumbo v3, "phone_restriction_policy"

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "phone_restriction_policy"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v4, "phone_restriction_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    const-string/jumbo v3, "remoteinjection"

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "remoteinjection"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v4, "remoteinjection"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    const-string/jumbo v3, "restriction_policy"

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "restriction_policy"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v4, "restriction_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "edm_proxy"

    new-instance v4, Lcom/android/server/enterprise/EDMProxyService;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/EDMProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->onStartUser(I)V

    return-void
.end method

.method static synthetic access$1000()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->updateCurrentUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->cleanGenericTableOnUserRemoved(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices(Z)V

    return-void
.end method

.method private activateAdmin(Landroid/content/ComponentName;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activating admin on user!!!!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Admin cannot be activated"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->adjustKnoxGuardAdmin()V

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Component name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v0, 0x0

    move v13, v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v3, :cond_4

    :try_start_1
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-direct {v1, v8, v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v15

    if-nez v15, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v15, "Admin is already added"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_6

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    :try_start_2
    const-string v15, "EnterpriseDeviceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding admin "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " to lists"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v6

    const/4 v6, 0x0

    const/4 v15, 0x1

    :try_start_3
    invoke-virtual {v0, v7, v14, v15, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v0

    move v11, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_6

    :cond_5
    move-object/from16 v16, v6

    :goto_2
    if-eqz v11, :cond_a

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v14, v7}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_3

    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x1

    :goto_4
    if-gt v0, v12, :cond_8

    :try_start_4
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Attempt "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to active admin in DPM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v2, v4}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin sucessfully activated in DPM for user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin activation failed for user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EDM setActiveAdmin activationStatus -"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " for user - "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_9

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Admin added to DPM!"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Started removing admin information..."

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    const/4 v14, 0x1

    invoke-virtual {v1, v0, v14, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EDM - Admin activation failed for user -"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_a
    :try_start_5
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removing admin "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " from lists"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to activate admin"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_8
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v13, :cond_b

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Calling MSG_POST_ADMIN_ACTIVATION after Admin activation..."

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    const/4 v14, 0x1

    invoke-virtual {v0, v14, v7, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    return-void

    :catchall_4
    move-exception v0

    :goto_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad admin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addPolicyService failed becuase it\'s not enterprise service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addServices()V
    .locals 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "addServices() : Adding services() ... "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/device/DeviceInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    const-string v1, "device_info"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "device_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/license/LicenseLogService;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "license_log_service"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "license_log_service"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "auditlog"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "auditlog"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "eas_account_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "eas_account_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "email_account_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "email_account_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/location/LocationPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "location_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "location_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/general/MiscPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "misc_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "misc_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "vpn_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "vpn_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "password_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "password_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "security_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "security_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "roaming_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "roaming_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "bluetooth_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "bluetooth_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/email/EmailPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "email_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "email_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/firewall/Firewall;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "firewall"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "firewall"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "firewall_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "firewall_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "certificate_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "certificate_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "apn_settings_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "apn_settings_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "browser_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "browser_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "date_time_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "date_time_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "kioskmode"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "kioskmode"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "apppermission_control_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "apppermission_control_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "ldap_account_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "ldap_account_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/lso/LSOService;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "lockscreen_overlay"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "lockscreen_overlay"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "geofencing"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "geofencing"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "device_account_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "device_account_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "dualsim_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "dualsim_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "bluetooth_secure_mode_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "bluetooth_secure_mode_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string/jumbo v1, "multi_user_manager_service"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v2, "multi_user_manager_service"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/dex/DexPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    const-string v1, "dex_policy"

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v2, "dex_policy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addServices() : Failure creating Policy services"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->notifyAddSystemService()V

    return-void
.end method

.method private adjustKnoxGuardAdmin()V
    .locals 3

    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKgTurnedOn()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v2, "com.samsung.android.kgclient"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v2, "com.samsung.android.kgclient"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v2, "com.samsung.android.kgclient"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v2, "com.samsung.android.kgclient"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "enterprise_license_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return v2

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private checkCallerIsUMC()Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private checkContainerOwnerShip(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 4

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin doesn\'t own container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ContextInfo.uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 6

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move v1, v0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin doesn\'t own container id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ContextInfo.uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkProfileOwnerPremium(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isPremiumUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile is not a knox premium user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ContextInfo.uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isPremiumUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile is not a knox premium user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ContextInfo.uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method private checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "permissions"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "proxyUid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v6, "permissions"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-interface {v7, v6, v8}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_3

    return v3

    :cond_3
    goto :goto_1

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v3

    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "could not check calling permission"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v4
.end method

.method private cleanGenericTableOnUserRemoved(I)V
    .locals 4

    const-string/jumbo v0, "userID"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "generic"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x40

    if-nez p3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v4, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    goto :goto_1

    :goto_0
    nop

    :try_start_1
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v1, :cond_3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    return v0

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    :goto_4
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Invalid arguments"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    if-nez v0, :cond_0

    const-string v2, "EnterpriseDeviceManagerService"

    const-string v3, "Could not Read package info"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, p1

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p1, v5

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .locals 7

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating context as user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " could not be found! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V
    .locals 13

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateProxyAdminsForOwnerAdmin() : ownerUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "adminUid"

    const-string/jumbo v2, "proxyUid"

    const-string/jumbo v3, "proxyType"

    const-string v4, "componentName"

    const-string/jumbo v5, "proxyComponentName"

    const-string/jumbo v6, "label"

    const-string/jumbo v7, "icon"

    const-string v8, "description"

    const-string/jumbo v9, "permissions"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "proxyUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "adminUid"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "componentName"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "proxyComponentName"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-ne v6, p2, :cond_0

    if-eqz v8, :cond_0

    :try_start_0
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeProxyAdmin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deactivateAdminForUser:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method private enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-nez p1, :cond_0

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    :goto_0
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_1

    sget v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-eq v4, v0, :cond_2

    :cond_1
    if-eqz v7, :cond_4

    const-string v0, "android.uid.system:1000"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v0

    :cond_3
    return-object v5

    :cond_4
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerService(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v0

    :cond_5
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    if-eqz p4, :cond_7

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No active admin owned by uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    :goto_1
    invoke-direct {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_a

    invoke-direct {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    if-eqz p3, :cond_8

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_8
    if-eqz v2, :cond_a

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-direct {v1, v5, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    if-ne v0, v9, :cond_a

    if-eqz p3, :cond_9

    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v0

    :cond_9
    return-object v5

    :cond_a
    if-nez v8, :cond_d

    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v0, v3, :cond_d

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAuthorizedAdminUid(I)I

    move-result v0

    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v10, v0, :cond_d

    if-eqz p3, :cond_b

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_b
    if-eqz v2, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d

    invoke-direct {v1, v5, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v10

    if-ne v10, v9, :cond_d

    if-eqz p3, :cond_c

    iget v9, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v9

    :cond_c
    return-object v5

    :cond_d
    if-nez v8, :cond_f

    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v0, v3, :cond_f

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v0

    if-ne v3, v0, :cond_e

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ContextInfo UID voilation info is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but caller is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_2
    if-eqz p5, :cond_11

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isDeviceOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v8, :cond_10

    goto :goto_3

    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "caller is not DO or PO or KPU: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_3
    if-eqz p3, :cond_12

    invoke-direct {v1, v5, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShip(Lcom/samsung/android/knox/ContextInfo;Z)V

    invoke-direct {v1, v5, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkProfileOwnerPremium(Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_12
    const/4 v11, 0x0

    move v12, v11

    if-eqz v2, :cond_14

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_13

    const/4 v0, 0x1

    nop

    move v12, v0

    goto :goto_5

    :cond_13
    nop

    const/4 v9, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_14
    :goto_5
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "is permission granted: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    nop

    const-string v9, "EnterpriseDeviceManagerService"

    const-string v13, "could not check calling permission"

    invoke-static {v9, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    const-string v0, ""

    if-nez v12, :cond_16

    if-eqz v2, :cond_15

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_15

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    const/4 v14, 0x1

    :goto_8
    move v9, v14

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " OR "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v14, v9, 0x1

    goto :goto_8

    :cond_15
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin  does not have "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_16
    if-eqz p3, :cond_18

    iget v9, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_18

    if-eqz v8, :cond_17

    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v9, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v9

    invoke-direct {v1, v5, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v11

    :cond_17
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v9

    :cond_18
    if-eqz v8, :cond_19

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isDelegationEnabledForDO(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-direct {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getDeviceOwnerUid()I

    move-result v9

    invoke-direct {v1, v5, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v11

    :cond_19
    const-string v9, "EnterpriseDeviceManagerService"

    const-string/jumbo v11, "enforceActiveAdminDualPermission >>>"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public static enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :goto_0
    return-void

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v1

    :cond_3
    :goto_1
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "no permission provided"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez p1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p1, v1

    :cond_0
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-direct {p0, v7, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyActivePermissions(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not supported, Device permission not present"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-nez v0, :cond_3

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-gtz v1, :cond_3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation supported only on owner space"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceUMCSignature()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller is not real UMC. Signature Verification failed."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "package not found"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    const v5, 0xc8080

    invoke-interface {v4, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v4

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v3, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_1
    new-instance v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    move-exception v5

    return-object v2

    :catch_2
    move-exception v5

    return-object v2

    :cond_0
    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_2
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v5

    :catch_3
    move-exception v4

    return-object v2

    :catch_4
    move-exception v4

    return-object v2
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin found on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAdminNameForUserId(I)Landroid/content/ComponentName;
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    long-to-int v4, v1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAuthorizedAdminUid(I)I
    .locals 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "getAuthorizedAdminUid"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v3, "adminUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public static getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p0, v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCallingOrCurrentUserId(): move: cxtInfo.mContainerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return v0

    :cond_1
    sget v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_2
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    return v0
.end method

.method private declared-synchronized getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDeviceOwnerUid()I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Failed to retrieve DO component on device"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Failed to get application info for DO component."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, -0x1

    return v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-object v0
.end method

.method public static getKioskOrOwnerUserId()I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getCOMContainerOrOwnerUserId()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I
    .locals 5

    const-string v0, "adminUid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "PROXY_ADMIN_INFO"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "adminUid"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :cond_0
    return p1
.end method

.method private handleDowngrade()V
    .locals 7

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "handleDowngrade: Checking Downgrade..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v1, "enterprise.db"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/enterprise.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/dmappmgr.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    :cond_0
    return-void
.end method

.method private initServices(Z)V
    .locals 6

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    if-eqz p1, :cond_0

    invoke-interface {v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initServices() failed in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    goto :goto_0

    :cond_2
    return-void
.end method

.method private isDOPresent()Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Failed to retrieve DO on device"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isDelegationEnabledForDO(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFirmwareChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PlatformSoftwareVersion"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.build.fingerprint"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v1, v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    return v2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    return v2
.end method

.method private isKPUPlatformSigned(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isKgTurnedOn()Z
    .locals 5

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "isKgTurnedOn."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->isKgTurnedOn()Z

    move-result v1

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKgTurnedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKgTurnedOn() : Failure getting KGVM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "KnoxGuardVaultManager not supported (KnoxGuardVaultException)"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p0, v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKioskOrOwnerUserId(): userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerId(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x0

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method private isMdmAdminPresentInternal()Z
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMdmAdminPresentInternal() : MDM Admin Found - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    nop

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMdmAdminPresentInternal() : MDM Admin Found(2) - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    goto/16 :goto_0

    :cond_4
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "isMdmAdminPresentInternal() : MDM Admin is not present."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "isMdmAdminPresentInternal() : failed. "

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static isPackageInstalled(Ljava/lang/String;I)Z
    .locals 8

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPackageInstalled() : package present. application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    :try_start_1
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPackageInstalled() : package is not present. application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Exception in isPackageInstalled()"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_1
    return v3
.end method

.method private isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "apppermission_control_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getApplicationGrantedPermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_0
    move-exception v3

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x0

    return v3
.end method

.method public static isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt get Package Info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    move v2, v0

    :try_start_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    nop

    return v0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method private loadActiveAdmins()V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "loadActiveAdmins"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v7, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v0

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v9, v6, :cond_2

    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-interface {v0, v7, v10}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    goto/16 :goto_3

    :cond_2
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ADMIN_INFO"

    const-string v11, "adminUid"

    invoke-virtual {v0, v6, v10, v11, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", updated with new currentUid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", old storedUid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-interface {v0, v7, v10}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed updating uid, removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    goto :goto_4

    :cond_5
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v7, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin loaded null, removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_6
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured while loading active admins "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    goto/16 :goto_0

    :cond_6
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    move-object v8, v0

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v9, v0

    move-object v10, v4

    :try_start_7
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v11}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v10, v0

    goto :goto_7

    :catch_3
    move-exception v0

    :try_start_8
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to get active admins from dpm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-eqz v10, :cond_d

    if-eqz v9, :cond_b

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v16, v2

    goto/16 :goto_c

    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    const/4 v13, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v13, 0x1

    goto :goto_a

    :cond_8
    nop

    const/4 v4, 0x0

    goto :goto_9

    :cond_9
    :goto_a
    if-nez v13, :cond_a

    iget v4, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v12, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v14, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding missing admin to EDM : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v14, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v15, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_b

    :cond_a
    move-object/from16 v16, v2

    :goto_b
    move-object/from16 v2, v16

    const/4 v4, 0x0

    goto :goto_8

    :cond_b
    move-object/from16 v16, v2

    :goto_c
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding all admins from DPM for user : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iget v4, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding missing admin to EDM : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v5, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_e

    :cond_c
    const/4 v14, 0x0

    :goto_e
    goto :goto_d

    :cond_d
    move-object/from16 v16, v2

    :cond_e
    move-object/from16 v2, v16

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method private migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating ECPP Database data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EcppMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EcppMigrationManager;->migrateEcppDB(Landroid/content/ComponentName;IJ)Z

    move-result v0

    return v0
.end method

.method private migrateEnterpriseDatabase(IZ)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating Enterprise data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateEnterpriseDB(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyAddSystemService()V
    .locals 6

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {v2, v3, v4}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyAddSystemService() failed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyAdminAddedLocked(I)V
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2, p1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyAdminRemovedLocked(I)V
    .locals 5

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2, p1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "notifyAdminRemovedLocked Ex2:"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyPreAdminRemovalLocked(I)V
    .locals 5

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2, p1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "notifyPreAdminRemovalLocked Ex1:"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method private onStartUser(I)V
    .locals 3

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser() : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveAdmin() : Removing admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove action admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove action admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove action admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    nop

    :goto_1
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Admin removed from DPM!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeActiveAdminDelayed - adminReceiver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", calling uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v5, v6, :cond_1

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    const-string v8, "Only system or itself can remove an EDM admin"

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cannot be removed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->cleanUpConstrainedState(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v0

    :try_start_2
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v0, v5}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v12, "EnterpriseDeviceManagerService"

    const-string/jumbo v13, "removeActiveAdminDelayed Ex1:"

    invoke-static {v12, v13, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v21, v6

    move/from16 v23, v7

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v21, v6

    move/from16 v23, v7

    goto/16 :goto_9

    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "MyKNOXAdmin"

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object v10, v0

    if-eqz v10, :cond_4

    :try_start_5
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "MyKNOXAdmin"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :try_start_6
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing Admin with uid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeAdminFromDatabase(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v21, v6

    move/from16 v23, v7

    move-object/from16 v24, v10

    goto/16 :goto_8

    :catch_2
    move-exception v0

    :try_start_8
    const-string v11, "EnterpriseDeviceManagerService"

    const-string v12, "FATAL: Admin failed to remove lets try during next boot up"

    invoke-static {v11, v12, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v0, :cond_5

    :try_start_a
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v12, v0

    :try_start_b
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v0, v5}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_c
    const-string v13, "EnterpriseDeviceManagerService"

    const-string/jumbo v14, "removeActiveAdminDelayed Ex2:"

    invoke-static {v13, v14, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_4
    goto :goto_3

    :cond_5
    if-eqz v2, :cond_a

    const/16 v0, 0x3e8

    if-ne v5, v0, :cond_a

    const/4 v11, 0x0

    :try_start_d
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v12

    move-object v11, v12

    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    invoke-direct {v1, v13, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v14
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v14, :cond_6

    :try_start_e
    invoke-virtual {v14}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eq v15, v0, :cond_6

    goto :goto_5

    :cond_6
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v13, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->reconcileAdmin(Landroid/content/ComponentName;I)V

    const-string v0, "adminUid"

    const-string/jumbo v12, "proxyUid"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "adminUid"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object/from16 v17, v4

    :try_start_10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "PROXY_ADMIN_INFO"

    invoke-virtual {v4, v15, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    move-object/from16 v18, v16

    move-object/from16 v19, v0

    const-string v0, "adminUid"

    move-object/from16 v20, v4

    move-object/from16 v4, v18

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move/from16 v21, v6

    :try_start_11
    const-string/jumbo v6, "proxyUid"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v5, :cond_7

    move-object/from16 v22, v4

    iget-object v4, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move/from16 v23, v7

    :try_start_12
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v4, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v10

    const-string v10, "MUMContainer relation rebuilt : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_7

    :cond_7
    move/from16 v23, v7

    move-object/from16 v24, v10

    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v4, v20

    move/from16 v6, v21

    move/from16 v7, v23

    move-object/from16 v10, v24

    goto :goto_6

    :catchall_2
    move-exception v0

    move/from16 v23, v7

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move/from16 v23, v7

    goto :goto_9

    :cond_8
    move/from16 v21, v6

    move/from16 v23, v7

    move-object/from16 v24, v10

    goto :goto_a

    :catchall_3
    move-exception v0

    move/from16 v21, v6

    move/from16 v23, v7

    goto :goto_b

    :catch_5
    move-exception v0

    move/from16 v21, v6

    move/from16 v23, v7

    goto :goto_9

    :cond_9
    move-object/from16 v17, v4

    move/from16 v21, v6

    move/from16 v23, v7

    move-object/from16 v24, v10

    const/16 v0, 0x3e8

    goto/16 :goto_5

    :cond_a
    move-object/from16 v17, v4

    move/from16 v21, v6

    move/from16 v23, v7

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v21, v6

    move/from16 v23, v7

    move-object/from16 v24, v10

    :goto_8
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :catch_6
    move-exception v0

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v21, v6

    move/from16 v23, v7

    goto :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v21, v6

    move/from16 v23, v7

    :goto_9
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :goto_a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-direct {v1, v2, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v4, "ADMIN_REMOVED"

    invoke-static {v0, v4, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :catchall_7
    move-exception v0

    :goto_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private runAdminUpdate()V
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private selfUpdate()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "selfUpdate in progress"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    const-string/jumbo v3, "self_update_admin_component"

    const-string v4, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "nothing to selfUpdate"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/app/selfUpdateApks"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    monitor-exit p0

    return-void

    :cond_1
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const/4 v4, 0x0

    aget-object v5, v0, v4

    if-nez v5, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    move-object v1, v6

    if-nez v1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/app/selfUpdateApks/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v0

    move-object v5, v2

    :try_start_2
    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_0

    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v1, v4}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_5

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "Waiting..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    monitor-exit v1

    goto :goto_1

    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    :cond_5
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "Finished Waiting."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Uninstall of old apk"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v7, "Install of new apk"

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :cond_6
    :goto_4
    :try_start_7
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v7, "Cannot read or is not a file : /data/app/selfUpdateApks/"

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Upgrade Admin Ex: "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private sendMigrationIntent(Z)V
    .locals 0

    return-void
.end method

.method private setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mCallerUid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showKnoxVersion()Ljava/lang/String;
    .locals 19

    const-string v1, ""

    const-string v2, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxContainerVersionString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Knox "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_6

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Standard SDK "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :try_start_4
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Premium SDK "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Customization SDK "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_4
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxContainerVersionString()Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "Container  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_5
    :try_start_a
    const-string/jumbo v8, "net.knoxisl.version"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-eqz v8, :cond_6

    :try_start_b
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "IM "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :cond_6
    :try_start_c
    const-string/jumbo v10, "net.knoxscep.version"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    if-eqz v10, :cond_7

    :try_start_d
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "CEP "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :cond_7
    :try_start_e
    const-string/jumbo v11, "sys.enterprise.billing.version"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    if-eqz v11, :cond_8

    :try_start_f
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "Enterprise Billing "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :cond_8
    :try_start_10
    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v12
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    if-eqz v12, :cond_9

    :try_start_11
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "SE for Android "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :cond_9
    :try_start_12
    const-string/jumbo v13, "net.knoxsso.version"

    invoke-static {v13, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    if-eqz v13, :cond_a

    :try_start_13
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "SSO "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :cond_a
    :try_start_14
    const-string/jumbo v14, "net.knox.shareddevice.version"

    invoke-static {v14, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    if-eqz v14, :cond_b

    :try_start_15
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "Shared Devices "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :cond_b
    :try_start_16
    const-string v15, ""

    const-string/jumbo v9, "ro.config.timaversion"

    move-object/from16 v16, v0

    const-string v0, "No Policy Version"

    invoke-static {v9, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "3.0"

    const-string/jumbo v9, "ro.config.timaversion"

    const-string v15, "No Policy Version"

    invoke-static {v9, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/16 v15, 0x10e

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v15
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    if-eqz v15, :cond_c

    :try_start_17
    const-string v15, "3.3"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    goto :goto_2

    :cond_c
    :try_start_18
    const-string v15, "3.2"
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    :goto_2
    move-object/from16 v17, v1

    :try_start_19
    const-string/jumbo v1, "true"
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    move-object/from16 v18, v2

    :try_start_1a
    const-string/jumbo v2, "ro.config.dmverity"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    shl-int/lit8 v1, v9, 0x0

    add-int/2addr v0, v1

    :cond_d
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ro.config.rkp"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    shl-int/lit8 v1, v9, 0x1

    add-int/2addr v0, v1

    :cond_e
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ro.config.kap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    shl-int/lit8 v1, v9, 0x2

    add-int/2addr v0, v1

    :cond_f
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ro.config.kap_default_on"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    shl-int/lit8 v1, v9, 0x3

    add-int/2addr v0, v1

    :cond_10
    const/16 v1, 0xa

    if-ge v0, v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_6

    :cond_12
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    const-string/jumbo v0, "ro.config.timaversion"

    const-string v1, "No Policy Version"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v1, "TIMA "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_13
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    :goto_5
    const-string/jumbo v0, "net.knoxvpn.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "VPN "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    :cond_14
    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    :goto_6
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Failed to get Knox Version "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native startRemoteDesktopService()V
.end method

.method private systemReady(I)V
    .locals 3

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() : mCurrentPhase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->onStartUser(I)V

    nop

    :goto_0
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->systemReady(I)V

    :cond_2
    return-void
.end method

.method private updateCurrentUser()V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "updateCurrentUser() : cannot get current userId. "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_0

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCurrentUser() : User changed ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    iget v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V

    :cond_0
    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private verifyActivePermissions(ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public activateAdminForUser(Landroid/content/ComponentName;ZI)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v7, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activating proxy admin on user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->adjustKnoxGuardAdmin()V

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    :cond_0
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Component name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v13, 0x1

    move v14, v13

    if-nez v3, :cond_2

    :try_start_1
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v8, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Admin is already added"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding admin "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to lists"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v6, v13, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v0

    move v14, v0

    :cond_3
    if-eqz v14, :cond_8

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v15, v7}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_1

    :cond_4
    move v0, v13

    :goto_2
    if-gt v0, v9, :cond_6

    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempt "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " to active admin in DPM"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v2, v4}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin sucessfully activated in DPM for user "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    nop

    move v10, v6

    goto :goto_3

    :cond_5
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin activation failed for user "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EDM setActiveAdmin activationStatus -"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " for user - "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_7

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Admin added to DPM!"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Started removing admin information..."

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v0, v6, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EDM - Admin activation failed for user -"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing admin "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " from lists"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to activate admin"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    nop

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    :try_start_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v10, :cond_9

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Calling MSG_POST_ADMIN_ACTIVATION after Admin activation..."

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v7, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    monitor-exit p0

    return-void

    :goto_6
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad admin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public activateDevicePermissions(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-object v3, v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed due to application is installed in device as user:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    return v8

    :cond_1
    sget-object v10, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "This permission cannot be set on device level from the container: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2
    goto :goto_0

    :cond_3
    const-string v7, "android.permission.sec.MDM_SECURITY"

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "encrypted-storage"

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add device permission: encrypted-storage, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v7, 0x14

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "require-storagecard-encryption"

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add device permission: require-storagecard-encryption, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v7, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    invoke-direct {v7, v9, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    invoke-virtual {p0, v7, v2, v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    invoke-virtual {p0, v4, v8, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v8, 0x1

    return v8

    :cond_6
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "No active admin"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Admin already present and active"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addAuthorizedUid(II)Z
    .locals 3

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "addAuthorizedUid"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "permissions"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "label"

    invoke-virtual {p1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "description"

    invoke-virtual {p1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method

.method public captureUmcLogs(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)[B
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    const-string v0, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    sget v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    move-object v9, v0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v12, :cond_2

    iget-object v13, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v14, p3

    :try_start_1
    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget v13, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object/from16 v14, p3

    :cond_3
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v14, p3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v14, p3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string/jumbo v0, "logcat"

    const-string v4, "-d"

    const-string v11, "-v"

    const-string/jumbo v12, "threadtime"

    filled-new-array {v0, v4, v11, v12}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const/4 v11, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    move-object v11, v0

    const/4 v0, 0x0

    const-string/jumbo v12, "line.separator"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v17, v0

    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v10}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v15, Ljava/util/zip/ZipEntry;

    const-string v1, "BELogs.txt"

    invoke-direct {v15, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v15, Ljava/io/BufferedReader;

    move-object/from16 v18, v1

    new-instance v1, Ljava/io/InputStreamReader;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v19, v2

    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v15, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v15

    const-string v2, "---------------------------------------------------------------\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "---------------------------------------------------------------\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    if-eqz v15, :cond_7

    const-string v15, " +"

    move-object/from16 v2, v20

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_6

    array-length v3, v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v21, v4

    const/4 v4, 0x2

    if-le v3, v4, :cond_5

    :try_start_4
    aget-object v3, v15, v4

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v21, v4

    const/4 v3, 0x0

    :goto_5
    move-object/from16 v4, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    goto :goto_4

    :cond_7
    move-object/from16 v21, v4

    move-object/from16 v2, v20

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v5, v3

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    :goto_6
    const-string v1, "EnterpriseDeviceManagerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    :goto_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5
.end method

.method public checkServices()V
    .locals 2

    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    return-void
.end method

.method public configureContainerAdminForMigration(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configure the MDM admin before and after migration on Device after FOTA update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->blockAdminToReceivePolicy(Z)Z

    move-result v0

    return v0
.end method

.method public deactivateAdminForUser(Landroid/content/ComponentName;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivateAdminForUser :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deactivateProxyAdminsForUser(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "adminUid"

    const-string/jumbo v4, "proxyUid"

    const-string/jumbo v5, "proxyType"

    const-string v6, "componentName"

    const-string/jumbo v7, "proxyComponentName"

    const-string/jumbo v8, "label"

    const-string/jumbo v9, "icon"

    const-string v10, "description"

    const-string/jumbo v11, "permissions"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PROXY_ADMIN_INFO"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "proxyUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "proxyComponentName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, p1, :cond_0

    :try_start_0
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeProxyAdmin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deactivateAdminForUser:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseDeviceManagerService Knox Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->showKnoxVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseDeviceManagerService SystemUIAdapter Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getAdapterId()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUserId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUIAdapter adapterId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getAdapterId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUIAdapter registed count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getRegistedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isKnoxStateMonitorRegisted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUIAdapter is not registed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enforceActiveAdminPermission(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1, p1, p2}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not authorized to be called!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_0
    return-void
.end method

.method public enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component name violation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlySupportedOperation()V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not supported on user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", only allowed on owner."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActiveAdminPackageName(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v1
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    const/16 v3, -0x2710

    if-eq v3, p1, :cond_1

    const/4 v3, -0x1

    if-eq v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit p0

    return-object v0

    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    monitor-enter p0

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveSamsungAuthorizedAdmin(I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAdminContextIfCallerInCertWhiteList(Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v5

    const-string v0, "adminUid"

    const-string/jumbo v7, "packageName"

    const-string/jumbo v8, "signature"

    filled-new-array {v0, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v8, v0

    nop

    invoke-static {v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v0

    const-string v9, "#SelectClause#"

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CertificateWhiteListTable"

    invoke-virtual {v0, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/ContentValues;

    const-string/jumbo v0, "packageName"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v0, "signature"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    if-eqz v5, :cond_5

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v16, v0

    move-object/from16 v6, v16

    if-eqz v6, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v6, v12, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    move/from16 v17, v0

    move/from16 v1, v17

    if-ne v1, v3, :cond_5

    const/4 v0, 0x0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    move/from16 v19, v0

    move-object/from16 v0, v18

    if-eqz v0, :cond_1

    move/from16 v20, v1

    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v21, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    :try_start_1
    aget-object v16, v0, v3

    move-object/from16 v22, v16

    nop

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    invoke-static {v5, v0, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    move/from16 v19, v16

    if-eqz v19, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v23

    goto :goto_1

    :cond_1
    move/from16 v20, v1

    move/from16 v21, v3

    :cond_2
    :goto_2
    goto :goto_3

    :cond_3
    move/from16 v19, v0

    move/from16 v20, v1

    move/from16 v21, v3

    const/16 v19, 0x1

    :goto_3
    if-eqz v19, :cond_6

    const-string v0, "adminUid"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v0

    if-eqz v2, :cond_6

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_4
    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "EnterpriseDeviceManagerService"

    move-object/from16 v24, v0

    const-string v0, "Could not check permission of the admin that has added caller to cert white list"

    invoke-static {v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move/from16 v21, v3

    goto :goto_5

    :catch_2
    move-exception v0

    move/from16 v21, v3

    :goto_4
    :try_start_4
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v3, "Package added to certificate whitelisted not installed"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5
    move/from16 v21, v3

    :cond_6
    :goto_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    move/from16 v3, v21

    move-object/from16 v1, p0

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    move/from16 v21, v3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, -0x1

    if-nez p2, :cond_0

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v8

    if-ne v8, v10, :cond_2

    return v3

    :cond_1
    goto :goto_0

    :cond_2
    if-ne v0, v6, :cond_3

    return v10

    :cond_3
    goto :goto_1

    :cond_4
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v1

    return v1
.end method

.method public getAdminUidForAuthorizedUid(I)I
    .locals 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "getAdminUidForAuthorizedUid"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v3, "adminUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAuthorizedUidForAdminUid(I)I
    .locals 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "getAuthorizedUidForAdminUid"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v3, "authorizedUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "authorizedUid"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getConstrainedState()I
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedState()I

    move-result v0

    return v0
.end method

.method public getEnterpriseDeviceAdministrators()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    :try_start_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    const/16 v10, 0xc0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v9, v5, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object v8, v10

    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    :cond_3
    if-eqz v8, :cond_4

    const-string v10, "com.samsung.android.knoxenabled"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v6, 0x1

    :cond_4
    invoke-static {v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_6

    :cond_5
    if-eqz v7, :cond_7

    :cond_6
    if-nez v6, :cond_7

    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "EnterpriseDeviceManagerService"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    goto :goto_1

    :cond_8
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enterprise Device Admins "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKPUPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mKPUPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mKPUPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.knox.kpu"

    :goto_0
    return-object v0
.end method

.method public getMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "MyKNOXAdmin"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAdmins(I)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v5, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const-string v5, "adminUid"

    const-string/jumbo v6, "proxyUid"

    const-string/jumbo v7, "proxyType"

    const-string v8, "componentName"

    const-string/jumbo v9, "proxyComponentName"

    const-string/jumbo v10, "label"

    const-string/jumbo v11, "icon"

    const-string v12, "description"

    const-string/jumbo v13, "permissions"

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PROXY_ADMIN_INFO"

    invoke-virtual {v0, v6, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/ContentValues;

    const-string/jumbo v0, "proxyUid"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v0, -0x1

    if-eq v0, v2, :cond_0

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "proxyType"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    const-string/jumbo v0, "label"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "icon"

    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v18

    const-string v12, "description"

    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v12, "permissions"

    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v12, ";"

    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v12, "proxyComponentName"

    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v20, v5

    new-instance v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput v9, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v6, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v22, v12

    move-object v12, v6

    move-object/from16 v23, v13

    move-object v13, v4

    move-object/from16 v24, v14

    move-object v14, v0

    move-object/from16 v25, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    move-object v11, v6

    goto/16 :goto_6

    :cond_1
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    const-string v0, "adminUid"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "componentName"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "permissions"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v14, 0x0

    move-object v15, v14

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v26, v2

    const v2, 0x48080

    :try_start_1
    invoke-interface {v0, v6, v2, v14}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move/from16 v26, v2

    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_1
    move-exception v0

    move/from16 v26, v2

    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v15, :cond_2

    goto :goto_7

    :cond_2
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v2, v0

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v14, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v14}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object v14, v0

    iput v9, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput-object v14, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_3

    :try_start_2
    new-instance v0, Landroid/app/admin/ProxyDeviceAdminInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v27, v4

    :try_start_3
    iget-object v4, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v4}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    :goto_3
    move-object v11, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v27, v4

    goto :goto_5

    :cond_3
    move-object/from16 v27, v4

    new-instance v0, Landroid/app/admin/ProxyDeviceAdminInfo;

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :goto_4
    goto :goto_6

    :catch_3
    move-exception v0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    if-eqz v11, :cond_4

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    nop

    :goto_7
    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v2, p1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    return-object v3
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public getUserStatus(I)I
    .locals 12

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUserStatus is called for userid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-nez p1, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Valid Admin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in User 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v9

    goto :goto_2

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to getUserStatus"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_1
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_6

    :catch_1
    move-exception v4

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    if-ne v1, v4, :cond_3

    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Valid Admin for User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v5

    :cond_3
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    nop

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Failed to getUserStatus"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_5
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :goto_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public hasAnyActiveAdmin()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x1b

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0

    return v1

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .locals 6

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAdminRemovableInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v2

    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdminRemovableInternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad admin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mKPUPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "com.samsung.android.knox.kpu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const-string/jumbo v3, "ro.product_ship"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKPUPlatformSigned(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "KPU app does not have a valid signature.."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-ne v3, v5, :cond_9

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isDOPresent()Z

    move-result v2

    if-eqz v2, :cond_5

    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mKPUPackageName:Ljava/lang/String;

    return v4

    :cond_5
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "KPU cannot apply policies in user 0 space if DO is not present on device.."

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result v2

    if-nez v2, :cond_7

    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mKPUPackageName:Ljava/lang/String;

    return v4

    :cond_7
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "KPU must be inside PO to be able to call container APIs.."

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    return v2

    :cond_9
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "KPU userId does not match with ContextInfo.mContainerId.."

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isDeviceOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v1, v4

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Failed to retrive DO"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x0

    return v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isMdmAdminPresent()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresentInternal()Z

    move-result v0

    return v0
.end method

.method public isMdmAdminPresentAsUser(I)Z
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMdmAdminPresentAsUser() : MDM Admin Found - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    nop

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMdmAdminPresentAsUser() : MDM Admin Found(2) - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    goto/16 :goto_0

    :cond_4
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "isMdmAdminPresentAsUser() : MDM Admin is not present."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "isMdmAdminPresentAsUser() : failed. "

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public isMigrationStateNOK()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "migrationState"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current migration state is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string/jumbo v1, "nok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "error occured during getting migration state"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRestrictedByConstrainedState(I)Z
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result v0

    return v0
.end method

.method public isUMCAdmin(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "migrate ContainerApplicationPolicy after instalation of 3rd party apps"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateApplicationDisablePolicy(I)Z

    move-result v0

    return v0
.end method

.method public migrateEnterpriseContainer(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating Enterprise container data after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminNameForUserId(I)Landroid/content/ComponentName;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateEnterpriseDatabase(IZ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getEnterpriseMigrationResult()Z

    move-result v0

    :cond_1
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateEnterpriseContainer() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "No proper Admin owned by Container"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onContainerCreation(II)V
    .locals 7

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnterpriseDeviceManagerService.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    :try_start_0
    invoke-interface {v3, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerCreation"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 7

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnterpriseDeviceManagerService.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    :try_start_0
    invoke-interface {v3, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerRemoved"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 7

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnterpriseDeviceManagerService.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    :try_start_0
    invoke-interface {v3, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onPreContainerRemoval"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_0

    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " packageHasActiveAdminsAsUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/umc"

    const-string v7, "BulkEnrollmentProfile"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v5, v5, [B

    move-object v4, v5

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v1, 0x0

    if-lez v5, :cond_3

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    array-length v8, v4

    invoke-direct {v6, v4, v7, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return-object v6

    :cond_3
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_4
    :goto_2
    goto :goto_6

    :cond_5
    :goto_3
    nop

    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_6
    :goto_4
    nop

    :goto_5
    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v5

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :goto_6
    return-object v2

    :goto_7
    nop

    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_7
    :goto_8
    throw v2
.end method

.method public reconcileAdmin(Landroid/content/ComponentName;I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-ne v0, v1, :cond_3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v5, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_0

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reconcileAdmin for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "for user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need to be System Process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .locals 3

    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from DPM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public removeAuthorizedUid(II)Z
    .locals 5

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "removeAuthorizedUid"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAuthorizedUid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeProxyAdmin(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PROXY_ADMIN_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method public restoreContainerAdminData(ILjava/lang/String;I)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-ne v0, v1, :cond_7

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    const-string v3, "application_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v3, v4, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->backupApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v4

    move v0, v4

    if-nez v0, :cond_0

    const/high16 v4, 0x18000000

    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, p1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v3, v4, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->restoreApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreContainerAdminData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    return v3

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v4

    nop

    :cond_6
    :goto_4
    throw v3

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need to be System Process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized selfUpdateAdmin(Ljava/lang/String;)I
    .locals 14

    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apkFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 v1, -0x2

    monitor-exit p0

    return v1

    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v3, :cond_3

    move-object v2, p1

    nop

    :cond_3
    :goto_0
    move-object p1, v2

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    goto :goto_1

    :cond_5
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, -0x3

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_4

    :cond_7
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v8, :cond_8

    monitor-exit p0

    return v6

    :cond_8
    :try_start_5
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_9

    const/4 v1, -0x4

    monitor-exit p0

    return v1

    :cond_9
    :try_start_6
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v6, :cond_a

    const/4 v1, -0x5

    monitor-exit p0

    return v1

    :cond_a
    :try_start_7
    const-string/jumbo v6, "self_update_admin_component"

    const-string v9, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v6, v9}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    if-nez v6, :cond_b

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    goto :goto_2

    :cond_b
    const-string v10, "EnterpriseDeviceManagerService"

    const-string v11, "Upgrade Admin Pending"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    :cond_c
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/app/selfUpdateApks/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1ed

    invoke-static {v12, v13, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_d
    const-string/jumbo v12, "self_update_admin_component"

    const-string v13, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v12, v9, v13}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {v7, v11}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_3

    :cond_e
    const/16 v12, 0x1a4

    invoke-static {v10, v12, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_f
    :goto_3
    monitor-exit p0

    return v1

    :cond_10
    :goto_4
    :try_start_8
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read or is not a file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v6

    :cond_11
    :goto_5
    monitor-exit p0

    return v6

    :catch_0
    move-exception v2

    :try_start_9
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Upgrade Admin Ex: "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendIntent(I)V
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const v0, 0x104013f

    goto :goto_0

    :pswitch_1
    const v0, 0x1040587

    goto :goto_0

    :pswitch_2
    const v0, 0x104017a

    nop

    :goto_0
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    const-string v0, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    const/4 v0, -0x1

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    const/4 v6, 0x0

    if-nez v3, :cond_1

    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    :cond_0
    :goto_0
    move v14, v0

    goto :goto_3

    :cond_1
    iget-object v7, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v13}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "Can\'t found packageName"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    if-ne v0, v8, :cond_4

    return v6

    :cond_4
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :goto_3
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v7, "Admin is not active"

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAdminRemovable : callingUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN_INFO"

    const-string v7, "canRemove"

    invoke-virtual {v0, v14, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v11, v6

    if-nez v3, :cond_7

    const/4 v6, 0x5

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has set itself as "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_6

    :try_start_1
    const-string/jumbo v8, "removable"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-wide v6, v11

    goto :goto_7

    :cond_6
    :try_start_2
    const-string/jumbo v8, "not removable"

    :goto_4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v8, 0x1

    move-wide/from16 v16, v11

    move-object v11, v0

    move v12, v13

    :try_start_3
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-wide/from16 v6, v16

    goto :goto_7

    :catchall_2
    move-exception v0

    move-wide v6, v11

    goto :goto_7

    :cond_7
    move-wide/from16 v16, v11

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    :try_start_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has set "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_8

    :try_start_5
    const-string/jumbo v11, "removable"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :cond_8
    :try_start_6
    const-string/jumbo v11, "not removable"

    :goto_5
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move v12, v13

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_6
    move-wide/from16 v6, v16

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :catchall_3
    move-exception v0

    move-wide/from16 v6, v16

    :goto_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    :goto_8
    return v15
.end method

.method public setB2BMode(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MyKNOXAdmin"

    invoke-virtual {v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public setPermissions(I[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PROXY_ADMIN_INFO"

    const-string/jumbo v3, "permissions"

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public systemReady()V
    .locals 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "systemReady()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "mConstrainedState move to system ready "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->adjustKnoxGuardAdmin()V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresentInternal()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkConstrainedState()Z

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/email/AccountsReceiver;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "InternalHandlerThread"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->loadActiveAdmins()V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices(Z)V

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startRemoteDesktopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseDeviceManagerService"

    const-string v3, "Failed to start remote desktop service."

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final updateAdminPermissions()V
    .locals 2

    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "updateAdminPermissions"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "permissions"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "label"

    invoke-virtual {p1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "description"

    invoke-virtual {p1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PROXY_ADMIN_INFO"

    invoke-virtual {v2, v4, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    return-void
.end method

.method public writeUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/umc"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v8, "/efs/umc"

    const-string v9, "BulkEnrollmentProfile"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :cond_3
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    :goto_2
    nop

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :goto_4
    nop

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_6
    :goto_5
    nop

    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

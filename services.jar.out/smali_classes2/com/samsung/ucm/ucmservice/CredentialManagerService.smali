.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.super Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    }
.end annotation


# static fields
.field private static final ACTION_ENFORCE_LOCKTYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field private static final BAI_PCSCLITE_SERVICE:Ljava/lang/String; = "com.baimobile.android.pcsclite.service"

.field private static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field private static final CMC_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmc"

.field private static final CMP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmp"

.field private static final CREDENTIAL_AGENT_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_AGENT"

.field private static final CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

.field private static final CREDENTIAL_AGENT_INTENT_FILTER_LEGACY:Landroid/content/Intent;

.field private static final CREDENTIAL_AGENT_INTENT_LEGACY:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static DBG:Z = false

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field private static final EVENT_LICENSE_ACTIVATE:I = 0x1

.field private static final EVENT_LICENSE_EXPIRED:I = 0x2

.field private static final KEYGUARD_ATTRIBUTE_CONTAINER_OWNER:Ljava/lang/String; = "container_owner"

.field private static final KEYGUARD_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final KEYGUARD_ATTRIBUTE_OWNER:Ljava/lang/String; = "owner"

.field private static final KNOX_UCM_ESE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

.field private static final KNOX_UCM_ESE_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_ESE"

.field private static final KNOX_UCM_PLUGIN_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

.field private static final KNOX_UCM_PLUGIN_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

.field private static final KNOX_UCM_UNIFIED_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

.field private static final MIN_PERSONA_ID:I = 0xa

.field private static final MSG_CREDENTIAL_STORAGE_AVAILABLE:I = 0x3

.field private static final MSG_CREDENTIAL_STORAGE_CHANGED:I = 0x2

.field private static final MSG_PACKAGE_LICENSE_UPDATE:I = 0x4

.field private static final MSG_REFRESH_ACTIVE_AGENTS:I = 0x1

.field private static final MSG_REFRESH_APPLET_INFO:I = 0x5

.field private static final ODE_CONFIG_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final OLD_SAMSUNG_BAI_PLUGIN:Ljava/lang/String; = "com.sec.smartcard.manager"

.field private static final SAMSUNG_BAI_PLUGIN:Ljava/lang/String; = "com.samsung.ucm.baiplugin"

.field private static final SCEP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.scep"

.field private static final STORAGE_CONFIG_PATH:Ljava/lang/String; = "/data/system"

.field private static final TAG:Ljava/lang/String; = "UcmService"

.field private static final UCM_CREDENTIAL_STORAGE_NAME:Ljava/lang/String; = "lockscreen.ucscredentialstoragename"

.field private static final UCM_ENCRYPTION_CHECK_PROPERTY:Ljava/lang/String; = "ro.boot.ucs_mode"

.field private static final UCM_ENFORCE_LOCKTYPE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "UCM_KEYGUARD_NOTIFICATION"

.field private static final UCM_ENFORCE_LOCKTYPE_NOTIFICATION_ID:I = 0x1f40

.field private static final UCM_ODE_PROGRESS_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "UCM_ODE_NOTIFICATION"

.field private static final UCM_ODE_PROGRESS_NOTIFICATION_ID:I = 0x2328

.field private static final UCS_ODE_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucs"

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private activeAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private certEnrollSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isSystemReadyCalled:Z

.field private final mAppletsInfoLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmergencyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerthread:Landroid/os/HandlerThread;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersistentAppletInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentAppletInfoFile:Landroid/util/AtomicFile;

.field private mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

.field private final mPersistentServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentServicesFile:Landroid/util/AtomicFile;

.field private mPersistentServicesFileDidNotExist:Z

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field protected mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field private mRefreshReceiver:Landroid/content/BroadcastReceiver;

.field private final mServicesLock:Ljava/lang/Object;

.field private mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

.field private mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field private mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

.field private needToBindESE:Z

.field private systemPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private test_status_for_ode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ucm.agent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER_LEGACY:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.UCM_AGENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.ucm.baiplugin"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemPlugins:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockTypeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/ucm/ucmservice/PolicyManager;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "registered_ucm_services"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v7, "com.samsung.ucm.agent.xml"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system"

    const-string v8, "appletsConfig.xml"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "CredentialManagerServiceThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "UcmService"

    const-string v9, "Already Emergency Status"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    :cond_0
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "package"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;

    invoke-direct {v10, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v8, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;

    invoke-direct {v10, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v9, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v9, "ro.crypto.type"

    const-string/jumbo v10, "unknown"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v0, v9, :cond_2

    const-string v0, "UcmService"

    const-string v10, "fbe is enabled"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.security.ucs"

    const-string/jumbo v10, "none"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "none"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ro.boot.ucs_mode"

    const-string v10, "0"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig(I)V

    goto :goto_0

    :cond_2
    const-string v0, "UcmService"

    const-string v10, "fbe is not enabled"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.crypto.state"

    const-string/jumbo v10, "none"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "unencrypted"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "vold.decrypt"

    const-string/jumbo v10, "none"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "trigger_restart_framework"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "vold.decrypt"

    const-string/jumbo v10, "none"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "trigger_reset_main"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-string/jumbo v0, "persist.security.ucs"

    const-string/jumbo v10, "none"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "none"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ro.boot.ucs_mode"

    const-string v10, "0"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig(I)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v10, "com.samsung.android.certenrollservice.scep"

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v10, "com.samsung.android.certenrollservice.cmp"

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v10, "com.samsung.android.certenrollservice.cmc"

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerPersonaObserver()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUCMODEEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceLockType(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->runSefTestForEseCommTA()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateMDMPolicies(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendRefreshFinishIntent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isActivePlugin(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    return-void
.end method

.method private applyMDMPolicies(ZIILjava/lang/String;I)Z
    .locals 45

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyMDMPolicies adminUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", userId-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pluginPkg-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", apply-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDependentPluginPkgList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v11, 0xa

    if-eqz v4, :cond_1

    if-lt v4, v11, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v19, v7

    move/from16 v20, v8

    move-wide/from16 v24, v9

    goto/16 :goto_16

    :cond_1
    :goto_0
    new-instance v12, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v14, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v3, :cond_1b

    if-eqz v7, :cond_1b

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-lt v4, v11, :cond_3

    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-string v15, "UcmService"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v19, v7

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v20, v8

    :try_start_3
    const-string v8, "applyMDMPolicies adminUserId -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v11, v4, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    move v13, v7

    const/4 v14, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide v1, v9

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    move-wide v1, v9

    goto/16 :goto_18

    :catchall_1
    move-exception v0

    move/from16 v20, v8

    move-wide v1, v9

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    move/from16 v20, v8

    move-wide v1, v9

    goto/16 :goto_18

    :catchall_2
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-wide v1, v9

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-wide v1, v9

    goto/16 :goto_18

    :cond_3
    move-object/from16 v19, v7

    move/from16 v20, v8

    :goto_2
    :try_start_4
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyMDMPolicies isContainer ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "] isBYODContainer ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_f

    const/4 v8, 0x0

    if-nez v13, :cond_8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v15, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    if-nez v14, :cond_4

    if-eqz v15, :cond_4

    array-length v7, v15

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_4

    aget-object v17, v15, v2

    move-object/from16 v21, v17

    move/from16 v22, v7

    const-string v7, "UcmService"

    move/from16 v23, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-wide/from16 v24, v9

    :try_start_5
    const-string v9, "applyMDMPolicies admin pkg -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v21

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v22

    move/from16 v8, v23

    move-wide/from16 v9, v24

    goto :goto_3

    :cond_4
    move/from16 v23, v8

    move-wide/from16 v24, v9

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v7

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyMDMPolicies addPackagesToForceStopBlackList status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v8

    move v7, v8

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyMDMPolicies addPackagesToClearCacheBlackList status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v8

    move v7, v8

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyMDMPolicies addPackagesToClearDataBlackList status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_7

    if-eqz v15, :cond_6

    array-length v8, v15

    move v9, v7

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_5

    aget-object v10, v15, v7

    move-object/from16 v26, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v17

    move/from16 v9, v17

    const-string v2, "UcmService"

    move/from16 v27, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v11

    const-string v11, "applyMDMPolicies setAdminRemovable status-"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v26

    move/from16 v8, v27

    move-object/from16 v11, v28

    goto :goto_4

    :cond_5
    move-object/from16 v26, v2

    move-object/from16 v28, v11

    goto :goto_5

    :cond_6
    move-object/from16 v26, v2

    move-object/from16 v28, v11

    move v9, v7

    :goto_5
    const/4 v2, 0x0

    move v8, v2

    goto :goto_6

    :cond_7
    move-object/from16 v26, v2

    move-object/from16 v28, v11

    move v8, v7

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    move/from16 v23, v8

    move-wide/from16 v24, v9

    :cond_9
    if-eqz v14, :cond_d

    const/4 v2, -0x1

    if-eq v6, v2, :cond_d

    const-string v2, "UcmService"

    const-string v7, "applyMDMPolicies inside container logic"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUid0FromUid(II)I

    move-result v7

    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v15, 0x0

    invoke-direct {v9, v10, v11, v15}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v15, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v10, v11, v15}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v11

    if-eqz v11, :cond_d

    iget-object v15, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v15, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    move/from16 v29, v7

    array-length v7, v15

    move/from16 v30, v8

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_a

    aget-object v16, v15, v8

    move-object/from16 v31, v16

    move/from16 v32, v7

    const-string v7, "UcmService"

    move-object/from16 v33, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v15

    const-string v15, "applyMDMPolicies disable uninstall pkg -"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v31

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v32

    move-object/from16 v10, v33

    move-object/from16 v15, v34

    goto :goto_8

    :cond_a
    move-object/from16 v33, v10

    move-object/from16 v34, v15

    goto :goto_9

    :cond_b
    move/from16 v29, v7

    move/from16 v30, v8

    move-object/from16 v33, v10

    move-object/from16 v34, v15

    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v7

    const-string v8, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies inside container addPackagesToForceStopBlackList status-"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v8

    move v7, v8

    const-string v8, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies inside container addPackagesToClearCacheBlackList status-"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v8

    const-string v7, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies inside container addPackagesToClearDataBlackList status-"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_c
    move/from16 v8, v30

    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v7

    const-string v8, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies addPackagesToForceStopBlackList for plugin. status-"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v8

    move v7, v8

    const-string v8, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies addPackagesToClearCacheBlackList for plugin. status-"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v8

    const-string v7, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies addPackagesToClearDataBlackList for plugin. status-"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v15, "UcmService"

    move-object/from16 v35, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v7

    const-string v7, "applyMDMPolicies disable uninstall pkg -"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    nop

    move-object/from16 v2, v35

    move-object/from16 v7, v36

    goto :goto_b

    :cond_d
    move/from16 v30, v8

    move/from16 v8, v30

    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_17

    :cond_f
    move-wide/from16 v24, v9

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v5, v4, v3, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z

    move-result v8

    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyMDMPolicies ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] isPluginUsedInOtherUser ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_16

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v10, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    if-nez v14, :cond_10

    if-eqz v10, :cond_10

    array-length v11, v10

    move v15, v7

    :goto_c
    if-ge v15, v11, :cond_10

    aget-object v18, v10, v15

    move-object/from16 v37, v18

    const-string v7, "UcmService"

    move/from16 v38, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies admin pkg -"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v37

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v38

    move-object/from16 v5, p4

    const/4 v7, 0x0

    goto :goto_c

    :cond_10
    move/from16 v38, v2

    if-nez v8, :cond_11

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v5

    const-string v7, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v7

    move v5, v7

    const-string v7, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v7

    move v5, v7

    const-string v7, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    if-nez v14, :cond_14

    if-eqz v10, :cond_13

    array-length v7, v10

    move v11, v5

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v7, :cond_12

    aget-object v15, v10, v5

    move-object/from16 v39, v2

    const/4 v2, 0x1

    invoke-virtual {v12, v2, v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v17

    move/from16 v11, v17

    const-string v2, "UcmService"

    move/from16 v40, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v9

    const-string v9, "applyMDMPolicies setAdminRemovable status-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v39

    move/from16 v7, v40

    move-object/from16 v9, v41

    goto :goto_d

    :cond_12
    move-object/from16 v39, v2

    move-object/from16 v41, v9

    goto :goto_e

    :cond_13
    move-object/from16 v39, v2

    move-object/from16 v41, v9

    move v11, v5

    :goto_e
    const/4 v2, 0x0

    goto :goto_f

    :cond_14
    move-object/from16 v39, v2

    move-object/from16 v41, v9

    move v2, v5

    :goto_f
    if-nez v8, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    goto :goto_10

    :cond_15
    move/from16 v38, v2

    goto :goto_11

    :cond_16
    move/from16 v38, v2

    :goto_11
    if-eqz v14, :cond_1a

    const/4 v2, -0x1

    if-eq v6, v2, :cond_1a

    const-string v2, "UcmService"

    const-string v5, "applyMDMPolicies inside container logic"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUid0FromUid(II)I

    move-result v5

    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    invoke-direct {v7, v9, v10, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_1a

    if-eqz v11, :cond_17

    array-length v15, v11

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v15, :cond_17

    aget-object v16, v11, v1

    move-object/from16 v42, v16

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v43, v5

    const-string v5, "applyMDMPolicies enable uninstall pkg -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v42

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v43

    move/from16 v3, p2

    move/from16 v4, p3

    goto :goto_12

    :cond_17
    move/from16 v43, v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18

    invoke-virtual {v10}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v1

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies inside container removePackagesFromForceStopBlackList status-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v3

    move v1, v3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies inside container removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v3

    move v1, v3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies inside container removePackagesFromClearDataBlackList status-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v38, v1

    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    if-nez v8, :cond_1a

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v1

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies removePackagesFromForceStopBlackList for plugin status-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v3

    move v1, v3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies removePackagesFromClearCacheBlackList for plugin status-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v3

    move v1, v3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies removePackagesFromClearDataBlackList for plugin status-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "UcmService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v44, v0

    const-string v0, "applyMDMPolicies enable uninstall pkg -"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    nop

    move-object/from16 v0, v44

    goto :goto_13

    :cond_19
    move-object/from16 v44, v0

    move/from16 v38, v1

    :goto_14
    goto :goto_15

    :cond_1a
    move-object/from16 v44, v0

    goto :goto_14

    :goto_15
    const/4 v8, 0x1

    goto :goto_17

    :catchall_3
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_1a

    :catch_3
    move-exception v0

    move-wide/from16 v1, v24

    goto :goto_18

    :catchall_4
    move-exception v0

    move-wide v1, v9

    goto :goto_1a

    :catch_4
    move-exception v0

    move-wide v1, v9

    goto :goto_18

    :cond_1b
    move-object/from16 v19, v7

    move/from16 v20, v8

    move-wide/from16 v24, v9

    :goto_16
    move/from16 v8, v20

    :goto_17
    move-wide/from16 v1, v24

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    :catchall_5
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-wide v1, v9

    goto :goto_1a

    :catch_5
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-wide v1, v9

    :goto_18
    :try_start_6
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move/from16 v8, v20

    :goto_19
    return v8

    :catchall_6
    move-exception v0

    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CredentialManagerService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v1, v3, v4, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v1
.end method

.method private checkESEPermission(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "UcmService"

    const-string v1, "checkESEPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v0, "UcmService"

    const-string v2, "KNOX_UCM_ESE_PERMISSION is granted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v2, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "UcmService"

    const-string v2, "KNOX_UCM_ESE_PERMISSION_LEGACY is granted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "UcmService"

    const-string v2, "KNOX_UCM_UNIFIED_PERMISSION is granted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    return v0

    :cond_4
    :goto_0
    const-string v1, "UcmService"

    const-string/jumbo v2, "packagename is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkESEPermissionInstalledMDM()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check eSE Permission : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkESEPermission(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_3

    const-string v8, "UcmService"

    const-string v9, "ESE Permission exist 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    :cond_3
    iget-boolean v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 11

    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfNotify for cs Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Package name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    if-eqz v1, :cond_2

    const-string v2, "UcmService"

    const-string/jumbo v3, "notifying to managed plugin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify: Valid userid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, v7, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v4

    :cond_2
    const-string v2, "UcmService"

    const-string/jumbo v3, "notifying to unmanaged plugin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_3
    const-string v1, "UcmService"

    const-string v2, "Package name for CS found NULL. Cannot notify."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private checkPluginUsed(ILjava/lang/String;)Z
    .locals 6

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPluginUsed for the uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPluginUsed for the uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v3, "UcmService"

    const-string v4, "This plugin is already used in keyguard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string/jumbo v3, "persist.security.ucs.csname"

    const-string v4, "None"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v2, :cond_1

    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in ODE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkSystemCaller()V
    .locals 2

    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private compareCallingPkg([B[B)Z
    .locals 17

    const-string v0, "UcmService"

    const-string v1, "compareCallingPkg is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    new-instance v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v3, p1

    :try_start_1
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v6, p2

    :try_start_2
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v9, v1

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_2

    :try_start_3
    aget-object v10, v7, v1

    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "compareCallingPkg pkg - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v11, v4

    move v12, v0

    :goto_1
    if-ge v12, v11, :cond_1

    aget-object v13, v4, v12

    const-string v14, "UcmService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compareCallingPkg cachePkg -"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    const-string v0, "UcmService"

    const-string v11, "compareCallingPkg match found..."

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_2
    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v3, p1

    :goto_3
    move-object/from16 v6, p2

    :goto_4
    move v9, v1

    :goto_5
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getConfiguratorPkg -"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return v9
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "UcmService"

    const-string v2, "Signature s1 is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "UcmService"

    const-string v2, "Signature s2 is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "UcmService"

    const-string v3, "  Signature match"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_4
    const-string v3, "UcmService"

    const-string v4, "  Signature doesn\'t match"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_1

    aget-byte v4, p1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertByteToString result - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v10, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    const/16 v0, 0xe

    const/4 v12, 0x0

    if-nez v11, :cond_0

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteInternal : NULL agent for uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "booleanresponse"

    invoke-virtual {v10, v3, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "errorresponse"

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    :cond_0
    new-instance v3, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v14

    const/4 v4, -0x1

    if-eq v14, v4, :cond_2

    if-eq v3, v14, :cond_2

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_1

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v14

    :cond_2
    move v15, v3

    if-eqz v9, :cond_3

    move/from16 v3, p3

    goto :goto_0

    :cond_3
    invoke-direct {v1, v15}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v3

    :goto_0
    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v5

    if-ne v5, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    move v8, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v5

    if-eq v5, v4, :cond_5

    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v3

    const-string v4, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete new userid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v4, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete. Keeping same userid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    move v7, v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v5, v3

    :try_start_0
    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide/from16 v17, v5

    move v5, v7

    move v6, v15

    move/from16 v19, v7

    move v7, v9

    move/from16 v20, v8

    move-object/from16 v8, v16

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_7

    :try_start_2
    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! deleteInternal is NOT allowed for URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    invoke-virtual {v10, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-wide/from16 v3, v17

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v10

    :catchall_0
    move-exception v0

    move-wide/from16 v3, v17

    move/from16 v7, v19

    move/from16 v8, v20

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v3, v17

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v9, :cond_8

    const-string v6, "ismdm"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    const-string v6, "callerUid"

    invoke-virtual {v5, v6, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "user_id"

    move/from16 v7, v19

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "ownerUid"

    invoke-virtual {v5, v6, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "resource"

    move/from16 v8, v20

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "UcmService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete KEY_RESOURCE_ID= "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "resource"

    const/4 v1, -0x2

    invoke-virtual {v5, v12, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete KEY_USER_ID= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "user_id"

    invoke-virtual {v5, v12, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete KEY_CALLER_UID= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "callerUid"

    invoke-virtual {v5, v12, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "UcmService"

    const-string v1, "agent is not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v1, 0xe

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    move-wide/from16 v3, v17

    move/from16 v7, v19

    move/from16 v8, v20

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide v3, v5

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private deleteODEConfigInFileIfExist()V
    .locals 4

    const-string v0, "UcmService"

    const-string v1, "deleteODEConfigInFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "UcmService"

    const-string v3, "ODE config file does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "UcmService"

    const-string v3, "ODE config file exist so delete it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method

.method private disableAutoFactoryReset()V
    .locals 5

    :try_start_0
    const-string v0, "UcmService"

    const-string v1, "disableAutoFactoryReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_swipe_main_user"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTO_SWIPE_MAIN_USER current : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "auto_swipe_main_user"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    sget-boolean v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.Secure.putInt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private enforceLockType(ILjava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceLockType called for userID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.settings.ucm.ConfirmUCMLockPassword"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " csName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "lockscreen.ucscredentialstoragename"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmService"

    const-string v2, "handled expected Exception in enforceLockType()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforcePermission : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginPermissionDeprecated()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "UcmService"

    const-string v1, "UCM Plugin permission is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual {v1, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "UcmService"

    const-string v3, "KNOX_UCM_PLUGIN_PERMISSION_LEGACY is granted"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "UcmService"

    const-string v3, "KNOX_UCM_PLUGIN_PERMISSION is granted"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    const-string v1, "UcmService"

    const-string/jumbo v2, "packagename is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private enforceUidPermission(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceUidPermission : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginPermissionDeprecated()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "UcmService"

    const-string v2, "UCM Plugin permission is deprecated"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v3, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "UcmService"

    const-string v3, "KNOX_UCM_PLUGIN_PERMISSION_LEGACY is granted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UcmService"

    const-string v3, "KNOX_UCM_PLUGIN_PERMISSION is granted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private existUCMKeyguardProp()Z
    .locals 3

    const-string v0, "UcmService"

    const-string v1, "existUCMKeyguardProp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string v2, "keyguardConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateKeyPairMain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateKeyPairMain : NULL agent for uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "bytearrayresponse"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-eq v7, v8, :cond_2

    const/16 v10, 0x3e8

    if-eq v7, v10, :cond_1

    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v10

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v11

    if-ne v11, v9, :cond_3

    const/4 v11, 0x1

    :cond_3
    move v15, v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-direct {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v11

    if-eq v11, v9, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v9

    const-string v10, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateKeyPairMain new userid-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v9, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateKeyPairMain. Keeping same userid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v9, v10

    :goto_0
    if-nez p5, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v13, v10

    :try_start_0
    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    const/16 v16, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v12, v9

    move-wide/from16 v18, v13

    move v13, v7

    move/from16 v14, v16

    move/from16 v20, v15

    move-object/from16 v15, v17

    :try_start_1
    invoke-virtual/range {v10 .. v15}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    const-string v0, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WARNING!!!! generateKeyPairMain is NOT allowed for URI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bytearrayresponse"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    move-wide/from16 v10, v18

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_6
    move-wide/from16 v10, v18

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v10, v18

    goto :goto_1

    :catchall_1
    move-exception v0

    move-wide v10, v13

    move/from16 v20, v15

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7
    move/from16 v20, v15

    :goto_2
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "callerUid"

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "user_id"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "ownerUid"

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "resource"

    move/from16 v12, v20

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "extraArgs"

    move-object/from16 v13, p4

    invoke-virtual {v10, v11, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v11, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateKeyPair KEY_RESOURCE_ID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "resource"

    const/4 v0, -0x2

    invoke-virtual {v10, v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateKeyPair KEY_USER_ID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "user_id"

    invoke-virtual {v10, v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateKeyPair KEY_CALLER_UID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "callerUid"

    invoke-virtual {v10, v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "UcmService"

    const-string v11, "agent is not bound"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bytearrayresponse"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p2

    move/from16 v11, p3

    invoke-virtual {v4, v0, v5, v11, v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "uniqueId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "id"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "summary"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "title"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "vendorId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "storageType"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "isDetachable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "reqUserVerification"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isHardwareBacked"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isReadOnly"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isManageable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "enforceManagement"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isPUKSupported"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isGeneratePasswordAvailable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isODESupport"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "configuratorList"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "packageName"

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method private getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .locals 4

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppletInfo is called for pluginName-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    if-eqz v0, :cond_0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppletInfo pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConfiguratorPkg(I)[B
    .locals 7

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfiguratorPkg is called for adminId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data size -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getConfiguratorPkg -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method private getConfiguratorSignature(I)[B
    .locals 8

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfiguratorSignature is called for adminId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    aget-object v6, v1, v3

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-lez v6, :cond_1

    const-string v6, "UcmService"

    const-string v7, "Found signature..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    nop

    :goto_1
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v2, ","

    invoke-static {v2, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object v4

    move-object v0, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data size -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getConfiguratorPkg -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method private getDependentPluginPkgList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.samsung.ucm.baiplugin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.baimobile.android.pcsclite.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getDigestOfBytes([B)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    const-string v4, "SHA256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v5

    new-instance v5, Ljava/security/DigestInputStream;

    invoke-direct {v5, v3, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v0, v5

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v5

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    nop

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    nop

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :goto_3
    nop

    :goto_4
    return-object v5

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_9

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception v4

    goto :goto_6

    :cond_1
    :goto_5
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :goto_6
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_3
    :goto_7
    goto :goto_8

    :catch_3
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_4
    move-exception v4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_7
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_5
    move-exception v4

    :try_start_8
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_8

    :try_start_9
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_9
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    :goto_8
    return-object v2

    :goto_9
    nop

    if-eqz v0, :cond_a

    :try_start_a
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_a

    :catch_6
    move-exception v4

    goto :goto_b

    :cond_a
    :goto_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_c

    :goto_b
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_c
    :goto_c
    throw v2
.end method

.method private getIntLen(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;
    .locals 13

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyguardStorageOwnerForCurrentUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "ucm_keyguardconfig.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFileExist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v3, v7

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-interface {v7, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1

    if-eq v8, v9, :cond_1

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v8, v9

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "keyguard"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v8, v12

    :cond_2
    if-ne v8, v10, :cond_3

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-ne v12, v10, :cond_3

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    const-string/jumbo v12, "vendor"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "owner"

    invoke-interface {v7, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    :cond_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v12

    if-ne v8, v9, :cond_2

    :cond_4
    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_3
    move-exception v6

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :cond_5
    :goto_2
    return-object v5

    :goto_3
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_4
    throw v6
.end method

.method private getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .locals 6

    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "UcmService"

    const-string v1, "getODEAgent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-boolean v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "UcmService"

    const-string v3, "find agent for ODE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v4

    :cond_5
    goto :goto_0

    :cond_6
    return-object v1

    :cond_7
    :goto_1
    const-string v2, "UcmService"

    const-string v3, "Failed to load ODE properties"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getODEVendorName()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v2, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    move-object v0, v2

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ODE Vendor Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 3

    const-string v0, "errorresponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "bytearrayresponse"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v2
.end method

.method private getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUid0FromUid(II)I
    .locals 5

    if-nez p2, :cond_0

    return p1

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getIntLen(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getIntLen(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    sub-int v4, v1, v0

    if-ge v3, v4, :cond_1

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    mul-int/2addr v2, p2

    rem-int v3, p1, v2

    return v3
.end method

.method private getuseridforuid(I)I
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v10, p5

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importKeyPair "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v12

    const/16 v0, 0xe

    const/4 v13, 0x0

    if-nez v12, :cond_0

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importKeyPair : NULL agent for uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "booleanresponse"

    invoke-virtual {v11, v4, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "errorresponse"

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_0
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "agent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v4, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    move-object v14, v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v15

    const/4 v5, -0x1

    if-eq v15, v5, :cond_1

    if-eq v4, v15, :cond_1

    const/16 v6, 0x3e8

    if-ne v4, v6, :cond_1

    move v4, v15

    :cond_1
    move v9, v4

    invoke-direct {v1, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v8

    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    move v7, v4

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v6, v4

    const-string v4, "ismdm"

    invoke-virtual {v6, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v10, :cond_4

    if-eqz v3, :cond_4

    const-string v4, "callerUid"

    const-string v5, "admin_id"

    invoke-virtual {v3, v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "ownerUid"

    const-string v5, "admin_id"

    invoke-virtual {v3, v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "renew"

    const-string/jumbo v5, "renew"

    invoke-virtual {v3, v5, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "allow_wifi"

    invoke-virtual {v3, v4, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "resource"

    const/4 v5, 0x3

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "resource"

    const/4 v5, 0x1

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "userd id from MDM = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "user_id"

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "user_id"

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extraArgs"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    const-string v0, "callerUid"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ownerUid"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "resource"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "user_id"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v14

    move/from16 v18, v15

    move-wide v14, v4

    move-object v4, v0

    move-object v5, v13

    move-object v13, v6

    move v6, v8

    move/from16 v19, v7

    move v7, v9

    move/from16 v20, v8

    move v8, v10

    move/from16 v21, v9

    move-object/from16 v9, v16

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING!!!! importKeyPairInternal is NOT allowed for URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    const/4 v4, 0x0

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v4, 0xf

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v11

    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importKeyPairInternal KEY_RESOURCE_ID= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resource"

    const/4 v6, -0x2

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importKeyPairInternal KEY_USER_ID= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "user_id"

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importKeyPairInternal KEY_CALLER_UID= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "callerUid"

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    const/4 v4, 0x0

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v4, 0xe

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v12, v0, v4, v5, v13}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v13, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v17, v14

    move/from16 v18, v15

    move-wide v14, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private installCACertforCreateSecureChannel()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, v0

    :try_start_0
    const-string/jumbo v4, "userId"

    const-string v5, "alias"

    const-string v6, "location"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "UniversalCredentialCACertificateTable"

    invoke-virtual {v6, v7, v0, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->restoreCACertificate()V

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_1

    const-string v8, "UcmService"

    const-string/jumbo v9, "value is null, continue..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v16, v0

    goto/16 :goto_2

    :cond_1
    const-string/jumbo v8, "userId"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "alias"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "location"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-nez v10, :cond_2

    move-object/from16 v16, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v12, Landroid/util/AtomicFile;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v5, v12

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v12

    move-object v2, v12

    new-instance v12, Ljava/io/ObjectInputStream;

    invoke-direct {v12, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v12

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v13, v9, v12, v11}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACerttificate(Ljava/lang/String;[BI)Z

    move-result v13

    const-string v14, "UcmService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "installCACertforCreateSecureChannel -"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    const/4 v3, 0x0

    nop

    move-object/from16 v0, v16

    goto :goto_0

    :cond_3
    move-object/from16 v16, v0

    :goto_1
    const-string v0, "UcmService"

    const-string v11, "invalid parameter error, continue..."

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    move-object/from16 v0, v16

    goto/16 :goto_0

    :cond_4
    move-object/from16 v16, v0

    goto :goto_3

    :cond_5
    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->restoreCACertificate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v3, :cond_6

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :cond_6
    :goto_4
    if-eqz v2, :cond_8

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_3
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installCACertforCreateSecureChannel: exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    :goto_6
    return-void

    :goto_7
    if-eqz v3, :cond_9

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    :cond_9
    :goto_8
    if-eqz v4, :cond_a

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    :cond_a
    :goto_9
    throw v2
.end method

.method private isActivePlugin(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "UcmService"

    const-string v2, "No active agent exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v2, :cond_1

    const-string v3, "UcmService"

    const-string v4, "agent is null, so continue..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    if-ne v3, p1, :cond_2

    const-string v1, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "it is active plugin uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private isCallFromSystem(I)Z
    .locals 9

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallFromSystem adminUid-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCallFromSystem pkgName-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v5, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "UcmService"

    const-string v4, "isCallFromSystem match found...."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    nop

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallFromSystem e-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallFromSystem status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isGoodBinaryForEseCommTASelfTest()Z
    .locals 5

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "false"

    const-string/jumbo v2, "ro.product_ship"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "1"

    const-string/jumbo v3, "ro.config.tima"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    return v3
.end method

.method private isGoodConfigForEseCommTA()Z
    .locals 7

    const-string v0, "1"

    const-string/jumbo v1, "nfc.product.support.ese"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUCMODEEnabled()Z

    move-result v1

    const-string/jumbo v2, "ro.crypto.type"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isGoodConfigForEseCommTA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " <- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isGoodDeviceForEseCommTA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isPackageExisted(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private isPluginPermissionDeprecated()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_2:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_0

    const-string v1, "UcmService"

    const-string v3, "isPluginPermissionDeprecated true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v3, "UcmService"

    const-string v4, "isPluginPermissionDeprecated false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v2, "UcmService"

    const-string v3, "isPluginPermissionDeprecated false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isPluginUsedInOtherUser(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method private isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z
    .locals 11

    const-string v0, "UcmService"

    const-string v1, "isPluginUsedInOtherUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, -0x1

    if-eq p2, v1, :cond_9

    if-ne p3, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UCM keyguard check "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v6, :cond_4

    const-string v6, "UcmService"

    const-string/jumbo v7, "skip current user"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidVendorName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "UcmService"

    const-string v8, "UCM keyguard is not enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "UcmService"

    const-string/jumbo v8, "this plugin is used in other user"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    if-nez p4, :cond_6

    const-string v1, "UcmService"

    const-string/jumbo v4, "skip check configurator. pluginUsedInOtherUser"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v9, v1

    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v10

    nop

    if-ne p3, v9, :cond_7

    :try_start_2
    const-string v1, "UcmService"

    const-string v4, "And it is enabled by same configurator"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v7

    :catch_0
    move-exception v7

    goto :goto_0

    :cond_7
    goto :goto_0

    :cond_8
    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPluginUsed exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_9
    :goto_2
    return v0
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x40

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemApp exception e -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemApp exception e -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSystemStorage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.ucs.agent.ese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.ucs.agent.boot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isUCMKeyguardEnabled(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyguard is enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isUCMODEEnabled()Z
    .locals 4

    const-string v0, "2"

    const-string/jumbo v1, "ro.boot.ucs_mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-eqz v2, :cond_0

    const-string v2, "UcmService"

    const-string v3, "UCM ODE is enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "UcmService"

    const-string v1, "UCM ODE is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isVaildSCPType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVaildStorageType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isValidFormFactor(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "eSE1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "SIM2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "SIM1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "eSE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_5
    const-string v2, "SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "SD1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "SD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    nop

    :cond_1
    :goto_1
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidFormFactor type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0xa51 -> :sswitch_7
        0x14000 -> :sswitch_6
        0x140b7 -> :sswitch_5
        0x18577 -> :sswitch_4
        0x26d65a -> :sswitch_3
        0x26d65b -> :sswitch_2
        0x2f299a -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidMsgType(I)Z
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    nop

    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidMsgType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidSCPProtocol(I)Z
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    nop

    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSCPProtocol protocolType-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidVendorName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private listExposedProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v4, "uniqueId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! Obscure CS agent bundle. Skipping agent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    const-string v5, "UcmService"

    const-string v6, "WARNING!!!! null/empty ID returned for agent bundle. Skipping agent."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    return-object v2
.end method

.method private listProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v7

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listProviders "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and ismdmcaller-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v11, v0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v5, 0x0

    move-object v1, v10

    move v2, v7

    move v3, v6

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-direct {p0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listProviders filtered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    return-object v0
.end method

.method private loadTlcServerForEseComm()V
    .locals 5

    const-string v0, "ESECOMM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "UcmService"

    const-string v3, "loadTlcServerForEseComm: tlc_server already loaded."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "1"

    const-string/jumbo v3, "security.ucm_ese_applet_installed"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "UcmService"

    const-string v3, "loadTlcServerForEseComm: ucm_ese_applet_installed aleady set."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "security.ucm_ese_applet_installed"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "UcmService"

    const-string v3, "loadTlcServerForEseComm: ucm_ese_applet_installed set to 1."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "UcmService"

    const-string v3, "loadTlcServerForEseComm done."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAdminConfigRequest is called...adminId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uri-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applet_location"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "applet_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processAdminConfigRequest is called...appletLocation-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", pluginName-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidFormFactor(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "reset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processAdminConfigRequest removed pluginName-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    invoke-direct {v4, v2, v3, v1, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Ljava/lang/String;[BLjava/lang/String;I)V

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processAdminConfigRequest added pluginName-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const/4 v0, 0x0

    const-string v4, "UcmService"

    const-string/jumbo v5, "processAdminConfigRequest not valid form factor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processAdminConfigRequest Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :goto_2
    return v0
.end method

.method private readPersistentAppletsInfoLocked()V
    .locals 15

    const-string v0, "UcmService"

    const-string/jumbo v1, "readPersistentAppletsInfoLocked is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "UcmService"

    const-string/jumbo v2, "readPersistentAppletsInfoLocked mPersistentAppletInfoFile not exist..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v3, v4

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "applets"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v3, v7

    :cond_3
    if-ne v3, v5, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v5, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    const-string v7, "applet"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "pluginName"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "appletLocation"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "adminId"

    invoke-interface {v2, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "aid"

    invoke-interface {v2, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    if-eqz v10, :cond_4

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    move-object v12, v13

    :cond_4
    new-instance v13, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    invoke-direct {v13, v8, v12, v7, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Ljava/lang/String;[BLjava/lang/String;I)V

    iget-object v14, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v14, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v7

    if-ne v3, v4, :cond_3

    :cond_6
    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "UcmService"

    const-string v3, "Error reading persistent applet info, starting from scratch"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  key-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  pluginName-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  AID-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  appletLocation-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  adminId-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    return-void

    :goto_5
    if-eqz v1, :cond_9

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    :cond_9
    :goto_6
    throw v0
.end method

.method private readPersistentServicesLocked()V
    .locals 11

    const-string v0, "UcmService"

    const-string/jumbo v1, "readPersistentServicesLocked is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    if-nez v1, :cond_0

    const-string v1, "UcmService"

    const-string/jumbo v2, "persistent service list is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z

    iget-boolean v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_1
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    if-eq v4, v2, :cond_3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "services"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v4, v7

    :cond_4
    if-ne v4, v5, :cond_5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v5, :cond_5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    const-string/jumbo v7, "service"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "uid"

    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "uniqueId"

    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v7

    if-ne v4, v2, :cond_4

    :cond_6
    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    :try_start_4
    const-string v2, "UcmService"

    const-string v3, "Error reading persistent services, starting from scratch"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_7

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentServices  key-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentServices  value-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    return-void

    :goto_5
    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    :cond_9
    :goto_6
    throw v1
.end method

.method private refreshAgentList(ILandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v13, p0

    move/from16 v14, p1

    :try_start_0
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*****refreshAgentList userId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is called***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v13, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    if-nez v0, :cond_0

    const-string v0, "UcmService"

    const-string/jumbo v1, "refreshAgentList system ready is not called yet. Ignoring agent refresh logic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v13, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v15, v0

    invoke-static {v15, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v5

    invoke-static {v15, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->resolveAllowedAgentsLegacy(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v11

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v0

    iget-object v0, v13, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 v6, 0x0

    move-object v1, v13

    move-object v2, v12

    move v3, v14

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentListInternal(Landroid/util/ArraySet;ILandroid/os/Bundle;Ljava/util/List;Z)V

    const/4 v0, 0x1

    move-object v7, v13

    move-object v8, v12

    move v9, v14

    move-object/from16 v10, p2

    move-object v1, v12

    move v12, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentListInternal(Landroid/util/ArraySet;ILandroid/os/Bundle;Ljava/util/List;Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v3, :cond_1

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Removing unwanted agent- "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    iget-object v3, v13, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v13, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentServicesLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceptioon in refreshAgentList main- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private refreshAgentListInternal(Landroid/util/ArraySet;ILandroid/os/Bundle;Ljava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const-string v5, "event"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_0

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", activatedPackage-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",expiredPackage-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v5, v3

    move-object v3, v0

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    const-string v0, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPersistentServices size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-static {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v0, "UcmService"

    const-string/jumbo v9, "name is empty"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v1, v8}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;-><init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :try_start_0
    const-string v0, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-------Processing started for agentPackageName----- -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "agentPackageName -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is not an active plugin. Its license is expired. Ignoring it..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v0, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  agentPackageName -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is an active plugin"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    const-string v12, "  Check if caller has UCS Plugin permission..."

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    invoke-direct {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforcePermission(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_1d

    const-string v0, "UcmService"

    const-string v12, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_7

    const-string v0, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  agentPackageName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is system storage. Checking system signature"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v11, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  system storage found - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is not valid. Ignoring it..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v0, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Valid system storage found is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_7
    nop

    :try_start_2
    const-string v0, "com.samsung.ucm.baiplugin"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v0, :cond_9

    :try_start_3
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "UcmService"

    const-string v13, "Old Bai solution is registered. Ignore binding to new Bai plugin..."

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_8
    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v13, "UcmService"

    const-string v14, "Error happened in old bai solution, so bind new bai solution"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    const-string v0, "com.sec.smartcard.manager"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.baimobile.android.pcsclite.service"

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "UcmService"

    const-string v12, "PCSC Service doesn\'t exist. Ignore binidng to old Bai plugin..."

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v0, "com.samsung.ucm.baiplugin"

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "UcmService"

    const-string v12, "New Bai solution is installed. Ignore binding to old Bai plugin..."

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    const-string v0, "com.samsung.ucs.agent.ese"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    if-nez v0, :cond_c

    const-string v0, "UcmService"

    const-string v12, "Do not need to bind eSE Service"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    const-string v0, "com.samsung.ucs.agent.boot"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUCMODEEnabled()Z

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->existUCMKeyguardProp()Z

    move-result v13

    sget-boolean v14, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v14, :cond_d

    const-string v14, "UcmService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isODEEnabled : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bExistUCMKeyguardProp : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-nez v0, :cond_e

    if-nez v13, :cond_e

    const-string v4, "UcmService"

    const-string v12, "Do not need to bind boot plugin service"

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_e
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    if-nez v0, :cond_1b

    if-eqz v7, :cond_1a

    :try_start_5
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1a

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_f

    goto/16 :goto_9

    :cond_f
    new-instance v0, Landroid/os/UserHandle;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v4, p2

    :try_start_6
    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v13, p5

    :try_start_7
    invoke-virtual {v9, v7, v0, v13}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Z)V

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iget-object v14, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v14, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    const-string v15, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Agent uniqueId-"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and serviceUid-"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_10

    const-string v12, "UcmService"

    const-string v15, "  Matched found in mPersistentServices map"

    invoke-static {v12, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_3

    :cond_10
    const-string v12, "UcmService"

    const-string v15, "  UID comparision failed for agent. Ignoring it.."

    invoke-static {v12, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto :goto_4

    :cond_11
    iget-object v2, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v2, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "UcmService"

    const-string v12, "  Agent entry is not in PersistentServices but its system signed agent. Ading it.."

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_4

    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  agentPackageName -"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is an active plugin"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_4

    :cond_13
    if-nez v3, :cond_14

    const-string v2, "UcmService"

    const-string v12, "  Agent entry is not in PersistentServices, but has proper permissions"

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    :cond_14
    :goto_4
    goto :goto_6

    :cond_15
    const-string v0, "UcmService"

    const-string v2, "  mPersistentServices size is 0. Trying to add new agent "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "UcmService"

    const-string v2, "  Adding system signed agent"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_5
    move v10, v0

    goto :goto_6

    :cond_16
    if-eqz v3, :cond_17

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  agentPackageName -"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is an active plugin"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_5

    :cond_17
    if-nez v3, :cond_18

    const-string v0, "UcmService"

    const-string v2, "  Agent entry is not in PersistentServices, but has proper permissions"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_5

    :cond_18
    :goto_6
    if-eqz v10, :cond_19

    const-string v0, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Adding new agent -"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_19
    const-string v0, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Unbind agent -"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    :goto_7
    move-object/from16 v2, p1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move/from16 v4, p2

    :goto_8
    move/from16 v13, p5

    goto :goto_b

    :cond_1a
    :goto_9
    move/from16 v4, p2

    move/from16 v13, p5

    const-string v0, "UcmService"

    const-string/jumbo v2, "resolveInfo null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_1b
    move/from16 v4, p2

    move/from16 v13, p5

    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v0, :cond_1c

    const-string v0, "UcmService"

    const-string v2, "agent is already added in activeAgentList"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_1c
    move-object/from16 v2, p1

    :try_start_8
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_a
    goto :goto_e

    :catch_3
    move-exception v0

    :goto_b
    move-object/from16 v2, p1

    goto :goto_d

    :cond_1d
    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v13, p5

    :try_start_9
    const-string v0, "UcmService"

    const-string v12, "  Agent don\'t has UCS PLUGIN permission. Ignoring it..."

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v13, p5

    :goto_c
    :try_start_a
    const-string v12, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Exception se-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v13, p5

    :goto_d
    const-string v12, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exceptioon in refreshAgentList loop - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    nop

    :goto_f
    move-object/from16 v2, p3

    :goto_10
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v13, p5

    return-void
.end method

.method public static native registerHALService()I
.end method

.method private registerPersonaObserver()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "UcmService"

    const-string/jumbo v1, "registerPersonaObserver is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;

    invoke-direct {v1, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPersonaObserver exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeMDMPolicies(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "UcmService"

    const-string/jumbo v1, "removeMDMPolicies"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", admin UID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "UcmService"

    const-string v3, "Failed to get APP Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.samsung.ucm.baiplugin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.baimobile.android.pcsclite.service"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    const-string v4, "com.samsung.ucm.baiplugin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.baimobile.android.pcsclite.service"

    invoke-virtual {v1, v4}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string v0, "UcmService"

    const-string v1, "invalid argument"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolveAllowedAgents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static resolveAllowedAgentsLegacy(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolveAllowedAgentsLegacy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER_LEGACY:Landroid/content/Intent;

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private restoreCACertificate()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "UcmService"

    const-string v5, "********restoreCACertificate - started"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    move-object v0, v5

    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v5

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sget-boolean v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreCACertificate - data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    iget-object v7, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v6, v7, v5, v8}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACerttificate(Ljava/lang/String;[BI)Z

    move-result v6

    sget-boolean v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreCACertificate -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_3
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreCACertificate: exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :cond_6
    :goto_5
    throw v2
.end method

.method private runSefTestForEseCommTA()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodBinaryForEseCommTASelfTest()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UcmService"

    const-string/jumbo v1, "runSefTestForEseCommTA: isGoodBinaryForEseCommTASelfTest: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodDeviceForEseCommTA()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UcmService"

    const-string/jumbo v1, "runSefTestForEseCommTA: isGoodDeviceForEseCommTA: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodConfigForEseCommTA()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UcmService"

    const-string/jumbo v1, "runSefTestForEseCommTA: isGoodConfigForEseCommTA: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->loadTlcServerForEseComm()V

    :try_start_0
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runSefTestForEseCommTA exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendRefreshFinishIntent(I)V
    .locals 7

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRefreshFinishIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRefreshFinishIntent calling user Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.UCM_REFRESH_AGENT_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_0

    const-string v3, "UcmService"

    const-string v4, "Failed to find callingUid package"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    if-nez v4, :cond_1

    const-string v5, "UcmService"

    const-string v6, "calling package is eampty, so continue..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private sendStateChangeBroadcast(ILjava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCS_STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "UCS_CSNAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast CSNAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "KnoxKeyguardReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send personaId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.knox.kss"

    const-string v7, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "KnoxKeyguardReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start: threw an exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private sendUCMKeyguardIntent(ZILjava/lang/String;)V
    .locals 5

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendUCMKeyguardIntent set - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", storage-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v2, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v3, "UcmService"

    const-string/jumbo v4, "sendUCMKeyguardIntent intent sent to all..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyguardStorageForCurrentUser called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "ucm_keyguardconfig.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_0
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v8, "keyguard"

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "vendor"

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-interface {v6, v4, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "owner"

    invoke-interface {v6, v4, v8, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "keyguard"

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v8, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    if-nez p1, :cond_1

    const-string/jumbo v8, "none"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v7, :cond_0

    const-string/jumbo v7, "persist.keyguard.ucs"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "persist.keyguard.ucs"

    const-string/jumbo v7, "true"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    :goto_1
    return v0
.end method

.method private setODEConfigInFile(I)V
    .locals 6

    const-string v0, "UcmService"

    const-string/jumbo v1, "setODEConfigInFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "UcmService"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "UcmService"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    const-string v4, "UcmService"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method

.method private showODEProgressNotification()V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isUCMODEEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "UcmService"

    const-string v1, "UCM ODE is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "UcmService"

    const-string/jumbo v1, "showODENotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    const-string v1, "UcmService"

    const-string v2, "Failed to get Notification Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "UCM_ODE_NOTIFICATION"

    const-string v3, "UCM ODE Progress Notification"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-string v1, ""

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEVendorName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v5, "UCM_ODE_NOTIFICATION"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "UcmService"

    const-string v5, "ODE Progress is done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object v3, v4

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040a87

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object v3, v4

    const/16 v4, 0x2328

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmService"

    const-string v2, "Exxception in showODEProgressNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private storeODEkeywithTZProtection(Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    const-string/jumbo v1, "storeODEkeywithTZProtection is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object v0

    const/16 v1, 0xf

    :try_start_0
    const-string v2, "generateDek"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    nop

    if-eqz p1, :cond_a

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    const-string v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_1

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    :goto_0
    const/16 v3, 0xe

    if-nez v2, :cond_2

    const-string v1, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v1, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateDek()Landroid/os/Bundle;

    move-result-object v3

    const/16 v4, 0xd

    if-nez v3, :cond_4

    const-string v1, "UcmService"

    const-string v5, "ERROR: Null Response received from agent"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const-string v5, "errorresponse"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    const-string v1, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateDek response with error code : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    :try_start_1
    const-string v6, "getDek"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDek()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v3, "UcmService"

    const-string v6, "ERROR: Null Response received from agent"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    const-string v3, "errorresponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDek response with error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    const-string v4, "bytearrayresponse"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x12

    if-nez v4, :cond_8

    const-string v6, "UcmService"

    const-string v7, "ERROR: key is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8
    invoke-virtual {v0, v4}, Lcom/sec/esecomm/EsecommAdapter;->saveODEKey([B)Z

    move-result v6

    if-nez v6, :cond_9

    return v5

    :cond_9
    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_a
    :goto_1
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x10

    return v1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private tmpSaveOdeKey(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xf

    :try_start_0
    const-string v1, "generateDek"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    nop

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateDek()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_0

    const-string v0, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v3, "errorresponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateDek response with error code : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_1
    const-string v4, "getDek"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    nop

    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDek()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "UcmService"

    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v1, "errorresponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDek response with error code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v2, "bytearrayresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x12

    if-nez v2, :cond_4

    const-string v4, "UcmService"

    const-string v5, "ERROR: key is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const-string v4, "/efs/sec_efs/ucm"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "xptmxmzl"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v9, "UcmService"

    const-string v10, "failed to delete the existing dek file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    const/4 v8, 0x0

    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v9

    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    nop

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    return v3

    :goto_0
    const/4 v3, 0x0

    return v3

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    return v3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private updateKeyguardConfig(I)V
    .locals 5

    const-string v0, "UcmService"

    const-string/jumbo v1, "updateKeyguardConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "UcmService"

    const-string/jumbo v2, "remove useless keyguard config file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "keyguardConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v3, "UcmService"

    const-string v4, "keyguard config file does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "UcmService"

    const-string v4, "keyguard config file exist so delete it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private updateMDMPolicies(I)V
    .locals 7

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMDMPolicies userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidVendorName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UcmService"

    const-string v2, "UCM keyguard is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCM keyguard is enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v3, "UcmService"

    const-string v4, "UCM Keyguard parsing failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0, v0, p1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->removeMDMPolicies(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private updateSystemUIMonitor()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    invoke-interface {v1, v0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;->setUCMKeyguardVendor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UcmService"

    const-string v3, "Exception occured on updateSystemUIMonitor"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateSystemUIMonitor(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;->setUCMKeyguardVendor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmService"

    const-string v2, "Exception occured on updateSystemUIMonitor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private verifyPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPassword : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const-string v1, "UcmService"

    const-string/jumbo v2, "password is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :goto_1
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private writePersistentAppletsInfoLocked()V
    .locals 10

    const-string v0, "UcmService"

    const-string/jumbo v1, "writePersistentAppletsInfoLocked is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "applets"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persistent  key-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "applet"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "appletLocation"

    iget-object v8, v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-interface {v2, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "pluginName"

    iget-object v8, v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-interface {v2, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "adminId"

    iget v8, v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v7, :cond_0

    const-string v7, "aid"

    iget-object v8, v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v0, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v7, "applet"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1
    const-string v3, "applets"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "UcmService"

    const-string v3, "Error writing accounts"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private writePersistentServicesLocked()V
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v3, "services"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    const-string/jumbo v5, "service"

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "uid"

    iget-object v6, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "uniqueId"

    iget-object v6, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-interface {v2, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "service"

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "services"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "UcmService"

    const-string v3, "Error writing accounts"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APDUCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x10

    if-eqz p1, :cond_7

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "UcmService"

    const-string v3, "apdu is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    const-string v2, "boot_test"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_2

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v3}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_5
    invoke-virtual {v1, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_6
    return-object v0

    :cond_7
    :goto_1
    const-string v2, "UcmService"

    const-string/jumbo v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public authenticatePin(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    const-string/jumbo v1, "need to check authenticatePin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x10

    if-eqz p1, :cond_a

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_9

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p3, :cond_8

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x0

    const-string v2, "boot_test"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_3

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_4

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v3}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_6
    invoke-virtual {v1, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_7
    return-object v0

    :cond_8
    :goto_1
    const-string v2, "UcmService"

    const-string/jumbo v3, "newPin is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_9
    :goto_2
    const-string v2, "UcmService"

    const-string/jumbo v3, "oldPin is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_a
    :goto_3
    const-string v2, "UcmService"

    const-string/jumbo v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public configureKeyguardSettings(ILjava/lang/String;)Z
    .locals 32

    move-object/from16 v7, p0

    move/from16 v8, p1

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureKeyguardSettings userId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object v1, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminForEnforcedCredentialStorageAsUser(I)I

    move-result v6

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configuratorId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne v6, v1, :cond_1

    const-string v1, "UcmService"

    const-string v2, "enforced null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v12, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v4, v0

    :try_start_0
    invoke-direct {v7, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v8, :cond_2

    const/4 v2, 0x1

    const/16 v16, -0x1

    move-object v1, v7

    move v3, v6

    move-wide/from16 v17, v4

    move v4, v8

    move-object v5, v12

    move/from16 v19, v6

    move/from16 v6, v16

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v1

    :goto_1
    move v15, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v1, v17

    goto :goto_5

    :catch_0
    move-exception v0

    move-wide/from16 v1, v17

    goto :goto_3

    :cond_2
    move-wide/from16 v17, v4

    move/from16 v19, v6

    if-lt v8, v9, :cond_3

    iget-object v1, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    const/4 v2, 0x1

    move-object v1, v7

    move v4, v8

    move-object v5, v12

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    :goto_2
    :try_start_2
    iget-object v1, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    :try_start_3
    iget-object v2, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v10, v8}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    iget-object v2, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v11, v11, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    invoke-direct {v7, v10, v8, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v8, :cond_5

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->disableAutoFactoryReset()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    move-wide/from16 v1, v17

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-wide/from16 v1, v17

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v1, v17

    goto :goto_3

    :catchall_2
    move-exception v0

    move-wide v1, v4

    move/from16 v19, v6

    goto :goto_5

    :catch_2
    move-exception v0

    move-wide v1, v4

    move/from16 v19, v6

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4
    goto :goto_6

    :catchall_3
    move-exception v0

    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_6
    move/from16 v19, v6

    :goto_6
    if-nez v8, :cond_b

    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    invoke-direct {v7, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v1, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    :cond_7
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_8

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCM does not support this storage type for KG : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_8
    iget-object v4, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_9

    const-string v6, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UCM does not support this SCP type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_9
    iget-object v6, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    iget-object v9, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    iget-object v13, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v13, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    iget-object v10, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    new-instance v16, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    iget-object v11, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v11, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    move-object/from16 v20, v16

    move-object/from16 v21, v0

    move-object/from16 v22, v11

    move/from16 v23, v3

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v9

    move/from16 v27, v13

    move/from16 v28, v10

    invoke-direct/range {v20 .. v28}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>([B[BIIIIII)V

    move-object/from16 v11, v16

    invoke-static {v11}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v16

    if-eqz v16, :cond_a

    if-eqz v15, :cond_a

    const/16 v29, 0x1

    goto :goto_7

    :cond_a
    const/16 v29, 0x0

    :goto_7
    return v29

    :cond_b
    move v0, v15

    :cond_c
    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_d
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureKeyguardSettings return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_e
    :goto_8
    const-string v1, "UcmService"

    const-string v2, "disable keyguard in UCS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v12

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storageName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", onwerId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "none"

    const-string/jumbo v2, "none"

    invoke-direct {v7, v8, v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v14, 0x0

    invoke-direct {v7, v14, v8, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V

    goto :goto_9

    :cond_f
    const/4 v14, 0x0

    :goto_9
    if-nez v8, :cond_11

    const/4 v2, 0x0

    :try_start_7
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    move-object v1, v7

    move v4, v8

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteKeyguardConfig()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v13, :cond_10

    const/16 v29, 0x1

    goto :goto_b

    :cond_10
    move/from16 v29, v14

    :goto_b
    return v29

    :cond_11
    if-lt v8, v9, :cond_12

    :try_start_8
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-wide v4, v0

    :try_start_9
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v2, 0x0

    move-object v1, v7

    move-wide/from16 v30, v4

    move v4, v8

    move-object v5, v10

    :try_start_a
    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-wide/from16 v1, v30

    :try_start_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_d

    :catchall_4
    move-exception v0

    move-wide/from16 v1, v30

    goto :goto_c

    :catchall_5
    move-exception v0

    move-wide v1, v4

    :goto_c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_d
    return v13
.end method

.method public configureODESettings(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    const-string v3, "configureODESettings"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "ro.vold.forceencryption"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "ro.boot.ucs_mode"

    const-string v5, "0"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v8

    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configureODESettings uriuid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v9, 0xc000200

    if-eqz v0, :cond_0

    const-string v0, "UcmService"

    const-string v10, "device is encrypted with UCS so cannot change configuration"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v10

    iget-object v0, v10, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v0, :cond_4

    const-string v0, "UcmService"

    const-string v11, "configureODESettings Validating current ODE setting configurator"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v0

    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v11

    const v12, 0xc000300

    if-eqz v0, :cond_3

    iget-object v13, v10, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-direct {v1, v13, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareCallingPkg([B[B)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v10, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-static {v13, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    :cond_1
    const-string v12, "UcmService"

    const-string v13, "configureODESettings valid caller is changing ODE configuration..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-string v9, "UcmService"

    const-string v13, "configureODESettings invalid caller is trying to change ODE configuration. Error..."

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_3
    return v12

    :cond_4
    :goto_1
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, 0x10d

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    const-string v0, "UcmService"

    const-string v9, "disable configureODESettings in UCS"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.security.ucs"

    const-string v9, ""

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.security.ucs.csname"

    const-string v9, ""

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteODEConfig()Z

    move-result v0

    if-ne v13, v0, :cond_5

    return v12

    :cond_5
    return v11

    :cond_6
    if-eqz p3, :cond_23

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne v0, v13, :cond_7

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    goto/16 :goto_11

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v9, 0x10

    if-ne v13, v0, :cond_8

    const-string v0, "UcmService"

    const-string/jumbo v11, "uri is empty"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_8
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    const/16 v0, 0xe

    goto/16 :goto_10

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_21

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne v0, v13, :cond_a

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    move-object/from16 v29, v15

    const/16 v0, 0xe

    goto/16 :goto_f

    :cond_a
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-eqz v11, :cond_1f

    iget-object v12, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v12, :cond_1e

    iget-object v12, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-nez v12, :cond_b

    nop

    const/16 v11, 0x10d

    const/4 v12, 0x0

    goto :goto_2

    :cond_b
    iget-object v12, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const-string v0, "UcmService"

    const-string v12, "Find UcmAgentWrapper"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    if-nez v0, :cond_c

    const-string v0, "UcmService"

    const-string v9, "This agent dose not support ODE"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    :cond_c
    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    const/16 v16, 0x4

    if-eqz v12, :cond_1c

    array-length v0, v12

    if-nez v0, :cond_d

    move-object v14, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    move-object/from16 v37, v11

    move-object/from16 v29, v15

    goto/16 :goto_d

    :cond_d
    array-length v0, v12

    const/4 v13, 0x5

    if-lt v0, v13, :cond_1b

    array-length v0, v12

    if-le v0, v9, :cond_e

    move-object v14, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    move-object/from16 v37, v11

    move-object/from16 v29, v15

    goto/16 :goto_c

    :cond_e
    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    invoke-direct {v1, v15}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-object v13, v9, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v13, :cond_f

    iget-object v0, v9, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    :cond_f
    move-object v13, v0

    move-object/from16 v18, v3

    invoke-static {v13}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_10

    const-string v0, "UcmService"

    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string v5, "UCM does not support this storage type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_10
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v21, v5

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_11

    const-string v0, "UcmService"

    move-object/from16 v22, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v8

    const-string v8, "UCM does not support this SCP type : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_11
    move-object/from16 v22, v6

    move-object/from16 v23, v8

    const-string v0, "NONE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    if-nez v6, :cond_12

    :try_start_1
    const-string v0, "UcmService"

    const-string v8, "Can\'t find SCP parameter from bundle"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v16

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_12
    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v6, v21

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v8, "UcmService"

    move-object/from16 v24, v0

    const-string v0, "failed to generate SCP param from Bundle"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_13
    move-object/from16 v6, v21

    :goto_4
    const-string/jumbo v0, "persist.security.ucs"

    const-string v8, "1"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.security.ucs.csname"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v4

    iget v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v26, v9

    iget v9, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v27, v10

    iget v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v28, v13

    iget v13, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v29, v15

    iget v15, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    iget-object v0, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v30, v11

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    if-eqz v11, :cond_1a

    array-length v0, v11

    if-nez v0, :cond_14

    move/from16 v17, v2

    move/from16 v35, v3

    move-object/from16 v36, v6

    move-object/from16 v37, v30

    move-object/from16 v14, p1

    goto/16 :goto_b

    :cond_14
    move-object/from16 v31, v6

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v6

    const/4 v14, 0x1

    iput v14, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    iput-object v12, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    iput v3, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    iput v5, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    iput v8, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    iput v4, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    iput v9, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    iput v10, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    iput v13, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    iput v15, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    iput v2, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    iput-object v11, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const/4 v0, 0x2

    iput v0, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    :try_start_2
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v14

    if-lez v14, :cond_15

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v14, v16

    if-eqz v14, :cond_15

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v32, v16

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v16, :cond_15

    move/from16 v34, v2

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_15
    move/from16 v34, v2

    :goto_5
    move/from16 v35, v3

    goto :goto_7

    :catch_3
    move-exception v0

    move/from16 v34, v2

    :goto_6
    const-string v2, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v3

    const-string v3, "failed to set defaultLanguage: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-eqz v31, :cond_16

    move-object/from16 v2, v31

    :try_start_4
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "UcmService"

    const-string v14, " failed to convert SCP param to TLV"

    invoke-static {v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_16
    move-object/from16 v2, v31

    :goto_8
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v3

    const/4 v14, 0x1

    if-eq v14, v3, :cond_17

    const/16 v14, 0x10d

    return v14

    :cond_17
    const-string/jumbo v0, "ro.crypto.type"

    const-string/jumbo v14, "unknown"

    invoke-static {v0, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "file"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object/from16 v36, v2

    move-object/from16 v2, v30

    move/from16 v17, v34

    move-object/from16 v14, p1

    :try_start_5
    invoke-direct {v1, v2, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->tmpSaveOdeKey(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    const-string v1, "UcmService"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-object/from16 v37, v2

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move/from16 v38, v3

    :try_start_7
    const-string v3, "failed tmpSaveOdeKey. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    return v0

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 v38, v3

    goto :goto_9

    :cond_18
    move-object/from16 v37, v2

    move/from16 v38, v3

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v37, v2

    move/from16 v38, v3

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "UcmService"

    const-string v2, "failed to store ODE key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x10d

    return v1

    :cond_19
    move-object/from16 v36, v2

    move/from16 v38, v3

    move-object/from16 v37, v30

    move/from16 v17, v34

    move-object/from16 v14, p1

    :goto_a
    const-string/jumbo v0, "security.knox_ucs_mode"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_1a
    move/from16 v17, v2

    move/from16 v35, v3

    move-object/from16 v36, v6

    move-object/from16 v37, v30

    move-object/from16 v14, p1

    :goto_b
    const-string v0, "UcmService"

    const-string v1, "csName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_1b
    move-object v14, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    move-object/from16 v37, v11

    move-object/from16 v29, v15

    :goto_c
    const-string v0, "UcmService"

    const-string v1, "AID range is not proper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_1c
    move-object v14, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    move-object/from16 v37, v11

    move-object/from16 v29, v15

    :goto_d
    const-string v0, "UcmService"

    const-string v1, "AID is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_1d
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    move v14, v13

    move-object/from16 v29, v15

    const/16 v1, 0x10d

    const/4 v2, 0x0

    move v11, v1

    move v12, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v2, p1

    move-object/from16 v1, p0

    const/16 v11, 0x10d

    const/4 v12, 0x0

    goto :goto_e

    :cond_1f
    move-object/from16 v2, p1

    move-object/from16 v1, p0

    const/16 v11, 0x10d

    :goto_e
    goto/16 :goto_2

    :cond_20
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    move-object/from16 v29, v15

    const/16 v0, 0xe

    return v0

    :cond_21
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    move-object/from16 v29, v15

    const/16 v0, 0xe

    :goto_f
    return v0

    :cond_22
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    const/16 v0, 0xe

    :goto_10
    return v0

    :cond_23
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v27, v10

    :goto_11
    const-string v0, "UcmService"

    const-string/jumbo v1, "plugin signature is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    const-string v0, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/16 v0, 0xe

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string v7, "booleanresponse"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "errorresponse"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    :cond_0
    new-instance v7, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v7, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    move v8, v3

    :cond_1
    invoke-direct {v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v13, v9

    :try_start_0
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10

    const/16 v16, 0x0

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v11, v15

    move v12, v8

    move-wide/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v14, v17

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_2

    :try_start_2
    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! containsAlias is NOT allowed for URI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-wide/from16 v9, v18

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v0

    move-wide/from16 v9, v18

    move/from16 v11, p2

    goto :goto_0

    :cond_2
    move-wide/from16 v9, v18

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "UcmService"

    const-string v12, "agent is not bound"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "booleanresponse"

    invoke-virtual {v4, v11, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "errorresponse"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    :cond_3
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v0

    move/from16 v11, p2

    invoke-virtual {v5, v0, v11, v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v4, "UcmService"

    const-string v12, "ERROR: Null Response received from agent"

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, v4

    const-string v4, "booleanresponse"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    const-string v4, "errorresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "containsAlias Response from plugin:  error code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception v0

    move/from16 v11, p2

    move-wide/from16 v9, v18

    :goto_0
    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v11, p2

    move-wide v9, v13

    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSecureChannel protocolType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UcmService"

    const-string v2, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/16 v2, 0x41

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidSCPProtocol(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "UcmService"

    const-string v3, "Invalid protocolType..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->installCACertforCreateSecureChannel()V

    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v0, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in createSecureChannel -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v2

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    if-nez v4, :cond_0

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v5, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v5, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-eq v6, v7, :cond_2

    const/16 v9, 0x3e8

    if-eq v6, v9, :cond_1

    invoke-direct {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    invoke-direct {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v9

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v10

    if-ne v10, v8, :cond_3

    const/4 v10, 0x1

    :cond_3
    move v15, v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v10

    if-eq v10, v8, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v8

    const-string v9, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Decrypt new userid-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v8, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Decrypt. Keeping same userid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v8, v9

    :goto_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v14, v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v12, v9

    :try_start_0
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10

    const/16 v16, 0x0

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v11, v8

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-wide v4, v12

    move v12, v6

    move/from16 v13, v16

    move/from16 v20, v7

    move-object v7, v14

    move-object/from16 v14, v17

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_6

    :try_start_2
    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "errorresponse"

    const/16 v9, 0xf

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v21, v6

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_1

    :cond_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v9, "callerUid"

    invoke-virtual {v7, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "user_id"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "ownerUid"

    invoke-virtual {v7, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "resource"

    invoke-virtual {v7, v9, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decrypt KEY_RESOURCE_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "resource"

    const/4 v12, -0x2

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decrypt KEY_USER_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "user_id"

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decrypt KEY_CALLER_UID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "callerUid"

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v9, v18

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "UcmService"

    const-string v11, "agent is not bound"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "errorresponse"

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v10, v19

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v9, v0, v11, v12, v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v3, 0xd

    if-nez v0, :cond_8

    const-string v13, "UcmService"

    const-string v14, "ERROR: Null Response received from agent"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    move-object v0, v13

    const-string v13, "errorresponse"

    invoke-virtual {v0, v13, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :cond_8
    const-string v13, "bytearrayresponse"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    const-string v14, "errorresponse"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v3, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v6

    const-string v6, "decrypt Response from plugin:  error code = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_9

    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for decrypt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_9
    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v21, v6

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v11, p2

    move-object v9, v4

    move-object v10, v5

    move/from16 v21, v6

    move/from16 v20, v7

    move-wide v4, v12

    move-object v7, v14

    move-object/from16 v12, p3

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected deletAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 3

    const-string v0, "UcmService"

    const-string v1, "deletAndRefreshAgents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletAndRefreshAgents() remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V

    return-void
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "deleteCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    const-string v1, "booleanresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "errorresponse"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v1, "booleanresponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCertificate Response:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCMERRORTESTING: @CredentialManagerService deleteCertificate Response from plugin with error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public destroySecureChannel()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    const-string v1, "destroySecureChannel ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UcmService"

    const-string v2, "  Agent don\'t UCM PLUGIN permission. Returning..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x41

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v3, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destroySecureChannel(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in destroySecureChannel -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x1

    return v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public generateDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "generateDek"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz p1, :cond_6

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "boot_fbe"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateDek()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_5
    const-string v2, "errorresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateDek response from plugin:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :cond_6
    :goto_1
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPair "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    const-string v1, "bytearrayresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "errorresponse"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v1, "bytearrayresponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateKeyPair Response:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPairInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "generateKeyPairInternal"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    const-string v1, "bytearrayresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "errorresponse"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v1, "bytearrayresponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateKeyPairInternal Response:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyguardPassword "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    const-string v4, "boot_test"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_1

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    :goto_0
    const/16 v3, 0xe

    if-nez v2, :cond_2

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "UcmService"

    const-string v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "errorresponse"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    invoke-virtual {v2, p1, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v3, "UcmService"

    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "errorresponse"

    const/16 v4, 0xd

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    const-string v3, "bytearrayresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateKeyguardPassword Response from plugin:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    array-length v4, v1

    if-lez v4, :cond_5

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v5, "stringresponse"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    nop

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    const-string v2, "UcmService"

    const-string/jumbo v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateSecureRandom "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateSecureRandom : NULL agent for uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "bytearrayresponse"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    if-eq v7, v8, :cond_1

    const/16 v10, 0x3e8

    if-ne v7, v10, :cond_1

    move v7, v8

    :cond_1
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v10

    if-ne v10, v9, :cond_2

    const/4 v10, 0x1

    :cond_2
    move v9, v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v13, v10

    :try_start_0
    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    const/16 v16, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v12, v15

    move-wide/from16 v18, v13

    move v13, v7

    move/from16 v14, v16

    move/from16 v20, v15

    move-object/from16 v15, v17

    :try_start_1
    invoke-virtual/range {v10 .. v15}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v10, :cond_3

    :try_start_2
    const-string v0, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WARNING!!!! generateSecureRandom is NOT allowed for URI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bytearrayresponse"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-wide/from16 v10, v18

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v0

    move-wide/from16 v10, v18

    move/from16 v5, p2

    move-object/from16 v13, p3

    move-object/from16 v21, v4

    move/from16 v14, v20

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v10, v18

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "callerUid"

    invoke-virtual {v12, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "user_id"

    move/from16 v14, v20

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "ownerUid"

    invoke-virtual {v12, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "resource"

    invoke-virtual {v12, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "UcmService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateSecureRandom KEY_RESOURCE_ID= "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "resource"

    const/4 v5, -0x2

    invoke-virtual {v12, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateSecureRandom KEY_USER_ID= "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "user_id"

    invoke-virtual {v12, v15, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateSecureRandom KEY_CALLER_UID= "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "callerUid"

    invoke-virtual {v12, v15, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "UcmService"

    const-string v5, "agent is not bound"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bytearrayresponse"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_4
    move/from16 v5, p2

    move-object/from16 v13, p3

    invoke-virtual {v4, v5, v13, v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v3, "UcmService"

    const-string v15, "ERROR: Null Response received from agent"

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "bytearrayresponse"

    const/4 v15, 0x0

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "errorresponse"

    const/16 v15, 0xe

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_5
    const-string v3, "bytearrayresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v15, "errorresponse"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "generateSecureRandom Response from plugin:  error code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_6

    const-string v1, "UcmService"

    const-string v2, "ERROR: Empty data received for generateSecureRandom"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    const-string v1, "bytearrayresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "errorresponse"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_6
    return-object v0

    :catchall_1
    move-exception v0

    move/from16 v5, p2

    move-object/from16 v13, p3

    move-object/from16 v21, v4

    move-wide/from16 v10, v18

    move/from16 v14, v20

    goto :goto_0

    :catchall_2
    move-exception v0

    move/from16 v5, p2

    move-object/from16 v21, v4

    move-wide v10, v13

    move v14, v15

    move-object/from16 v13, p3

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public generateWrappedDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "generateWrappedDek"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz p1, :cond_5

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateWrappedDek response from plugin:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :cond_5
    :goto_1
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2
.end method

.method public getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finding active agent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found active agent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p3

    const-string v0, "getAdminConfigureBundleFromCs"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdminConfigureBundleFromCs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "bundleresponse"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v8, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    move/from16 v11, p2

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! getAdminConfigureBundleFromCs is NOT allowed for URI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bundleresponse"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "UcmService"

    const-string v9, "agent is not bound"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "bundleresponse"

    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_2
    move/from16 v8, p1

    invoke-virtual {v4, v8}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v3, "UcmService"

    const-string v9, "ERROR: Null Response received from agent"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "bundleresponse"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setPackageSetting Response from plugin: error code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception v0

    move/from16 v8, p1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-eq v0, v6, :cond_0

    const/16 v8, 0x3e8

    if-ne v0, v8, :cond_0

    move v0, v6

    :cond_0
    move v14, v0

    invoke-direct {v1, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v0

    if-ne v0, v7, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v7, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v12, v8

    :try_start_0
    iget-object v8, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/16 v16, 0x0

    move v10, v15

    move v11, v14

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-wide v5, v12

    move v12, v0

    move-object/from16 v13, v16

    :try_start_1
    invoke-virtual/range {v8 .. v13}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING!!!! getAgentInfo is NOT allowed for URI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-wide v5, v12

    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCertificateChain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    if-nez v4, :cond_0

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v5, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v5, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-eq v6, v7, :cond_2

    const/16 v9, 0x3e8

    if-eq v6, v9, :cond_1

    invoke-direct {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    invoke-direct {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v9

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v10

    if-ne v10, v8, :cond_3

    const/4 v10, 0x1

    :cond_3
    move v15, v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v10

    if-eq v10, v8, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v8

    const-string v9, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCertificateChain new userid-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v8, "UcmService"

    const-string v11, "getCertificateChain user id id not valid. Keeping same userid"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v8, v9

    :goto_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v14, v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v12, v9

    :try_start_0
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10

    const/16 v16, 0x0

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v11, v8

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-wide v4, v12

    move v12, v6

    move/from16 v13, v16

    move/from16 v20, v7

    move-object v7, v14

    move-object/from16 v14, v17

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_6

    :try_start_2
    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! getCertificateChain is NOT allowed for URI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "errorresponse"

    const/16 v9, 0xf

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_1

    :cond_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v9, "callerUid"

    invoke-virtual {v7, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "user_id"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "ownerUid"

    invoke-virtual {v7, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "resource"

    invoke-virtual {v7, v9, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "resource"

    const/4 v12, -0x2

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificateChain KEY_USER_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "user_id"

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "callerUid"

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v9, v18

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "UcmService"

    const-string v11, "agent is not bound"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "errorresponse"

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v10, v19

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v3, 0xd

    if-nez v0, :cond_8

    const-string v11, "UcmService"

    const-string v12, "ERROR: Null Response received from agent"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v0, v11

    const-string v11, "errorresponse"

    invoke-virtual {v0, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :cond_8
    const-string v11, "bytearrayresponse"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    const-string v12, "errorresponse"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCertificateChain Response from plugin:  error code = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_9

    const-string v3, "UcmService"

    const-string v13, "ERROR: Empty data received for getCertificateChain"

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    const/16 v13, 0xd

    invoke-virtual {v0, v3, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :cond_9
    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v9, v4

    move-object v10, v5

    move/from16 v20, v7

    move-wide v4, v12

    move-object v7, v14

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getConfigureBundleFromCs(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bundleresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v4, "bundleresponse"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "UcmService"

    const-string v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bundleresponse"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    invoke-virtual {v1, p1, p4, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "UcmService"

    const-string v3, "getCredentialStorageProperty Response from plugin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "getDek"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz p1, :cond_6

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "boot_fbe"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_3

    const-string v3, "UcmService"

    const-string/jumbo v4, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDek()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_5
    const-string v2, "errorresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDek Response from plugin:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :cond_6
    :goto_1
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2
.end method

.method public getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailErrorMessage uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "UcmService"

    const-string v3, "Cannot find agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UcmService"

    const-string v3, "agent is not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-virtual {v1, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is not proper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_6

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v3}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    .locals 13

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyguardStorageForCurrentUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "ucm_keyguardconfig.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFileExist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentKeyguardInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v3, v7

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-interface {v7, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1

    if-eq v8, v9, :cond_1

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v8, v9

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "keyguard"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v8, v12

    :cond_2
    if-ne v8, v10, :cond_3

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-ne v12, v10, :cond_3

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    const-string/jumbo v12, "vendor"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "name"

    invoke-interface {v7, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    :cond_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v12

    if-ne v8, v9, :cond_2

    :cond_4
    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_3
    move-exception v6

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :cond_5
    :goto_2
    return-object v5

    :goto_3
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_4
    throw v6
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 8

    const-string v0, "UcmService"

    const-string v1, "getODESettingsConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v2, "ro.boot.ucs_mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "UcmService"

    const-string v5, "Device is encrypted as UCM"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "odeEnabled"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "agentId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "id"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v4, "odeSignature"

    iget-object v5, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v4, "aid"

    iget-object v5, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget v4, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isVaildStorageType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "storagetype"

    sget-object v5, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v6, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v4, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isVaildSCPType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "scptype"

    sget-object v5, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v6, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public getStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_6

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10

    const-string v11, "boot_test"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-ne v2, v11, :cond_1

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    :goto_0
    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_0

    :goto_1
    const/16 v10, 0xe

    if-nez v2, :cond_2

    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "no agent found for Source = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "errorresponse"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    iget-object v11, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-nez v11, :cond_3

    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "no agent info found for Source = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "errorresponse"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "UcmService"

    const-string v12, "agent is not bound"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v0, v11

    const-string v11, "errorresponse"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getStatus()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v0, v10

    const-string v10, "UcmService"

    const-string v11, "ERROR: Null Response received from agent"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "errorresponse"

    const/16 v11, 0xd

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_5
    const-string v10, "UcmService"

    const-string v11, "getStatus success"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "state"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v10, "remainCnt"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v10, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v4, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    iget-object v10, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v5, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    iget-object v10, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    iget-object v10, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    iget-object v10, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    iget-object v10, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    const-string v10, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "values get from agent : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "maxAuthCnt"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "maxPinLength"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "minPinLength"

    invoke-virtual {v0, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "authMode"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "minPukLength"

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "maxPukLength"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_6
    :goto_2
    const-string v1, "UcmService"

    const-string v2, "csName is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public grantKeyChainAccess(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grantKeyChainAccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkSystemCaller()V

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UcmService"

    const-string v1, "Not Keychain URI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "installCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    const-string v1, "booleanresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "errorresponse"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v1, "booleanresponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCertificate Response:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCMERRORTESTING: @CredentialManagerService installCertificate Response from plugin with error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isCredentialStorageLock(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "UcmService"

    const-string v1, "UCS ODE isCredentialStorageLock in UCS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    return v0
.end method

.method public isKeyChainGranted(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isUserCertificatesExistInUCS()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "UcmService"

    const-string v2, "isUserCertificatesExistInUCS called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isUserCertificatesExistInUCS"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v3

    const-string v4, "callerUid"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "user_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "removable_user_certificates_list"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "extraArgs"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v5, "UcmService"

    const-string v7, "Iteration has started...."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v0, v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UcmService"

    const-string v8, "activeAgent is CSobscure"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v0, v3, v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v13, "resource"

    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v9, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v13, 0x0

    if-eqz v7, :cond_3

    const-string/jumbo v14, "stringarrayresponse"

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    :cond_3
    if-eqz v13, :cond_4

    invoke-static {v12, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_6

    const/4 v14, 0x0

    :goto_1
    array-length v15, v0

    if-ge v14, v15, :cond_6

    aget-object v15, v0, v14

    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    aget-object v15, v0, v14

    invoke-interface {v12, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    return v6

    :cond_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v15, "resource"

    const/4 v8, 0x3

    invoke-virtual {v2, v15, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v9, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    const-string/jumbo v15, "stringarrayresponse"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :cond_8
    if-eqz v8, :cond_9

    invoke-static {v14, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_9
    if-eqz v0, :cond_b

    const/16 v16, 0x0

    :goto_2
    move/from16 v15, v16

    array-length v6, v0

    if-ge v15, v6, :cond_b

    aget-object v6, v0, v15

    invoke-interface {v14, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    aget-object v6, v0, v15

    invoke-interface {v14, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v16, v15, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_b
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x1

    return v6

    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_d
    :goto_3
    const-string v0, "UcmService"

    const-string v8, "agent is not bound or not ready"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public listAllProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "listAllProviders"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public listPasswordSupportedProviders(I)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listPasswordSupportedProviders : userid -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    new-instance v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v7}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listPasswordSupportedProviders :  cs Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, p1, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v8, :cond_6

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, p1, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCredentialStorageEnabledForLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "password support provider enabled as a lock type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v8, :cond_4

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Credential Storage not enabled as a lock type -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NON Password Supported Credential Storage -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NON managed provider -  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v8, "UcmService"

    const-string v9, "Package name for CS found NULL. Ignoring CS"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public listProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyChangeToPlugin event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "notifyChangeToPlugin"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/16 v6, 0xe

    const/4 v7, 0x1

    if-nez p1, :cond_7

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v10, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I

    move-result v11

    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeAgent "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " notify status - "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v8, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activeAgent "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v14, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " not notified"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v8, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activeAgent status-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v7, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_3

    const-string v8, "errorresponse"

    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    :cond_3
    goto :goto_2

    :cond_4
    const-string v8, "errorresponse"

    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "UcmService"

    const-string v11, "agentService is null"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_2
    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_6

    const-string v5, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    const-string v5, "booleanresponse"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    if-nez v8, :cond_8

    const-string v5, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no agent found for Source = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "booleanresponse"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_8
    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I

    move-result v6

    if-nez v6, :cond_9

    const-string v5, "booleanresponse"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "errorresponse"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_9
    const-string v7, "errorresponse"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_a
    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "UcmService"

    const-string v6, "agent is not bound"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string v5, "booleanresponse"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v3
.end method

.method public notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v0, "notifyLicenseStatus"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLicenseStatus packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkESEPermission(Ljava/lang/String;)Z

    move-result v2

    if-ne v3, v2, :cond_0

    iput-boolean v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->needToBindESE:Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v3
.end method

.method public processCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processCommand "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v6, "bytearrayresponse"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    if-eq v7, v8, :cond_1

    const/16 v9, 0x3e8

    if-ne v7, v9, :cond_1

    move v7, v8

    :cond_1
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v13, v9

    :try_start_0
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v15

    move v12, v7

    move-wide/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v14, v17

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_2

    :try_start_2
    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! processCommand is NOT allowed for URI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bytearrayresponse"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-wide/from16 v9, v18

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v0

    move-wide/from16 v9, v18

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_0

    :cond_2
    move-wide/from16 v9, v18

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "UcmService"

    const-string v12, "agent is not bound"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "bytearrayresponse"

    invoke-virtual {v3, v11, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_3
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v4, v11, v12, v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v3, "UcmService"

    const-string v13, "ERROR: Null Response received from agent"

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "bytearrayresponse"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "processCommand Response from plugin:  error code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide/from16 v9, v18

    :goto_0
    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-wide v9, v13

    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processMessage type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "UcmService"

    const-string v3, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/16 v2, 0x41

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidMsgType(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UcmService"

    const-string v3, "Invalid message Type..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/16 v2, 0x40

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    return-object v1

    :cond_1
    if-nez p2, :cond_2

    const-string v1, "UcmService"

    const-string/jumbo v3, "message byte is null.."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/16 v2, 0x32

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    return-object v1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v3, v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->processMsg(II[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in processMessage -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x0

    return-object v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public declared-synchronized publishService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "UcmService"

    const-string/jumbo v1, "publishedService com.samsung.ucs.ucsservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected refreshAgents()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor()V

    return-void
.end method

.method public removeEnforcedLockTypeNotification(I)V
    .locals 3

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEnforcedLockTypeNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v1, "UcmService"

    const-string v2, "Failed to get NotificationManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v1, 0x1f40

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public resetNonMdmCertificates()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "UcmService"

    const-string/jumbo v2, "resetNonMdmCertificates called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "resetNonMdmCertificates"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v3

    const-string v4, "callerUid"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "user_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "UcmService"

    const-string v5, "Iteration has started...."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v5, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    if-eqz v6, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6, v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "UcmService"

    const-string v7, "activeAgent is CSobscure"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "resource"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    const-string/jumbo v10, "stringarrayresponse"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :cond_3
    if-eqz v8, :cond_4

    invoke-static {v6, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v10, "resource"

    const/4 v11, 0x3

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    const/4 v0, 0x0

    if-eqz v10, :cond_5

    const-string/jumbo v12, "stringarrayresponse"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v12, v0

    if-eqz v12, :cond_6

    invoke-static {v7, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "UcmService"

    const-string v9, "agentAliasesListKeychain.isEmpty() && agentAliasesListWiFi.isEmpty() .... continue"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_0
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    if-eqz v0, :cond_a

    const/4 v15, 0x0

    :goto_1
    array-length v11, v0

    if-ge v15, v11, :cond_a

    aget-object v11, v0, v15

    invoke-interface {v6, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    aget-object v11, v0, v15

    invoke-interface {v6, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    aget-object v11, v0, v15

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    aget-object v11, v0, v15

    invoke-interface {v7, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x3

    goto :goto_1

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v9, "UcmService"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request to delete KEYCHAIN for alias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "resource"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v15, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    nop

    move v9, v1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    goto :goto_3

    :cond_b
    move-object/from16 v16, v0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v9, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "request to delete WIFI for alias: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "resource"

    const/4 v11, 0x3

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4

    :cond_c
    nop

    :goto_5
    move-object v0, v10

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_d
    :goto_6
    const-string v1, "UcmService"

    const-string v6, "agent is not bound or not ready"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_7
    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v6, "booleanresponse"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    if-eq v7, v8, :cond_1

    const/16 v9, 0x3e8

    if-ne v7, v9, :cond_1

    move v7, v8

    :cond_1
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v13, v9

    :try_start_0
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v15

    move v12, v7

    move-wide/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v14, v17

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_2

    :try_start_2
    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! resetUid is NOT allowed for URI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-wide/from16 v9, v18

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v0

    move-wide/from16 v9, v18

    move/from16 v11, p2

    goto :goto_0

    :cond_2
    move-wide/from16 v9, v18

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "UcmService"

    const-string v12, "agent is not bound"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "booleanresponse"

    invoke-virtual {v3, v11, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_3
    move/from16 v11, p2

    invoke-virtual {v4, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->resetUid(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v3, "UcmService"

    const-string v12, "ERROR: Null Response received from agent"

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "booleanresponse"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "resetUid Response from plugin:  error code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception v0

    move/from16 v11, p2

    move-wide/from16 v9, v18

    :goto_0
    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v11, p2

    move-wide v9, v13

    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v6, "booleanresponse"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    if-eq v7, v8, :cond_1

    const/16 v9, 0x3e8

    if-ne v7, v9, :cond_1

    move v7, v8

    :cond_1
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v13, v9

    :try_start_0
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v15

    move v12, v7

    move-wide/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v14, v17

    :try_start_1
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_2

    :try_start_2
    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! resetUser is NOT allowed for URI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-wide/from16 v9, v18

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v0

    move-wide/from16 v9, v18

    move/from16 v11, p2

    goto :goto_0

    :cond_2
    move-wide/from16 v9, v18

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "UcmService"

    const-string v12, "agent is not bound"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "booleanresponse"

    invoke-virtual {v3, v11, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_3
    move/from16 v11, p2

    invoke-virtual {v4, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->resetUser(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v3, "UcmService"

    const-string v12, "ERROR: Null Response received from agent"

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "booleanresponse"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "resetUser Response from plugin:  error code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception v0

    move/from16 v11, p2

    move-wide/from16 v9, v18

    :goto_0
    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v11, p2

    move-wide v9, v13

    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 59
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v4, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v6

    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v13

    const/16 v14, 0x3e8

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    if-eq v5, v6, :cond_1

    if-eq v5, v14, :cond_0

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v5, v6

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v8

    if-ne v8, v7, :cond_2

    const/4 v8, 0x1

    :cond_2
    move v15, v8

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v12, v7

    const-string v7, "callerUid"

    invoke-virtual {v12, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "user_id"

    invoke-virtual {v12, v7, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "ownerUid"

    invoke-virtual {v12, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "resource"

    invoke-virtual {v12, v7, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "entryType"

    move/from16 v11, p2

    invoke-virtual {v12, v7, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saw KEY_RESOURCE_ID= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "resource"

    const/4 v10, -0x2

    invoke-virtual {v12, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saw KEY_USER_ID= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "user_id"

    invoke-virtual {v12, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saw KEY_CALLER_UID= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "callerUid"

    invoke-virtual {v12, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KNOX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    const-string v7, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Iteration has started.... uid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v21, v3

    move-object v3, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v9, :cond_3

    nop

    move-object/from16 v27, v4

    move-object/from16 v26, v8

    move-object/from16 v18, v10

    move-object v4, v12

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    move-wide/from16 v24, v22

    :try_start_0
    iget-object v7, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const/4 v0, 0x0

    const/16 v22, 0x0

    move-object/from16 v26, v8

    const/16 v14, 0xf

    move-object v8, v9

    move-object v14, v9

    move v9, v13

    move-object/from16 v18, v10

    move v10, v5

    move v11, v0

    move-object/from16 v27, v4

    move-object v4, v12

    move-object/from16 v12, v22

    :try_start_1
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-nez v0, :cond_4

    :try_start_2
    const-string v0, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "errorresponse"

    const/16 v7, 0xf

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v21, 0x1

    move-wide/from16 v7, v24

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v7, v24

    move-object/from16 v39, v4

    move/from16 v30, v6

    move-object/from16 v12, v26

    goto/16 :goto_15

    :cond_4
    move-wide/from16 v7, v24

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v14}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "UcmService"

    const-string v9, "activeAgent is not bound"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v21, 0x1

    nop

    :goto_1
    move/from16 v11, p2

    move-object v12, v4

    move-object/from16 v10, v18

    move-object/from16 v8, v26

    move-object/from16 v4, v27

    goto/16 :goto_0

    :cond_5
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v0, v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "UcmService"

    const-string/jumbo v9, "skipping obscure activeAgent"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    move/from16 v11, p2

    move-object v12, v4

    move-object/from16 v10, v18

    move-object/from16 v8, v26

    move-object/from16 v4, v27

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v14, v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v0, "UcmService"

    const-string v9, "ERROR: Null Response received from activeAgent"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    const-string v0, "errorresponse"

    const/16 v9, 0xd

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v21, 0x1

    goto :goto_1

    :cond_7
    const/16 v9, 0xd

    const-string/jumbo v0, "stringarrayresponse"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v0, "errorresponse"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",  error code = "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_8

    nop

    move-object/from16 v29, v3

    move-object/from16 v39, v4

    move/from16 v30, v6

    move-object/from16 v12, v26

    goto/16 :goto_12

    :cond_8
    const-string v0, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Agent alias size -"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v10

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v0, :cond_9

    aget-object v12, v10, v9

    move/from16 v28, v0

    const-string v0, "UcmService"

    move-object/from16 v29, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v6

    const-string v6, "Agent alias-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v28

    move-object/from16 v3, v29

    move/from16 v6, v30

    goto :goto_3

    :cond_9
    move-object/from16 v29, v3

    move/from16 v30, v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    move-wide/from16 v31, v19

    :try_start_3
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v0, v5, v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    const/4 v12, 0x0

    move-object/from16 v33, v3

    const/4 v3, 0x3

    if-ne v15, v3, :cond_f

    const/16 v3, 0x3e8

    if-ne v5, v3, :cond_f

    :try_start_4
    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v34, v6

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v3, v6, v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    if-eqz v12, :cond_e

    array-length v3, v12

    if-lez v3, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v35, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_b

    :try_start_6
    aget-object v16, v12, v11

    move-object/from16 v36, v16

    move/from16 v37, v6

    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v38, v12

    move-object/from16 v12, v36

    invoke-virtual {v6, v12, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "UcmService"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v39, v4

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saw : Found wifi certAlias-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move-object/from16 v39, v4

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v37

    move-object/from16 v12, v38

    move-object/from16 v4, v39

    move-object/from16 v2, p1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v39, v4

    move-object/from16 v43, v9

    move-object/from16 v12, v26

    move-wide/from16 v3, v31

    goto/16 :goto_14

    :cond_b
    move-object/from16 v39, v4

    move-object/from16 v38, v12

    if-eqz v0, :cond_d

    array-length v2, v0

    if-lez v2, :cond_d

    array-length v2, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_d

    aget-object v6, v0, v4

    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v11, v6, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v0, v2

    goto :goto_7

    :cond_e
    move-object/from16 v39, v4

    move/from16 v35, v11

    move-object/from16 v38, v12

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v39, v4

    move/from16 v35, v11

    move-object/from16 v43, v9

    move-object/from16 v12, v26

    move-wide/from16 v3, v31

    goto/16 :goto_14

    :catchall_4
    move-exception v0

    move-object/from16 v39, v4

    move-object/from16 v34, v6

    move/from16 v35, v11

    move-object/from16 v43, v9

    move-object/from16 v12, v26

    move-wide/from16 v3, v31

    goto/16 :goto_14

    :cond_f
    move-object/from16 v39, v4

    move-object/from16 v34, v6

    move/from16 v35, v11

    move-object/from16 v38, v12

    :goto_7
    if-nez v0, :cond_10

    const/4 v6, 0x0

    :try_start_8
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v34, v6

    :goto_8
    move-object/from16 v43, v9

    move-object/from16 v12, v26

    move-wide/from16 v3, v31

    goto/16 :goto_14

    :cond_10
    :try_start_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object v6, v2

    :try_start_a
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :goto_9
    :try_start_b
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-wide/from16 v3, v31

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    if-eqz v2, :cond_16

    array-length v11, v2

    if-nez v11, :cond_11

    move-object/from16 v40, v0

    move-object/from16 v42, v6

    move-object/from16 v43, v9

    goto/16 :goto_d

    :cond_11
    if-eqz v0, :cond_15

    array-length v11, v0

    if-nez v11, :cond_12

    move-object/from16 v40, v0

    move-object/from16 v42, v6

    move-object/from16 v43, v9

    goto :goto_c

    :cond_12
    array-length v11, v2

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v11, :cond_14

    move-object/from16 v40, v0

    aget-object v0, v2, v12

    move/from16 v41, v11

    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v11, v0, v6}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_13

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "UcmService"

    move-object/from16 v42, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v43, v9

    const-string/jumbo v9, "saw : new alias added to mdmunauthorizedaliasesList : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    move-object/from16 v42, v6

    move-object/from16 v43, v9

    const-string v6, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saw : mdmunauthorizedaliasesList unchanged, access allowed for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v40

    move/from16 v11, v41

    move-object/from16 v6, v42

    move-object/from16 v9, v43

    goto :goto_a

    :cond_14
    move-object/from16 v40, v0

    move-object/from16 v42, v6

    move-object/from16 v43, v9

    goto :goto_e

    :cond_15
    move-object/from16 v40, v0

    move-object/from16 v42, v6

    move-object/from16 v43, v9

    :goto_c
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v0, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_16
    move-object/from16 v40, v0

    move-object/from16 v42, v6

    move-object/from16 v43, v9

    :goto_d
    const-string v0, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is = null "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "saw : Initial agent alias list for agent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_18

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x0

    :goto_f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_18

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v12, v11, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v12, "UcmService"

    move-object/from16 v44, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v9

    const-string/jumbo v9, "saw : Removing from agent alias list : alias name = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_17
    move-object/from16 v44, v2

    move-object/from16 v45, v9

    :goto_10
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v44

    move-object/from16 v9, v45

    goto :goto_f

    :cond_18
    move-object/from16 v44, v2

    move-object/from16 v45, v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v11, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v11, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v26

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v46, v0

    const-string v0, "UcmService"

    move-object/from16 v47, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v48, v6

    const-string/jumbo v6, "saw : Adding alias uri to finalaliasesList : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v0, v46

    move-object/from16 v2, v47

    goto :goto_11

    :cond_19
    move-object/from16 v12, v26

    :goto_12
    move/from16 v11, p2

    move-object v8, v12

    move-object/from16 v10, v18

    move-object/from16 v4, v27

    move-object/from16 v3, v29

    move/from16 v6, v30

    move-object/from16 v12, v39

    move-object/from16 v2, p1

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v42, v6

    move-object/from16 v43, v9

    move-object/from16 v12, v26

    move-wide/from16 v3, v31

    move-object/from16 v34, v42

    goto :goto_14

    :catchall_7
    move-exception v0

    move-object/from16 v43, v9

    move-object/from16 v12, v26

    move-wide/from16 v3, v31

    move-object/from16 v34, v6

    goto :goto_13

    :catchall_8
    move-exception v0

    move-object/from16 v43, v9

    move-object/from16 v12, v26

    move-wide/from16 v3, v31

    :goto_13
    goto :goto_14

    :catchall_9
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v39, v4

    move-object/from16 v34, v6

    move-object/from16 v43, v9

    move/from16 v35, v11

    move-object/from16 v12, v26

    move-wide/from16 v3, v31

    :goto_14
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_a
    move-exception v0

    move-object/from16 v39, v4

    move/from16 v30, v6

    move-wide/from16 v7, v24

    move-object/from16 v12, v26

    goto :goto_15

    :catchall_b
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v30, v6

    move-object v14, v9

    move-object/from16 v39, v12

    move-object v12, v8

    move-wide/from16 v7, v24

    :goto_15
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1a
    move-object/from16 v27, v4

    move/from16 v30, v6

    move-object/from16 v39, v12

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v21, :cond_1b

    const-string v2, "errorresponse"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    return-object v3

    :cond_1c
    move v2, v3

    move-object/from16 v27, v4

    move/from16 v30, v6

    move-object/from16 v39, v12

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    if-nez v3, :cond_1d

    const-string v4, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1d
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "UcmService"

    const-string v6, "activeAgent is not bound"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1e
    move-object/from16 v4, v39

    invoke-virtual {v3, v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1f

    const-string v0, "UcmService"

    const-string v7, "ERROR: Null Response received from activeAgent"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1f
    const-string/jumbo v0, "stringarrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const-string v0, "errorresponse"

    const/4 v12, 0x0

    invoke-virtual {v6, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saw Response from plugin:  error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",  error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne v15, v0, :cond_20

    const-string/jumbo v0, "stringarrayresponse"

    invoke-virtual {v6, v0, v14}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "errorresponse"

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :cond_20
    const/4 v0, 0x3

    if-eq v15, v0, :cond_21

    const-string v0, "errorresponse"

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :cond_21
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "stringarrayresponse"

    invoke-virtual {v6, v0, v14}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "errorresponse"

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    move-wide v8, v7

    :try_start_c
    iget-object v7, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_13

    const/4 v0, 0x0

    const/16 v18, 0x0

    move-wide/from16 v49, v8

    move-object v8, v3

    move v9, v13

    move-object/from16 v51, v10

    move v10, v5

    move/from16 v52, v2

    move v2, v11

    move v11, v0

    move v0, v12

    move-object/from16 v12, v18

    :try_start_d
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    if-nez v7, :cond_23

    :try_start_e
    const-string v0, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "errorresponse"

    const/16 v7, 0xf

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    nop

    move-wide/from16 v7, v49

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :catchall_c
    move-exception v0

    move-wide/from16 v7, v49

    move-object/from16 v55, v4

    move-object/from16 v4, v51

    goto/16 :goto_20

    :cond_23
    move-wide/from16 v7, v49

    if-nez v14, :cond_24

    :try_start_f
    const-string v0, "errorresponse"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    nop

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :catchall_d
    move-exception v0

    move-object/from16 v55, v4

    move-object/from16 v4, v51

    goto/16 :goto_20

    :cond_24
    :try_start_10
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_25

    const/4 v10, 0x0

    :goto_16
    goto :goto_17

    :cond_25
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_11

    goto :goto_16

    :goto_17
    :try_start_11
    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v11, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2b

    array-length v12, v11

    if-nez v12, :cond_26

    move-object/from16 v55, v4

    move-object/from16 v56, v9

    move-object/from16 v4, v51

    goto/16 :goto_1b

    :cond_26
    if-eqz v9, :cond_2a

    array-length v12, v9

    if-nez v12, :cond_27

    move-object/from16 v55, v4

    move-object/from16 v56, v9

    move-object/from16 v4, v51

    goto :goto_1a

    :cond_27
    array-length v12, v11

    :goto_18
    if-ge v0, v12, :cond_29

    aget-object v17, v11, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    move-object/from16 v54, v17

    move-object/from16 v55, v4

    :try_start_12
    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v56, v9

    move-object/from16 v9, v54

    invoke-virtual {v4, v9, v10}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    if-nez v4, :cond_28

    move-object/from16 v4, v51

    :try_start_13
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_28
    move-object/from16 v4, v51

    :goto_19
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v51, v4

    move-object/from16 v4, v55

    move-object/from16 v9, v56

    goto :goto_18

    :catchall_e
    move-exception v0

    move-object/from16 v4, v51

    move-object/from16 v17, v10

    goto/16 :goto_20

    :cond_29
    move-object/from16 v55, v4

    move-object/from16 v4, v51

    move-object v0, v4

    goto :goto_1c

    :cond_2a
    move-object/from16 v55, v4

    move-object/from16 v56, v9

    move-object/from16 v4, v51

    :goto_1a
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    goto :goto_1c

    :catchall_f
    move-exception v0

    move-object/from16 v17, v10

    goto/16 :goto_20

    :cond_2b
    move-object/from16 v55, v4

    move-object/from16 v56, v9

    move-object/from16 v4, v51

    :goto_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v53, 0x0

    :goto_1d
    move/from16 v9, v53

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_2d

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v12, v11, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-interface {v4, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v53, v9, 0x1

    goto :goto_1d

    :cond_2d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v57, v0

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v1, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    goto :goto_1e

    :cond_2e
    move-object/from16 v57, v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string/jumbo v1, "stringarrayresponse"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "errorresponse"

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :catchall_10
    move-exception v0

    move-object/from16 v55, v4

    move-object/from16 v4, v51

    move-object/from16 v17, v10

    goto :goto_1f

    :catchall_11
    move-exception v0

    move-object/from16 v55, v4

    move-object/from16 v4, v51

    :goto_1f
    goto :goto_20

    :catchall_12
    move-exception v0

    move-object/from16 v55, v4

    move-wide/from16 v7, v49

    move-object/from16 v4, v51

    goto :goto_20

    :catchall_13
    move-exception v0

    move/from16 v52, v2

    move-object/from16 v55, v4

    move-wide v7, v8

    move-object v4, v10

    move v2, v11

    :goto_20
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sawInternal() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; resourceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sawInternal"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/16 v2, 0xe

    if-nez v1, :cond_0

    const-string v3, "UcmService"

    const-string/jumbo v4, "sawInternal(): activeAgent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v3, v1}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "UcmService"

    const-string v4, "activeAgent is CSobscure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "callerUid"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "user_id"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "resource"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v3, "UcmService"

    const-string v4, "ERROR: Null Response received from activeAgent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "errorresponse"

    const/16 v4, 0xd

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    const-string/jumbo v3, "stringarrayresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sawInternal() agentAliases.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sawInternal() agentAliases="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string/jumbo v0, "setAdminConfigureBundleForCs"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    const-string v0, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAdminConfigureBundleForCs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez v4, :cond_0

    const-string v6, "UcmService"

    const-string/jumbo v7, "setAdminConfigureBundleForCs : Bundle is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "intresponse"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    const/16 v7, 0xe

    if-nez v6, :cond_1

    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no agent found for Source = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "intresponse"

    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorresponse"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    new-instance v10, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v10, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    if-eq v12, v0, :cond_2

    if-eq v11, v12, :cond_2

    const/16 v13, 0x3e8

    if-ne v11, v13, :cond_2

    move v11, v12

    :cond_2
    move/from16 v15, p2

    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v16, v11

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v13

    if-nez v13, :cond_3

    const-string v7, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WARNING!!!! setConfigureBundleForCsInternal is NOT allowed for URI = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "intresponse"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorresponse"

    const/16 v7, 0xf

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v10, "applet_location"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    move/from16 v11, p2

    invoke-direct {v1, v11, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkPluginUsed(ILjava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v13, v12, :cond_4

    const-string v7, "UcmService"

    const-string/jumbo v13, "the plugin already is used"

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "intresponse"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorresponse"

    const/16 v7, 0x22

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :cond_4
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v7, "intresponse"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorresponse"

    const/16 v7, 0x19

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :cond_5
    move/from16 v11, p2

    :cond_6
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "UcmService"

    const-string v13, "agent is not bound"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "intresponse"

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorresponse"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :cond_7
    move/from16 v7, p5

    invoke-virtual {v6, v2, v4, v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v12, "UcmService"

    const-string v13, "ERROR: Null Response received from agent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v5, v12

    const-string v12, "intresponse"

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorresponse"

    const/16 v12, 0xd

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :cond_8
    const-string v0, "intresponse"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v12, "errorresponse"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_9

    const-string/jumbo v13, "security.ucm_ese_applet_installed"

    const-string v14, "1"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v5

    :catchall_0
    move-exception v0

    move/from16 v11, p2

    move/from16 v7, p5

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCertificateChain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/16 v0, 0xe

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string v7, "booleanresponse"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "errorresponse"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    :cond_0
    new-instance v7, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v7, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    if-eq v8, v9, :cond_1

    const/16 v11, 0x3e8

    if-ne v8, v11, :cond_1

    move v8, v9

    :cond_1
    invoke-direct {v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v11

    if-ne v11, v10, :cond_2

    const/4 v11, 0x1

    :cond_2
    move v10, v11

    if-eqz v3, :cond_4

    const-string v11, "admin_id"

    invoke-virtual {v3, v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_3

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    move v11, v6

    :goto_1
    move/from16 v17, v11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-wide v13, v11

    :try_start_0
    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v12

    const/16 v16, 0x0

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide/from16 v19, v13

    move v13, v15

    move v14, v8

    move/from16 v21, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    :try_start_1
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_5

    :try_start_2
    const-string v0, "UcmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING!!!! setCertificateChain is NOT allowed for URI = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-wide/from16 v11, v19

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v0

    move-wide/from16 v11, v19

    move/from16 v15, v21

    goto/16 :goto_2

    :cond_5
    move-wide/from16 v11, v19

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v14, "callerUid"

    invoke-virtual {v13, v14, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v14, "user_id"

    move/from16 v15, v21

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v14, "ownerUid"

    invoke-virtual {v13, v14, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v14, "resource"

    invoke-virtual {v13, v14, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "extraArgs"

    invoke-virtual {v13, v14, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v14, "UcmService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resource"

    const/4 v1, -0x2

    invoke-virtual {v13, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCertificateChain KEY_USER_ID= "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "user_id"

    invoke-virtual {v13, v14, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "callerUid"

    invoke-virtual {v13, v14, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "UcmService"

    const-string v1, "agent is not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/16 v1, 0xe

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1, v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v4, "UcmService"

    const-string v6, "ERROR: Null Response received from agent"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, v4

    const-string v4, "booleanresponse"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_7
    const-string v4, "booleanresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "errorresponse"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v14, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCertificateChain Response from plugin:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_8

    if-nez v6, :cond_8

    const-string v1, "UcmService"

    const-string v2, "ERROR: Empty data received for setCertificateChain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "booleanresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "errorresponse"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_8
    return-object v0

    :catchall_1
    move-exception v0

    move-wide/from16 v11, v19

    move/from16 v15, v21

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide v11, v13

    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setConfigureBundleForCs(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConfigureBundleForCs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x1

    if-nez p3, :cond_0

    const-string v2, "UcmService"

    const-string/jumbo v3, "setConfigureBundleForCs : Bundle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "intresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v2, "intresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, -0x1

    if-nez v1, :cond_0

    const-string v4, "intresponse"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "UcmService"

    const-string v5, "agent is not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "intresponse"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    invoke-virtual {v1, p1, p4, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "UcmService"

    const-string/jumbo v3, "setCredentialStorageProperty Response from plugin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public setState(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "setState"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    invoke-virtual {v1, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setState(I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    return-object v0
.end method

.method public showEnforcedLockTypeNotification(ILjava/lang/String;)V
    .locals 8

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showEnforcedLockTypeNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v1, "UcmService"

    const-string v2, "Failed to get NotificationManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "UCM_KEYGUARD_NOTIFICATION"

    const-string v3, "UCM Keyguard Configuration Notification"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "CS_NAME"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "USER_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, p1, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, ""

    if-eqz p2, :cond_1

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :cond_1
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040a88

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v7, "UCM_KEYGUARD_NOTIFICATION"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/16 v6, 0x1f40

    add-int/2addr v6, p1

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UcmService"

    const-string v3, "handled expected Exception in showEnforcedLockTypeNotification()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sign "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    const/16 v0, 0xe

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sign : NULL agent for uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "bytearrayresponse"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v5, "errorresponse"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-eq v7, v8, :cond_2

    const/16 v10, 0x3e8

    if-eq v7, v10, :cond_1

    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v10

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v11

    if-ne v11, v9, :cond_3

    const/4 v11, 0x1

    :cond_3
    move v15, v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-direct {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v11

    if-eq v11, v9, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v9

    const-string v10, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sign new userid-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v9, "UcmService"

    const-string/jumbo v12, "sign user id id not valid. Keeping same userid"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v9, v10

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v13, v10

    :try_start_0
    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    const/16 v16, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v12, v9

    move-wide/from16 v18, v13

    move v13, v7

    move/from16 v14, v16

    move/from16 v20, v15

    move-object/from16 v15, v17

    :try_start_1
    invoke-virtual/range {v10 .. v15}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v10, :cond_6

    :try_start_2
    const-string v0, "UcmService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WARNING!!!! sign is NOT allowed for URI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bytearrayresponse"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v10, v18

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    move-wide/from16 v10, v18

    move-object/from16 v13, p3

    move-object/from16 v21, v4

    move/from16 v14, v20

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v10, v18

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "callerUid"

    invoke-virtual {v12, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "user_id"

    invoke-virtual {v12, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "ownerUid"

    invoke-virtual {v12, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "resource"

    move/from16 v14, v20

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "UcmService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sign KEY_RESOURCE_ID= "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "resource"

    const/4 v5, -0x2

    invoke-virtual {v12, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sign KEY_USER_ID= "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "user_id"

    invoke-virtual {v12, v15, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UcmService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sign KEY_CALLER_UID= "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "callerUid"

    invoke-virtual {v12, v15, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "UcmService"

    const-string v5, "agent is not bound"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bytearrayresponse"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p2

    move-object/from16 v13, p3

    invoke-virtual {v4, v0, v5, v13, v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v3, "UcmService"

    const-string v15, "ERROR: Null Response received from agent"

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    const-string v3, "bytearrayresponse"

    const/4 v15, 0x0

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "errorresponse"

    const/16 v15, 0xe

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :cond_8
    const-string v3, "bytearrayresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v15, "errorresponse"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v2, "UcmService"

    move-object/from16 v21, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sign Response from plugin:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_9

    const-string v2, "UcmService"

    const-string v4, "ERROR: Empty data received for sign"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bytearrayresponse"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "errorresponse"

    const/16 v4, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_9
    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v21, v4

    move-wide/from16 v10, v18

    move/from16 v14, v20

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v21, v4

    move-wide v10, v13

    move v14, v15

    move-object/from16 v13, p3

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public systemReady()V
    .locals 2

    const-string v0, "UcmService"

    const-string/jumbo v1, "systemReady is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemReadyCalled:Z

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkESEPermissionInstalledMDM()V

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    return-void
.end method

.method public unwrapDek(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unwrapDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string/jumbo v1, "unwrapDek"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz p1, :cond_5

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_2

    const-string v3, "UcmService"

    const-string/jumbo v4, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_3
    invoke-virtual {v1, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    :cond_4
    const-string v2, "errorresponse"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unwrapDek Response from plugin:  error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    :cond_5
    :goto_1
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2
.end method

.method public updateAgentList()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAgentList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x10

    if-eqz p2, :cond_9

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p3, :cond_8

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    const-string v2, "boot_test"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_2

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    invoke-virtual {v1, p1, p3, p4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_5
    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "remainCnt"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOCK_STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REMAIN_COUNT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x83

    if-ne v2, v4, :cond_6

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    :cond_6
    const/16 v4, 0x85

    if-ne v2, v4, :cond_7

    const-string v5, "UcmService"

    const-string/jumbo v6, "state changed to blocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V

    :cond_7
    return-object v0

    :cond_8
    :goto_1
    const-string v2, "UcmService"

    const-string/jumbo v3, "pin is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_9
    :goto_2
    const-string v2, "UcmService"

    const-string/jumbo v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPuk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x10

    if-eqz p1, :cond_7

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p3, :cond_6

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    const-string v2, "boot_test"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_2

    const-string v2, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    :goto_0
    const/16 v2, 0xe

    if-nez v1, :cond_3

    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "UcmService"

    const-string v4, "agent is not bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    invoke-virtual {v1, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_5
    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "remainCnt"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOCK_STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REMAIN_COUNT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6
    :goto_1
    const-string v2, "UcmService"

    const-string/jumbo v3, "pin is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_7
    :goto_2
    const-string v2, "UcmService"

    const-string/jumbo v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "errorresponse"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

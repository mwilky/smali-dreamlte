.class public Lcom/android/server/SdpManagerService;
.super Landroid/os/ISdpManagerService$Stub;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SdpManagerProxy;,
        Lcom/android/server/SdpManagerService$Lifecycle;,
        Lcom/android/server/SdpManagerService$SdpHandler;,
        Lcom/android/server/SdpManagerService$SecureFileSystemManager;,
        Lcom/android/server/SdpManagerService$KnoxUtil;,
        Lcom/android/server/SdpManagerService$SecureUtil;,
        Lcom/android/server/SdpManagerService$FileUtil;,
        Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;,
        Lcom/android/server/SdpManagerService$StateListener;,
        Lcom/android/server/SdpManagerService$ListenerRoll;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase;,
        Lcom/android/server/SdpManagerService$VirtualLockClient;
    }
.end annotation


# static fields
.field private static final ALIAS_EPHEMERAL_KEY:Ljava/lang/String; = "SdpEphemeralKey"

.field private static final ALIAS_EPHEMERAL_TOKEN:Ljava/lang/String; = "SdpEphemeralToken"

.field private static final ALIAS_RESET_TOKEN:Ljava/lang/String; = "SdpResetToken"

.field private static final ALIAS_SECURE_DATA_KEY:Ljava/lang/String; = "SdpSecureDataKey"

.field private static final ALIAS_SESSION_KEY:Ljava/lang/String; = "SdpSessionKey"

.field private static final ALIAS_TOKEN_HANDLE:Ljava/lang/String; = "SdpTokenHandle"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final DATA_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final DATA_USERID:Ljava/lang/String; = "userId"

.field public static final DEFAULT_KEY_LEN:I = 0x20

.field private static final DEFAULT_LEGACY_RESET_TIMEOUT:J = 0xdbba0L

.field private static final DEFAULT_USER_ENGINE_ID:I = 0x0

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final DEVICE_SUPPORT_SDP:Z

.field private static final EMPTY_STRING:Ljava/lang/String;

.field private static final FIRST_STAGE:I = 0x1

.field private static final FULL_STAGE:I = 0x0

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field private static final KEYMGNT_DEBUG:Z = false

.field private static final LEGACY_MIN_AFW_USER_ID:I = 0xa

.field private static final LEGACY_MIN_KNOX_USER_ID:I = 0x64

.field private static final LEGACY_PWD_WRAPPED_MASTER_KEY:Ljava/lang/String; = "ECMK_PWD"

.field private static final LEGACY_TOKEN_WRAPPED_MASTER_KEY:Ljava/lang/String; = "ECMK_MDM"

.field private static final MAX_FAILURE_COUNT:I = 0xa

.field private static final MSG_CLEANUP_USER:I = 0x9

.field private static final MSG_DEVICE_OWNER_CHANGED:I = 0xa

.field private static final MSG_LEGACY_RESET_TIMEOUT:I = 0xc

.field private static final MSG_LOCK:I = 0x2

.field private static final MSG_LOCKED_BOOT_COMPLETED:I = 0xd

.field private static final MSG_PACKAGE_REMOVED:I = 0x4

.field private static final MSG_SP_FULL_MIGRATION:I = 0xb

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final MSG_UNLOCK:I = 0x3

.field private static final MSG_UNLOCK_USER:I = 0x8

.field private static final MSG_USER_ADDED:I = 0x5

.field private static final MSG_USER_REMOVED:I = 0x6

.field private static final NULL_USER:Landroid/content/pm/UserInfo;

.field public static final SDK_CURRENT_VERSION:D = 1.2

.field public static final SDK_NOT_SUPPORTED:D = 0.0

.field public static final SDK_VERSION_1_0:D = 1.0

.field public static final SDK_VERSION_1_1:D = 1.1

.field public static final SDK_VERSION_1_2:D = 1.2

.field public static final SDPK_PWD_LEN:I = 0x20

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_LATEST_VERSION:I = 0x6

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_3:I = 0x3

.field public static final SDP_VERSION_4:I = 0x4

.field public static final SDP_VERSION_5:I = 0x5

.field public static final SDP_VERSION_6:I = 0x6

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field private static final SERVICE_NAME:Ljava/lang/String; = "SdpManagerService"

.field private static final SYSTEM_USER_ENGINE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SdpManagerService"

.field private static final TAG_RECV:Ljava/lang/String; = "SdpManagerService.receiver"

.field private static mFailureCount:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private final mBinderListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCMKMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEPM:Lcom/android/server/EnterprisePartitionManager;

.field private mIsHandlerReady:Z

.field private mIsReady:Z

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mKeyProtector:Lcom/android/server/KeyProtector;

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/SdpManagerService$ListenerRoll;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mManagedCredentialMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mManagedTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mPackageEventReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mResetPwdKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

.field private final mSdpEngineDbLock:Ljava/lang/Object;

.field private final mSdpEngineMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

.field private mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

.field private mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

.field private mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

.field private mWaitForPassword:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    new-instance v0, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SdpManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/SdpManagerService$KnoxUtil;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_SDP:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Landroid/os/ISdpManagerService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mManagedCredentialMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mManagedTokenMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/android/server/EnterprisePartitionManager;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

    iput-boolean v1, p0, Lcom/android/server/SdpManagerService;->mIsReady:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    new-instance v2, Lcom/android/server/SdpManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SdpManagerService$2;-><init>(Lcom/android/server/SdpManagerService;)V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/SdpManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/SdpManagerService$3;-><init>(Lcom/android/server/SdpManagerService;)V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mPackageEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/SdpManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/SdpManagerService$4;-><init>(Lcom/android/server/SdpManagerService;)V

    iput-object v2, p0, Lcom/android/server/SdpManagerService;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-direct {v1, p0, p0}, Lcom/android/server/SdpManagerService$VirtualLockClient;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {v1, p0, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {p1}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/android/server/EnterprisePartitionManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/android/server/EnterprisePartitionManager;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/android/server/KeyProtector;Lcom/android/server/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    new-instance v0, Lcom/android/server/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SdpServiceKeeper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->readEngineList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/SdpManagerService;[BJ[BJI)Z
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/server/SdpManagerService;->changeToken([BJ[BJI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/SdpManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->enableSyntheticPassword(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SdpManagerService;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->checkUserSecurity(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/SdpManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->onEmergencyStateChanged(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/SdpManagerService;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->quickMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/SdpManagerService;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/SdpManagerService;[BI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->saveResetTokenViaProtector([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/SdpManagerService;Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->lockKeystore(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/SdpManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isFileBasedEncryption()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/SdpManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isLegacyEncryptionUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getPackageManagerService()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/SdpManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/SdpManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->registerObserver()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/SdpManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->registerReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->computeForPassword(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/SdpManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->updateDeviceOwnerStatus()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->doLegacyRecoveryIfNecessary(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->prepareSecureDataKey(I)V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/server/SdpManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/SdpManagerService;->mIsReady:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/SdpManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserAdded(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleStartUser(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUnlockUser(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleCleanupUser(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleLockedBootCompleted(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/SdpManagerService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->onStartUser(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/SdpManagerService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SdpManagerService;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private adaptLegacyDeviceOwner(I)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior to key migration, adapting legacy DO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getLegacyPwdWrappedMasterKeyPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DO adaptation - Failed to remove legacy key file..."

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    move-object v3, v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x2

    if-nez v3, :cond_1

    const-string v5, "DO adaptation - Failed due to no engine found"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v5, "DO adaptation - Failed to get reset token"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v2

    if-nez v2, :cond_3

    const-string v5, "DO adaptation - Failed to get master key"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "DO adaptation - Failed to save ephemeral key"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->enableSyntheticPassword(I)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DO adaptation - Is sp enabled? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private adaptLegacyKnoxUser(I)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior to key migration, adapting legacy knox user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->enableSyntheticPassword(I)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->setSeparateProfileChallengeEnabled(I)Z

    move-result v1

    const-string v2, "Knox adaptation - Adaptation completed! Is sp enabled? %s Is separated? %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v5, v6

    nop

    :cond_0
    return v5
.end method

.method private adaptLegacyProfileOwner(I)Z
    .locals 30

    move-object/from16 v1, p0

    move/from16 v10, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prior to key migration, adapting legacy PO "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v2, v15

    move v4, v10

    move v5, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    nop

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v4

    move-object v5, v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    nop

    invoke-direct {v1, v5}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v4, v1, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    const/16 v9, 0x20

    invoke-virtual {v4, v8, v11, v6, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v4, v1, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_7

    array-length v6, v15

    move/from16 v16, v9

    move v9, v3

    :goto_1
    if-ge v9, v6, :cond_6

    aget-object v3, v15, v9

    if-eqz v3, :cond_5

    const-string v7, "SDPK_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v6

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6}, Lcom/android/server/SdpManagerService$FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v17

    move/from16 v16, v17

    if-eqz v17, :cond_4

    move-object/from16 v25, v4

    const-string v4, "PO adaptation - %s moved successfully"

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "SDPK_"

    move-object/from16 v28, v8

    const-string v8, ""

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    const-string v4, "PO adaptation - Failed to move %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "SDPK_"

    const-string v8, ""

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    move/from16 v9, v16

    goto :goto_3

    :cond_5
    move-object/from16 v23, v4

    move/from16 v22, v6

    move-object/from16 v28, v8

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v22

    move-object/from16 v4, v23

    move-object/from16 v8, v28

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v23, v4

    move-object/from16 v28, v8

    move/from16 v9, v16

    goto :goto_3

    :cond_7
    move-object/from16 v23, v4

    move-object/from16 v28, v8

    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "users"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sdp_hashedkek_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "users"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sdp_hashedkek_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/android/server/SdpManagerService$FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    nop

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v12, v7}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    move-object/from16 v29, v3

    invoke-static {v13, v7}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v6, v8, v3}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v0, v0, 0x1

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v6, v1, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v3, v13}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v14

    nop

    invoke-direct {v1, v14, v10}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v3, v0, 0x1

    iget-object v6, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    const/4 v6, 0x2

    invoke-direct {v1, v0, v6}, Lcom/android/server/SdpManagerService;->removeLegacyKeyPair(II)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PO adaptation - Successfully done at stage "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PO adaptation - Is sp enabled? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService;->enableSyntheticPassword(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService;->onLegacyProfileOwnerAdapted(I)V

    goto :goto_5

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PO adaptation - Failed at stage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v6, 0x1

    aput-object v13, v2, v6

    const/4 v4, 0x2

    aput-object v11, v2, v4

    const/4 v4, 0x3

    aput-object v12, v2, v4

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    if-nez v0, :cond_e

    move v3, v6

    nop

    :cond_e
    return v3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private adaptLegacyUserZero(I)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior to key migration, adapting legacy user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    move-object v3, v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_0

    const-string v6, "U0 adaptation - Failed due to no engine found"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v6, "U0 adaptation - Failed to get reset token"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v2

    if-nez v2, :cond_2

    const-string v6, "U0 adaptation - Failed to get master key"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "U0 adaptation - Failed to save ephemeral key"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/android/server/SdpManagerService;->removeLegacyKeyPair(II)Z

    const/4 v0, 0x1

    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result of adapting legacy user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILjava/lang/String;Ljava/lang/String;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v1

    :goto_0
    move-object v9, v1

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v10

    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v12

    const/16 v2, -0xe

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clean(I)V

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v8, v9, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->establish(Ljava/lang/String;[BI)J

    move-result-wide v13

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v8, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v15

    nop

    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v3

    move-object v6, v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    nop

    invoke-direct {v0, v13, v14, v12}, Lcom/android/server/SdpManagerService;->saveTokenHandleViaProtector(JI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    nop

    :goto_1
    move-object/from16 v18, v6

    goto :goto_2

    :cond_2
    nop

    invoke-direct {v0, v7, v6}, Lcom/android/server/SdpManagerService;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v1

    move/from16 v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    nop

    move-object/from16 v18, v6

    move/from16 v2, v16

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v2, v0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v17

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v7

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v1

    move v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    nop

    :cond_4
    :goto_2
    const/4 v1, 0x1

    if-eqz v2, :cond_5

    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add engine :: Failed with error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clean(I)V

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v4, v0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_3

    :cond_5
    move/from16 v5, p3

    move/from16 v6, p4

    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add engine - Sucessfully done with "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v3, v7}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpSessionKey"

    invoke-virtual {v3, v10, v4, v12}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpTokenHandle"

    invoke-virtual {v3, v11, v4, v12}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpResetToken"

    invoke-virtual {v3, v9, v4, v12}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    :cond_6
    :goto_3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    aput-object v10, v3, v1

    const/4 v1, 0x2

    aput-object v9, v3, v1

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    return v2
.end method

.method private addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x63

    return v0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserAdded(II[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add engine - failed to create engine due to native error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xb

    return v0

    :cond_1
    return v1
.end method

.method private assignEngineId(Ljava/lang/String;)I
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v1, 0x3e8

    const-string v2, "SdpManagerService"

    const-string v3, "custom engine. assign custom engine id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom engine : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", id assigned. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    return v0
.end method

.method private bootInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 10

    const/16 v0, -0x63

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boot - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    const-string v2, "SdpManagerService"

    const-string v3, "boot - [ Detected version : %d, Latest version : %d ]"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v2

    if-eq v2, v6, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SdpManagerService"

    const-string v3, "boot - Migration failed"

    invoke-static {v2, v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-direct {p0, p1, v9}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->generateAndSaveSessionKey(I)Z

    move-result v2

    const-string v3, "Boot - Prepare session key for engine %d [ res : %s ]"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const-string v3, "Boot - Engine %d boot completed! [ rc : %d ]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v0

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private bootNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    nop

    invoke-static {v0, v1}, Lcom/android/server/SdpManagerService;->nativeOnBoot(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootNative - Failed with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xb

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private cacheManagedCredential([BI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/SdpManagerService;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    return-void
.end method

.method private cacheManagedToken([BI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/SdpManagerService;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    return-void
.end method

.method private cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    monitor-enter p1

    nop

    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/server/SdpManagerService;->getSessionKeyViaProtector(I)[B

    move-result-object v2

    move-object v0, v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache - Session key not found for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/KeyProtector;->encryptFast([B[B)[B

    move-result-object v2

    move-object v1, v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache - Fast encryption failed with user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cache - Now %s is under secure management for user %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method private changeToken([BJ[BJI)Z
    .locals 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;

    move-result-object v0

    new-instance v11, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;

    move-object v3, v11

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/-$$Lambda$SdpManagerService$bxDtfNVv19l4CQDsY2gXj55oAHg;-><init>([BJ[BJI)V

    invoke-virtual {v0, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "SdpManagerService"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SdpManagerService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private checkSystemPermission()Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "SdpManagerService"

    const-string v1, "Require system permission."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred in pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkUserSecurity(I)V
    .locals 4

    const-string v0, "Check security - [ User ID : %d, SP enabled : %s, Has handle : %s, Has legacy credential : %s, Has legacy token : %s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isSyntheticPasswordEnabled(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasSyntheticPasswordHandle(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private clearCached(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p1

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "clear - Managed %s removed for user %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "clear - Managed %s not found for user %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearFailureCount(I)V
    .locals 1

    sget-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private clearManageCredentialIfRequired(I)V
    .locals 1

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearManagedCredential(I)V

    return-void
.end method

.method private clearManagedCredential(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/SdpManagerService;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method private clearManagedToken(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/SdpManagerService;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method private computeForPassword(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private computePasswordQuality(ILjava/lang/String;I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->computeForPassword(Ljava/lang/String;)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private deleteTokenInternal(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/android/server/SdpManagerService;->removeSpecificKeyViaProtector(Ljava/lang/String;I)Z

    move-result v0

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private doLegacyRecoveryIfNecessary(I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    add-int/lit8 v2, v1, -0x59

    if-lez v2, :cond_0

    sget v3, Lcom/sec/knox/container/security/Header;->LENGTH:I

    rem-int v3, v2, v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    add-int/lit8 v2, v1, -0x40

    if-lez v2, :cond_1

    sget v3, Lcom/sec/knox/container/security/Header;->LENGTH:I

    rem-int v3, v2, v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected ECMK length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/util/KeyManagementUtil;->recoverEcmkHeader(I)V

    :cond_2
    return-void
.end method

.method private doSyntheticPasswordFullMigration([BLjava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    if-eqz v9, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    move v11, v10

    move v12, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full sp migration ordered for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "token"

    const/4 v13, 0x0

    aput-object v2, v1, v13

    const/4 v14, 0x1

    aput-object p1, v1, v14

    const-string/jumbo v3, "password"

    const/4 v15, 0x2

    aput-object v3, v1, v15

    const/4 v3, 0x3

    aput-object v7, v1, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "order"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "info"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    aput-object v9, v1, v3

    invoke-static {v1}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    :cond_1
    sget-object v16, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {v0, v9}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrustedInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object/from16 v4, p1

    :goto_0
    move-object v6, v4

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "sp migration - Failed due to invalid token given"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    move-object/from16 v20, v1

    move-object v14, v3

    move-object/from16 v21, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_4

    :cond_3
    if-ne v8, v14, :cond_4

    move-object v2, v7

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    :goto_1
    move-object v5, v2

    invoke-virtual {v0, v5, v12, v8}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "sp migration - Failed in verification"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    move-object v14, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v1, v6, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setResetPasswordToken([BI)J

    move-result-wide v1

    iget-object v4, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    move-wide/from16 v18, v1

    move-object v1, v4

    move-object v2, v7

    move-object v14, v3

    move-wide/from16 v3, v18

    move-object/from16 v20, v5

    move-object v5, v6

    move-object/from16 v21, v6

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "sp migration - Failed to set password with token"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v1, v7, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "sp migration - Failed to get sdp effective key"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    :goto_2
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v2

    nop

    invoke-direct {v0, v2, v14, v12, v13}, Lcom/android/server/SdpManagerService;->generationalShiftInternal([B[BIZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "sp migration - Failed in generational shfit"

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyPwdWrappedMasterKey(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "sp migration - Failed to remove legacy credential"

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyTokenWrappedMasterKey(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "sp migration - Failed to remove legacy token"

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    :goto_3
    move-object/from16 v1, v16

    goto :goto_4

    :cond_a
    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    move-wide/from16 v4, v18

    invoke-static {v4, v5}, Lcom/sec/knox/container/security/BytesUtil;->longToBytes(J)[B

    move-result-object v6

    const-string v13, "SdpTokenHandle"

    invoke-virtual {v3, v6, v13, v12}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "sp migration - Failed to protect token handle"

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v16, v1

    :goto_4
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    :cond_c
    invoke-static {v14}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    const-string v3, "Result of sp full migration for user %d : %s"

    new-array v4, v15, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v1

    :cond_d
    :goto_5
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method private doSyntheticPasswordHalfMigration([BLjava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz v2, :cond_11

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    move v4, v3

    move v11, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Half sp migration ordered for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "token"

    const/4 v12, 0x0

    aput-object v6, v5, v12

    const/4 v13, 0x1

    aput-object p1, v5, v13

    const-string/jumbo v7, "password"

    const/4 v14, 0x2

    aput-object v7, v5, v14

    const/4 v7, 0x3

    aput-object p2, v5, v7

    const/4 v7, 0x4

    const-string/jumbo v9, "order"

    aput-object v9, v5, v7

    const/4 v7, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    const/4 v7, 0x6

    const-string/jumbo v9, "info"

    aput-object v9, v5, v7

    const/4 v7, 0x7

    aput-object v2, v5, v7

    invoke-static {v5}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {v0, v2}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrustedInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object/from16 v9, p1

    :goto_0
    move-object v6, v9

    if-ne v1, v13, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    if-ne v1, v14, :cond_4

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string/jumbo v9, "sp migration - Failed due to absent requisite"

    invoke-static {v9}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    move-object/from16 v13, p2

    move-object/from16 v17, v5

    move-object v14, v6

    move-object v12, v7

    :goto_1
    move-object/from16 v6, v16

    goto/16 :goto_5

    :cond_4
    if-ne v1, v13, :cond_5

    move-object/from16 v9, p2

    goto :goto_2

    :cond_5
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([B)V

    :goto_2
    move-object v10, v9

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "sp migration - Failed in verification"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    move-object/from16 v13, p2

    move-object v14, v6

    move-object v12, v9

    move-object/from16 v17, v10

    goto :goto_1

    :cond_6
    if-ne v1, v13, :cond_7

    move-object v5, v9

    move-object/from16 v8, p2

    move-object v7, v5

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V

    move-object v8, v5

    move-object v7, v6

    :goto_3
    iget-object v5, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v7, v11}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setResetPasswordToken([BI)J

    move-result-wide v5

    const-wide/16 v17, 0x0

    cmp-long v17, v5, v17

    if-nez v17, :cond_8

    const-string/jumbo v12, "sp migration - Failed to set reset token"

    invoke-static {v12}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v12, v5, v6, v11}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeResetPasswordToken(JI)Z

    nop

    move-object v14, v7

    move-object v13, v8

    move-object v12, v9

    move-object/from16 v17, v10

    goto :goto_4

    :cond_8
    iget-object v14, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    move-wide/from16 v19, v5

    move-object v5, v14

    move-object v6, v8

    move-object v14, v7

    move-object v13, v8

    move-wide/from16 v7, v19

    move-object v12, v9

    move-object v9, v14

    move-object/from16 v17, v10

    move v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "sp migration - Failed to set password with token"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v5, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v13, v11}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "sp migration - Failed to get sdp effective key"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    :goto_4
    move-object/from16 v6, v16

    goto :goto_5

    :cond_a
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v6

    nop

    const/4 v7, 0x0

    invoke-direct {v0, v6, v12, v11, v7}, Lcom/android/server/SdpManagerService;->generationalShiftInternal([B[BIZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "sp migration - Failed in generational shfit"

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const/4 v7, 0x1

    if-ne v1, v7, :cond_c

    iget-object v7, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v7, v11}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyPwdWrappedMasterKey(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    const/4 v7, 0x2

    if-ne v1, v7, :cond_e

    iget-object v7, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v7, v11}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyTokenWrappedMasterKey(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    const-string/jumbo v7, "sp migration - Failed to remove legacy stuff"

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    iget-object v7, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    move-wide/from16 v8, v19

    invoke-static {v8, v9}, Lcom/sec/knox/container/security/BytesUtil;->longToBytes(J)[B

    move-result-object v10

    const-string v1, "SdpTokenHandle"

    invoke-virtual {v7, v10, v1, v11}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "sp migration - Failed to protect token handle"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_f
    move-object v15, v5

    :goto_5
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v1, v11}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    :cond_10
    invoke-static {v12}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    return-object v15

    :cond_11
    :goto_6
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method private doSyntheticPasswordMigration(I)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP migration required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrusted(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    const-string v4, "Failed to get reset token"

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey([BII)[B

    move-result-object v4

    move-object v1, v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Failed to get master key"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/android/server/SdpManagerService;->setResetToken([BI)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Failed to set reset token"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getTokenHandle(I)J

    move-result-wide v6

    invoke-direct {p0, v1, v6, v7, p1}, Lcom/android/server/SdpManagerService;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "Failed to verify with reset token"

    invoke-static {v8}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v8

    nop

    invoke-virtual {p0, v8, v4, p1}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v9

    move v3, v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    nop

    :cond_4
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result of SP migration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v3
.end method

.method private doesEphemeralKeyExist(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpEphemeralKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private doesSpecificKeyExist(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private enableSyntheticPassword()Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->enableSyntheticPassword()V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enableSyntheticPassword(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->enableSyntheticPassword(I)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enrollInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v1, -0x6

    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2, v0, v1, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v6, 0x20

    invoke-virtual {v5, v0, v4, v2, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2, v0, v1, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    return v3

    :cond_4
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "enrollInternal :: Master key is not found in the map"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v2, -0x63

    return v2
.end method

.method private establish([BI)Z
    .locals 20

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Establish new engine for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static/range {p2 .. p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    return v12

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v12

    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, v13

    move v5, v2

    move v6, v2

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v0

    nop

    move-object/from16 v4, p1

    invoke-direct {v1, v3, v4}, Lcom/android/server/SdpManagerService;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "establish - Unexpected failure while native setup"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v14, v1, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v15, v1, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object/from16 v18, v3

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "establish - Unexpected failure while policy setup"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v5, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x1

    :goto_0
    const-string v0, "Result of engine establishment for user %d : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v11

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private generateAndSaveSessionKey(I)Z
    .locals 2

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    nop

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->saveSessionKeyViaProtector([BI)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    throw v1
.end method

.method private generateAndSaveSpecificKey(Ljava/lang/String;I)Z
    .locals 2

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/SdpManagerService;->saveSpecificKeyViaProtector([BLjava/lang/String;I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    throw v1
.end method

.method private generationalShiftInternal([B[BIZ)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p3}, Lcom/android/server/SdpManagerService;->getLegacyPwdWrappedMasterKeyPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->rewrapSdpKeys([B[BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p3, v2}, Lcom/android/server/SdpManagerService;->removeLegacyKeyPair(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private getCached(Ljava/util/Map;Ljava/lang/String;I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "I)[B"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    monitor-enter p1

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_0

    const-string/jumbo v3, "get - Managed %s not found for user %d"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    nop

    invoke-direct {p0, p3}, Lcom/android/server/SdpManagerService;->getSessionKeyViaProtector(I)[B

    move-result-object v3

    move-object v1, v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get - Session key not found for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    nop

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v2, v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "get - Empty managed %s found for user %d"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/KeyProtector;->decryptFast([B[B)[B

    move-result-object v3

    move-object v0, v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get - Fast decryption failed with user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "get - Managed %s given for user %d"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    return-object v0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getDeviceVersion()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v0, :cond_0

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get - engine info not found in map  for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private getEphemeralKeyViaProtector(I)[B
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpEphemeralKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private getFailureCount(I)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getLockSettings()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/ILockSettings;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getLockSettingsInternal()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/LockSettingsInternal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getManagedCredential(I)[B
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/SdpManagerService;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private getManagedProfileAlias(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getManagedToken(I)[B
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/SdpManagerService;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private getPackageManagerService()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/pm/PackageManagerService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackage :: Not found with caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackage :: found name for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getPadded([BI)[B
    .locals 3

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/server/SdpManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_1
    return-object v3
.end method

.method private getResetTokenViaProtector(I)[B
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v3, "SdpResetToken"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getResetTokenViaTrustedInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    move-object v3, v4

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    goto :goto_0

    :cond_1
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRstTokenFromTima :: entry not found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSessionKeyViaProtector(I)[B
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpSessionKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private getSpecificKeyViaProtector(Ljava/lang/String;IZ)[B
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/KeyProtector;->releaseMinor(Ljava/lang/String;I)[B

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getTokenHandleViaProtector(I)J
    .locals 7

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v5, "SdpTokenHandle"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/sec/knox/container/security/BytesUtil;->bytesToLong([B)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v5

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-wide v0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/server/SdpManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_1
    return-object v3
.end method

.method private getUserManagerInternal()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/os/UserManagerInternal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private handleCleanupUser(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->cancelLegacyResetTimeout(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->clearLegacyResetStatus(I)V

    return-void
.end method

.method private handleEmptyListenerRoll(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$ListenerRoll;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/SdpManagerService$ListenerRoll;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    return-void
.end method

.method private handleLockedBootCompleted(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Locked boot completed for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlock secure folder user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->unlockUser(I)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not ready to unlock secure folder user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    if-ltz p2, :cond_6

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "handlePackageRemoved - PackageName : %s, UserId : %d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "handlePackageRemoved - Device is not provisioned yet..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->readEngineList()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v6

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/SdpManagerService$FileUtil;->getEncUserDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SdpManagerService"

    const-string/jumbo v3, "handlePackageRemoved - Remove secure package dir : %s [ res : %b ]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-static {v4, p2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3200(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private handleStartUser(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->maybeLegacyUserZero(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start user - Handle legacy engine for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyChild(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->adaptLegacyUserZero(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isSyntheticPasswordEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->checkUserSecurity(I)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->doesEphemeralKeyExist(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start user - Damaged! SP recovery work required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->enableSyntheticPassword(I)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasSyntheticPasswordHandle(I)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start user - Pre-migration work required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->maybeLegacyDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->adaptLegacyDeviceOwner(I)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->maybeLegacyProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->adaptLegacyProfileOwner(I)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->maybeLegacyKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->adaptLegacyKnoxUser(I)Z

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start user - Weird! Unreachable or messed with user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start user - Tricked! SP recovery work required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->enableSyntheticPassword(I)Z

    :cond_8
    :goto_1
    return-void
.end method

.method private handleUnlockUser(I)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getResetTokenViaProtector(I)[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;

    invoke-direct {v4, v0, v1, v2, p1}, Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;-><init>(J[BI)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "User %d has been unlocked [ res : %b ]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private handleUserAdded(I)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerService"

    const-string v1, "User %d added"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "SdpManagerService"

    const-string/jumbo v3, "user added - Is user %d Bmode? %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SdpManagerService"

    const-string/jumbo v3, "user added - Is user %d managed profile? %s"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "SdpManagerService"

    const-string/jumbo v6, "user added - Has user %d sdp engine? %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    if-eqz v3, :cond_1

    move v5, v2

    nop

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleUserRemoved(I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    move-object v4, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_1

    const-string v0, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove user - Engine not found with id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SdpManagerService;->isLegacyWorkProfile(I)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    const-string v0, "SdpManagerService"

    const-string v6, "User %d has dependency with parent"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    invoke-direct {v1, v5}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    const/4 v6, 0x6

    invoke-direct {v1, v6, v5}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    :cond_2
    goto/16 :goto_4

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService;->isLegacyUserZero(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v5}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    if-eqz v7, :cond_7

    array-length v8, v7

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    if-eqz v10, :cond_6

    const-string v0, "SDPK_"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    :try_start_3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SdpManagerService"

    const-string v13, "Remove user - %s removed successfully"

    new-array v14, v3, [Ljava/lang/Object;

    const-string v15, "SDPK_"

    const-string v3, ""

    invoke-virtual {v10, v15, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v5

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v0, "SdpManagerService"

    const-string v3, "Remove user - Failed to remove %s..."

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const-string v13, "SDPK_"

    const-string v15, ""

    invoke-virtual {v10, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v5

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    const/16 v0, -0x63

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v6

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v7, v1, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v3, v7, v8, v9, v4}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v7

    const-string v0, "SdpManagerService"

    const-string v3, "Remove user - Policy removal with id %d successfully done? %s"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1400(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    invoke-direct {v1, v4}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    invoke-direct {v1, v6, v0}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v0

    const-string v3, "SdpManagerService"

    const-string v7, "Remove user - Native removal with id %d successfully done? %s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v5, "SdpEphemeralKey"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v5, "SdpTokenHandle"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v5, "SdpResetToken"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v5, "SdpSessionKey"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove user - Engine remove! "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private hasBiometricTypeTraced(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    const-string v4, "Biometrics detected for user %d [ Type : %d ]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Biometrics not detected for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method private hasLegacyChild(I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/SdpManagerService;->isLegacyWorkProfile(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found legacy child "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method private hasNoSecurity(I)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    const-string v2, "SdpManagerService"

    const-string v3, "Check security - [ User ID : %d, Quality : %d, None type? %s ]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v6, v7

    :goto_1
    return v6
.end method

.method private hasSyntheticPasswordHandle(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->hasSyntheticPasswordHandle(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isAccumulatedFailure(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getFailureCount(I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearFailureCount(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isBiometricLockEnabled(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDeviceOwnerUser(I)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDeviceProvisioned()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isFileBasedEncryption()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-string/jumbo v3, "ro.crypto.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isFingerprintLockscreen(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->isBiometricLockEnabled(II)Z

    move-result v0

    return v0
.end method

.method private isIrisLockscreen(I)Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->isBiometricLockEnabled(II)Z

    move-result v0

    return v0
.end method

.method private isKnoxEngine(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method

.method private isLegacyEncryptionUser(I)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isLegacyEncryption()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_0

    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a legacy encryption : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isLegacyUserZero(I)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isSecureUnlockRequired(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureUnlock :: Not a default engine... Skip secure unlock... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureUnlock :: User : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isAccumulatedFailure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Failure count has been fully accumulated...Secure unlock required!"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v3

    :cond_1
    if-nez p2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecureUnlock :: Lowest security level found...!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v4

    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: Quality for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_4

    const-string v1, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Very low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isFingerprintLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v1, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isIrisLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v1, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecureUnlock :: Not applicable... Skip secure unlock... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isSeparateProfileChallengeEnabled(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isSupportedDevice()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SdpManagerService"

    const-string v2, "Knox not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_SDP:Z

    if-nez v0, :cond_1

    const-string v0, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isSyntheticPasswordEnabled(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$changeToken$1([BJ[BJILcom/android/internal/widget/ILockSettings;)Ljava/lang/Boolean;
    .locals 8

    move-object v0, p7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/ILockSettings;->changeToken([BJ[BJI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkCredential$2(Ljava/lang/String;IILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p3, p0, p1, p2, v1}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method static synthetic lambda$clearLegacyResetStatus$5(ILandroid/os/UserManagerInternal;)Ljava/lang/Boolean;
    .locals 1

    nop

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/UserManagerInternal;->clearVolatiles(II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleUnlockUser$3(J[BILcom/android/internal/widget/LockSettingsInternal;)V
    .locals 3

    :try_start_0
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsInternal;->unlockUserWithToken(J[BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SdpManagerService"

    const-string v2, "Unexpected failure while unlock user with token"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onLegacyResetCredentialRequested$4(ILandroid/os/UserManagerInternal;)Ljava/lang/Boolean;
    .locals 1

    nop

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/UserManagerInternal;->setVolatiles(II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$verifyToken$0([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :try_start_0
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method private lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 2

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0xb

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    move v1, v0

    move v2, v1

    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lock :: Lock engine for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "lock :: Successfully done for user %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearManagedCredential(I)V

    goto :goto_0

    :cond_0
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "lock :: Failed to lock for user %d... [ rc : %d ]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method

.method private lockKeystore(I)V
    .locals 4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->lock(I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keystore has been locked for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " [ res : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private lockNative(II)I
    .locals 3

    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(II)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xb

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private maybeHalfLegacyVirtualUser(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isVirtualUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isSyntheticPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasSyntheticPasswordHandle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeLegacyDeviceOwner(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeLegacyKnoxUser(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeLegacyProfileOwner(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeLegacyUserZero(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isLegacyUserZero(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeLegacyVirtualUser(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isVirtualUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static native nativeMemGetSensitiveProcess()[I
.end method

.method static native nativeMemSetProcessSensitive(I)I
.end method

.method static native nativeOnBoot(II)I
.end method

.method static native nativeOnChangePassword(I[B[B)I
.end method

.method static native nativeOnDeviceLocked(II)I
.end method

.method static native nativeOnDeviceUnlocked(I[B)I
.end method

.method static native nativeOnMigration(IIII[B)I
.end method

.method static native nativeOnUserAdded(II[B)I
.end method

.method static native nativeOnUserRemoved(II)I
.end method

.method private notifyStateChange(II)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isLegacyWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SdpManagerService"

    const-string v1, "User %d has dependency with parent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/SdpManagerService;->quickMessage(III)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0, v4}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyUnlockFailure(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getFailureCount(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpManagerService;->setFailureCount(II)V

    return-void
.end method

.method private onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onBootPhase - Boot completed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onBootPhase - locksettgins service ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    return-void
.end method

.method private onCipherModeMigration(I)V
    .locals 5

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCipherModeMigration :: Inisde... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v0

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCipherModeMigration :: Detected cipher length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_0

    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "onCipherModeMigration :: Unexpected condition..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "onCipherModeMigration :: Unexpected condition..."

    invoke-static {v1, v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0x30

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isKnoxEngine(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "onCipherModeMigration :: Legacy header needed..."

    invoke-static {v1, v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->addLegacyHeader(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/SdpManagerService;->setSDPMigrating(IZ)V

    return-void

    :cond_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_3

    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "onCipherModeMigration :: Cipher already has maximum length..."

    invoke-static {v1, v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCipherModeMigration :: << DUMP >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->addLegacyHeader(II)V

    return-void
.end method

.method private onCleanupUser(I)V
    .locals 3

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up user - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    return-void
.end method

.method private onEmergencyStateChanged(I)V
    .locals 6

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency state got changed for the reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-ne v0, p1, :cond_2

    const-string v0, "Emergency mode has been disabled"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unlock secure folder user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/SdpManagerService;->unlockUser(I)V

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    const-string v0, "Emergency mode has been enabled"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v3, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v4}, Landroid/os/ISdpListener;->onEngineRemoved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v6, "Listener failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v4

    const-string v5, "SdpManagerService"

    const-string v6, "Listener dead"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onLegacyProfileOwnerAdapted(I)V
    .locals 9

    nop

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->boot(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "PO adapted - PO(%d) engine boot failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    const-string v5, "com.samsung.android.email.provider"

    const/16 v6, 0x1000

    invoke-virtual {v3, v5, v6, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    move-object v4, v5

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected exception while perform post-adaptation for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "PO adapted - PO(%d) failed to find a target application"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/databases/EmailProviderBody.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/android/server/EnterprisePartitionManager;->migrateSdpDb(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "PO adapted - PO(%d) failed to adjust sensitive db"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v7, "PO adapted - Everything is prepared for PO(%d) "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMigrationInternal :: MIGRATE from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    add-int/lit8 v2, v0, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SKIPPED"

    invoke-static {v0, v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "onMigrationInternal :: version 2 -> 3 not implemented (this is targeted for TMR/KMR)"

    invoke-static {v2, v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    add-int/lit8 v3, v0, 0x1

    :try_start_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "onMigrationInternal :: SKIPPED"

    invoke-static {v0, v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    :goto_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "onMigrationInternal :: version 3 -> 4)"

    invoke-static {v3, v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    add-int/lit8 v4, v0, 0x1

    :try_start_4
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v0, "SdpManagerService"

    const-string/jumbo v3, "onMigrationInternal :: SKIPPED"

    invoke-static {v0, v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_3
    :goto_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "onMigrationInternal :: version 4 -> 5)"

    invoke-static {v3, v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->onCipherModeMigration(I)V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    add-int/lit8 v4, v0, 0x1

    :try_start_6
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    monitor-exit v3

    move v0, v4

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_4
    :goto_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_7

    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "onMigrationInternal :: version 5 -> 6)"

    invoke-static {v3, v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v4

    if-eq v4, v2, :cond_5

    if-ne v4, v1, :cond_6

    :cond_5
    and-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v1, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    monitor-exit v3

    goto :goto_4

    :catchall_4
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    :cond_7
    :goto_4
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "onMigrationInternal :: DONE"

    invoke-static {v1, v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private onStartUser(I)V
    .locals 4

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isSyntheticPasswordEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting user - Enterprise user %d found but sp is disabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    return-void
.end method

.method private onStateChange(II)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SdpManagerService$ListenerRoll;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/SdpManagerService$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_0
    if-ltz v6, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/SdpManagerService$StateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/SdpManagerService$StateListener;->get()Landroid/os/ISdpListener;

    move-result-object v8

    if-eqz v8, :cond_0

    move v9, v3

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    move v5, v9

    if-eqz v9, :cond_1

    invoke-interface {v8, p2}, Landroid/os/ISdpListener;->onStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v8

    const-string v9, "SdpManagerService"

    const-string v10, "Listener might be dead..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    if-nez v5, :cond_2

    invoke-virtual {v7}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    :cond_2
    add-int/lit8 v6, v6, -0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SdpManagerService$ListenerRoll;

    invoke-virtual {v4}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I

    move-result v4

    :goto_4
    const-string v5, "SdpManagerService"

    const-string/jumbo v6, "onStateChange :: Engine Id : %d, State : %d, Roll Size : %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v3, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v4, p2}, Landroid/os/ISdpListener;->onStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v6, "Listener failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v4

    const-string v5, "SdpManagerService"

    const-string v6, "Listener dead"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onUnlockUser(I)V
    .locals 3

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private prepareSecureDataKey(I)V
    .locals 4

    const-string v0, "SdpSecureDataKey"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->doesSpecificKeyExist(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Generate secure data key for user %d [ res : %b ]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "SdpSecureDataKey"

    invoke-direct {p0, v3, p1}, Lcom/android/server/SdpManagerService;->generateAndSaveSpecificKey(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private quickMessage(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send a message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private quickMessage(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send a message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private quickMessage(III)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send a message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private quickMessage(ILandroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send a message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private quickMessageDelayed(ILjava/lang/Object;J)V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SdpManagerService$SdpHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SdpManagerService$SdpHandler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send a message delayed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private readEngineList()V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1600(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "read engine - [%s, %d] found in engine list"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v6, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read engine - Put "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    invoke-virtual {v7, v6}, Lcom/android/server/SdpServiceKeeper;->loadPolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    goto :goto_1

    :cond_1
    const-string v7, "SdpManagerService"

    const-string/jumbo v9, "read engine - Can\'t find engine info with [%s, %d]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "read engine - No any engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recordException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "Leave a trace of the exception...!"

    invoke-static {p1, v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method

.method private recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, -0x5

    return v0

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p2}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;-><init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Landroid/os/ISdpListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->setCaller(I)V

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to link to listener death"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private registerObserver()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/SdpManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$1;-><init>(Lcom/android/server/SdpManagerService;)V

    const-string v2, "SdpManagerService"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "SdpManagerService.receiver"

    const-string v2, "Broadcast receiver has been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mPackageEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "SdpManagerService.receiver"

    const-string v2, "Package event receiver has been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v1, v2}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    const-string v1, "SdpManagerService.receiver"

    const-string v2, "Container state receiver has been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->maybeLegacyVirtualUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$VirtualLockClient;->isSyntheticPasswordEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove :: Remove keys for legacy user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove :: Unexpected condition while remove user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->removeLegacyKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v2, "SdpEphemeralKey"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v2, "SdpSessionKey"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clean(I)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v3, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1400(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove :: successfully engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method private removeEngineNative(II)I
    .locals 3

    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserRemoved(II)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEngineNative :: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xb

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeEphemeralKeyViaProtector(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpEphemeralKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private removeLegacyKeyPair(II)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->removeLegacyKeyPairInternal(II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeLegacyKeyPairInternal(II)Z
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v2

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p1, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    move-result v6

    const-string v7, "Remove leagcy key pair for engine %d with type %s [ res : %s/%s ] "

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v1, v8, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_1
    const-string v2, "Legacy key not found for engine %d with type %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private removeLegacyKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 8

    if-nez p1, :cond_0

    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "remove keys - Invalid engine info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "remove keys - [ alias : %s, id : %d, uid : %d ]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    move v2, v6

    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/SdpManagerService;->removeLegacyKeyPairInternal(II)Z

    add-int/lit8 v6, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeResetTokenViaProtector(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpResetToken"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private removeSessionKeyViaProtector(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpSessionKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private removeSpecificKeyViaProtector(Ljava/lang/String;I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeTokenHandleViaProtector(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpTokenHandle"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    move v9, v8

    move v6, v9

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset password for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v6}, Lcom/android/server/SdpManagerService;->getLegacyTokenWrappedMasterKeyPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v6}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrusted(I)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-direct {v0, v6}, Lcom/android/server/SdpManagerService;->getResetTokenViaProtector(I)[B

    move-result-object v2

    :goto_0
    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v5, v2

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x2

    return v2

    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    return v2

    :cond_4
    const/4 v2, 0x0

    const/16 v3, -0x63

    iget-object v4, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v4, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->isSyntheticPasswordEnabled(I)Z

    move-result v4

    const/4 v15, 0x2

    const/16 v18, 0x0

    const/4 v12, 0x1

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v4, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->hasSyntheticPasswordHandle(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reset :: Reset password for sp-applied user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v6}, Lcom/android/server/SdpManagerService;->maybeLegacyVirtualUser(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "SdpManagerService"

    const-string/jumbo v10, "reset :: User %d compromised!"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v18

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v8

    move v8, v15

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v0, v6}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v6, v15}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "SdpManagerService"

    const-string/jumbo v14, "reset - Failed in legacy token verification"

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    nop

    move-object v14, v4

    move/from16 v24, v8

    move-object v4, v10

    move-object v1, v13

    move v8, v15

    goto :goto_2

    :cond_6
    move-object v14, v13

    move-object v4, v5

    invoke-direct {v0, v6}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v19

    iget-object v10, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v10, v4, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setResetPasswordToken([BI)J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    move-wide/from16 v21, v10

    move-object v10, v12

    move-object v11, v4

    move/from16 v24, v8

    move-object v1, v13

    const/4 v8, 0x1

    move-wide/from16 v12, v21

    move v8, v15

    move-wide/from16 v15, v19

    move/from16 v17, v6

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/SdpManagerService$VirtualLockClient;->changeToken([BJ[BJI)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "SdpManagerService"

    const-string/jumbo v11, "reset - Failed in legacy token replacement"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    move-wide/from16 v11, v21

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeToken(JI)Z

    goto :goto_2

    :cond_7
    move-wide/from16 v11, v21

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-direct {v0, v4, v6}, Lcom/android/server/SdpManagerService;->saveResetTokenViaProtector([BI)Z

    :cond_8
    invoke-direct {v0, v11, v12, v6}, Lcom/android/server/SdpManagerService;->saveTokenHandleViaProtector(JI)Z

    move-result v2

    :goto_2
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    goto/16 :goto_4

    :cond_9
    move/from16 v24, v8

    move v8, v15

    invoke-virtual {v0, v6}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_b
    move/from16 v24, v8

    move v8, v15

    const-string v1, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reset :: Reset password for sp-NOT-applied user "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v6}, Lcom/android/server/SdpManagerService;->maybeLegacyVirtualUser(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "legacy reset :: Under migration for legacy user "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, v6, v8}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v4

    const/4 v10, 0x0

    const/16 v3, -0xe

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v3, -0x2

    goto :goto_3

    :cond_c
    iget-object v11, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v11, v7, v5, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->establish(Ljava/lang/String;[BI)J

    move-result-wide v11

    iget-object v13, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v13, v7, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "SdpManagerService"

    const-string/jumbo v15, "legacy reset :: Failed to verify new credential"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v10

    invoke-virtual {v0, v10, v4, v6}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "SdpManagerService"

    const-string/jumbo v15, "legacy reset :: Failed in generational shift"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    iget-object v14, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v14, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyTokenWrappedMasterKey(I)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "SdpManagerService"

    const-string/jumbo v15, "legacy reset :: Failed to remove legacy key"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-direct {v0, v5, v6}, Lcom/android/server/SdpManagerService;->saveResetTokenViaProtector([BI)Z

    :cond_10
    invoke-direct {v0, v11, v12, v6}, Lcom/android/server/SdpManagerService;->saveTokenHandleViaProtector(JI)Z

    const-string v14, "SdpManagerService"

    const-string/jumbo v15, "legacy reset :: Migration successfully done!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_11

    iget-object v11, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v11, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    :cond_11
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v18

    const/4 v12, 0x1

    aput-object v4, v11, v12

    aput-object v10, v11, v8

    invoke-static {v11}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    nop

    move-object/from16 v23, v1

    move v10, v2

    move v11, v3

    goto :goto_5

    :cond_12
    const/4 v12, 0x1

    const-string v1, "SdpManagerService"

    const-string/jumbo v4, "reset :: User %d compromised!"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v18

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v10, v2

    move v11, v3

    move-object/from16 v23, p2

    :goto_5
    if-eqz v10, :cond_14

    if-eqz v11, :cond_14

    invoke-direct {v0, v6}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v12

    iget-object v1, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    move-object v2, v7

    move-wide v3, v12

    move-object v14, v5

    move v15, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v11, 0x0

    invoke-virtual {v0, v15}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "reset - Almost done... User %d legacy credential elminated : %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v18

    iget-object v4, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v4, v15}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyPwdWrappedMasterKey(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v0, v15}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "reset - Almost done... User %d legacy token elminated : %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v18

    iget-object v4, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v4, v15}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyTokenWrappedMasterKey(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_14
    move-object v14, v5

    move v15, v6

    :cond_15
    :goto_6
    return v11
.end method

.method private restoreMasterKeyIfRequired([BI)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/SdpManagerService;->isSyntheticPasswordEnabledSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check if restoration is required for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->hasNoSecurity(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->doesEphemeralKeyExist(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEphemeralKeyViaProtector(I)[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/SdpManagerService;->rewrapSdpKeys([B[BI)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->removeEphemeralKeyViaProtector(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "Restore master key for user %d [ Res : %b ]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    :cond_1
    return-void
.end method

.method private rewrapSdpKeys([B[BI)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rewrap - Failed to rewrap sdp keys due to invalid input"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    nop

    invoke-static {p3, p2, p1}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "rewrap - Failed to change password"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of rewrapping sdp keys : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v0
.end method

.method private saveEphemeralKeyViaProtector([BI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpEphemeralKey"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private saveResetTokenIntoTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private saveResetTokenViaProtector([BI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpResetToken"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private saveSessionKeyViaProtector([BI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpSessionKey"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private saveSpecificKeyViaProtector([BLjava/lang/String;I)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private saveTokenHandleViaProtector(JI)Z
    .locals 3

    invoke-static {p1, p2}, Lcom/sec/knox/container/security/BytesUtil;->longToBytes(J)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v2, "SdpTokenHandle"

    invoke-virtual {v1, v0, v2, p3}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v1

    return v1
.end method

.method private saveTokenInternal(ILjava/lang/String;[B)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private sendBroadcastForStateChange(III)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.SDP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendBroadcastAsUser(ACTION_SDP_STATE_CHANGED, state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.android.knox.intent.extra.SDP_ENGINE_ID"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.extra.SDP_ENGINE_STATE"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, -0x5

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->onStateChange(II)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    return v4
.end method

.method private setFailureCount(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z
    .locals 15

    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p6

    invoke-direct {v1, v13, v12, v14}, Lcom/android/server/SdpManagerService;->computePasswordQuality(ILjava/lang/String;I)I

    move-result v7

    :try_start_0
    iget-object v4, v1, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v5, v12

    move v6, v13

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredentialWithToken(Ljava/lang/String;IIJ[BI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    const/4 v1, -0x5

    return v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    move v2, v1

    move v3, v2

    invoke-static/range {p2 .. p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    return v4

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v4

    const/4 v5, -0x6

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    return v5

    :cond_2
    iget-object v4, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v4, v3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->isSyntheticPasswordEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set password :: Unexpected condition while check sp enabled for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->getManagedCredential(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set password :: Unexpected condition while derive managed creential for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iget-object v7, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    move-object/from16 v8, p2

    invoke-virtual {v7, v8, v5, v3}, Lcom/android/server/SdpManagerService$VirtualLockClient;->changePassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    move v9, v10

    goto :goto_0

    :cond_5
    const/16 v9, -0x63

    :goto_0
    const/4 v11, 0x1

    if-nez v9, :cond_6

    const-string v12, "SdpManagerService"

    const-string/jumbo v13, "set password :: Successfully done for user %d"

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v10

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-direct {v0, v12, v3}, Lcom/android/server/SdpManagerService;->cacheManagedCredential([BI)V

    goto :goto_1

    :cond_6
    const-string v12, "SdpManagerService"

    const-string/jumbo v13, "set password :: Failed to set password for user %d... [ rc : %d ]"

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v10

    aput-object v5, v6, v11

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    return v9
.end method

.method private setSeparateProfileChallengeEnabled(I)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 2

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x3

    return v0

    :cond_1
    nop

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0xb

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, p2, v1}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    move v5, v4

    move v6, v5

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v8, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->isSyntheticPasswordEnabled(I)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v8, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->hasSyntheticPasswordHandle(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "SdpManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unlock :: Unlock sp-applied user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v6}, Lcom/android/server/SdpManagerService;->maybeLegacyVirtualUser(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "SdpManagerService"

    const-string/jumbo v12, "unlock :: User %d compromised!"

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v8

    if-eqz v8, :cond_3

    nop

    invoke-virtual {v1, v3, v6, v11}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v8}, Ljava/lang/String;-><init>([B)V

    iget-object v13, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v13, v3, v12, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->changePassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "SdpManagerService"

    const-string/jumbo v14, "unlock :: Legacy credential for user %d completely replaced : %s"

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v10

    iget-object v9, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v9, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyPwdWrappedMasterKey(I)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v15, v11

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    const-string v9, "SdpManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unlock :: Failed in legacy verification with user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v6}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v3

    goto :goto_1

    :cond_4
    move-object v7, v3

    goto :goto_1

    :cond_5
    const-string v8, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unlock :: Unlock sp-NOT-applied user "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v6}, Lcom/android/server/SdpManagerService;->maybeLegacyVirtualUser(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-direct {v1, v9, v3, v11, v2}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordFullMigration([BLjava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-direct {v1, v9, v3, v11, v2}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordHalfMigration([BLjava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v8, "SdpManagerService"

    const-string/jumbo v9, "unlock :: User %d compromised!"

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    :cond_8
    move-object v8, v0

    const-string v0, "SdpManagerService"

    const-string/jumbo v9, "unlock :: Result of virtual user %d verification : %s"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v10

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v13, v11

    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x63

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_2
    move v9, v0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v0

    const-string v9, "SdpManagerService"

    const-string/jumbo v12, "unlock :: User %d throttled! Please try %d ms later..."

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v11

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v9

    nop

    invoke-direct {v1, v6, v9}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "SdpManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unlock :: Failed in native unlock with user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {v9}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    goto :goto_2

    :pswitch_2
    const/4 v0, -0x1

    goto :goto_2

    :goto_3
    if-nez v9, :cond_a

    iget-object v10, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {v1, v2, v0}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/SdpManagerService;->cacheManagedCredential([BI)V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_4
    return v9

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unlockNative(I[B)I
    .locals 3

    if-eqz p2, :cond_2

    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(I[B)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xb

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method private unlockViaTrustedInternal(Ljava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    const/4 v0, -0x5

    return v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    move v4, v3

    move v13, v4

    nop

    const/4 v0, 0x1

    move-object/from16 v14, p1

    move/from16 v15, p2

    invoke-direct {v1, v14, v15, v0}, Lcom/android/server/SdpManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;IZ)[B

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockViaTrusted :: Failed to get token for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    sget-object v16, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/16 v17, 0x0

    iget-object v5, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->isSyntheticPasswordEnabled(I)Z

    move-result v5

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v10, 0x2

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->hasSyntheticPasswordHandle(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockViaTrusted :: Unlock sp-applied user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v13}, Lcom/android/server/SdpManagerService;->maybeLegacyVirtualUser(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "SdpManagerService"

    const-string/jumbo v6, "unlockViaTrusted :: User %d compromised!"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v20

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkUserSecurity(I)V

    move/from16 v29, v3

    move v0, v10

    move-object v3, v12

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1, v13}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v12}, Ljava/lang/String;-><init>([B)V

    move-object v11, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    nop

    invoke-virtual {v1, v11, v13, v10}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v8

    move-object/from16 v22, v8

    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unlockViaTrusted :: Failed in legacy token verification with user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v29, v3

    move-object v8, v6

    move v0, v10

    move-object/from16 v23, v11

    move-object v3, v12

    move/from16 v5, v21

    goto/16 :goto_2

    :cond_3
    move-object v8, v12

    iget-object v5, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v8, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setResetPasswordToken([BI)J

    move-result-wide v5

    cmp-long v9, v5, v18

    if-nez v9, :cond_4

    const-string v9, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unlockViaTrusted :: Failed to set reset token for user "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v0, v5, v6, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeResetPasswordToken(JI)Z

    nop

    move/from16 v29, v3

    :goto_0
    move-object/from16 v23, v11

    move-object v3, v12

    move/from16 v5, v21

    const/4 v0, 0x2

    goto/16 :goto_2

    :cond_4
    move-object/from16 v9, v22

    invoke-direct {v1, v13}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v24

    cmp-long v0, v24, v18

    if-nez v0, :cond_5

    const-string v0, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockViaTrusted :: Failed to get old token handle for user "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v29, v3

    move-object v7, v9

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    move-wide v6, v5

    move-object v5, v0

    move-wide/from16 v26, v6

    move-object v6, v8

    move-object v0, v8

    move-wide/from16 v7, v26

    move-object/from16 v28, v0

    move-object/from16 v23, v11

    const/4 v0, 0x2

    move-wide/from16 v10, v24

    move/from16 v29, v3

    move-object v3, v12

    move v12, v13

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/SdpManagerService$VirtualLockClient;->changeToken([BJ[BJI)Z

    move-result v5

    move/from16 v21, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockViaTrusted :: Failed to change token for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v5, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->removeLegacyTokenWrappedMasterKey(I)Z

    move-result v5

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-wide/from16 v5, v26

    invoke-direct {v1, v5, v6, v13}, Lcom/android/server/SdpManagerService;->saveTokenHandleViaProtector(JI)Z

    :goto_1
    move-object v7, v9

    move/from16 v5, v21

    move-object/from16 v8, v28

    :goto_2
    const-string v6, "SdpManagerService"

    const-string/jumbo v9, "unlockViaTrusted :: Result of user %d token recovery : %s"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v20

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v5

    goto :goto_3

    :cond_7
    move/from16 v29, v3

    move v0, v10

    move-object v3, v12

    invoke-virtual {v1, v13}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v17, 0x1

    goto :goto_3

    :cond_8
    const/16 v17, 0x1

    goto :goto_3

    :cond_9
    move/from16 v29, v3

    move v0, v10

    move-object v3, v12

    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockViaTrusted :: Unlock sp-NOT-applied user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v13}, Lcom/android/server/SdpManagerService;->maybeLegacyVirtualUser(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v0, v2}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordHalfMigration([BLjava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v17

    move-object/from16 v16, v5

    goto :goto_3

    :cond_a
    const-string v5, "SdpManagerService"

    const-string/jumbo v6, "unlockViaTrusted :: User %d compromised!"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v20

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkUserSecurity(I)V

    :goto_3
    const/16 v5, -0x63

    if-eqz v17, :cond_d

    nop

    invoke-direct {v1, v13}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v6

    cmp-long v8, v6, v18

    if-nez v8, :cond_b

    const-string v8, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockViaTrusted :: Failed to get token handle for user"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_4
    goto :goto_5

    :cond_b
    iget-object v8, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v8, v3, v6, v7, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    goto :goto_4

    :goto_5
    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x0

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v10

    nop

    invoke-direct {v1, v13, v10}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "SdpManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unlockViaTrusted :: Failed in native unlock with user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v11, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-direct {v1, v2, v0}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    move v5, v9

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    move-object/from16 v8, v16

    :cond_e
    :goto_6
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "unlockViaTrusted :: Result of virtual user %d verification : %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v20

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v0, v10

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, -0x5

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    iget-object v5, v4, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v5}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateDeviceOwnerStatus()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->updateDeviceOwnerStatus(Z)V

    const-string v2, "SdpManagerService"

    const-string v3, "Device owner status updated! [ Enabled : %b ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDoEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;-><init>([BJI)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    const/4 p1, 0x0

    :cond_0
    return-void
.end method

.method private zeroOut([B)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 p1, 0x0

    return-void
.end method


# virtual methods
.method public addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/16 v1, -0xa

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-string v0, "SdpManagerService"

    const-string v2, "add engine :: calling by the process %d %d"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v4, v11

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add engine :: not supported to dualdar user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, -0x3

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    move/from16 v16, v7

    goto/16 :goto_2

    :cond_2
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add engine :: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v8, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v10}, Lcom/android/server/SdpManagerService;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v5}, Lcom/android/server/SdpManagerService;->assignEngineId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getFlags()I

    move-result v19

    const-string v1, "SdpManagerService"

    const-string v12, "add engine :: alias : %s, id : %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v11

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v8, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v15, 0x1

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object v11, v1

    move-object v12, v5

    move v13, v2

    move v14, v7

    move/from16 v16, v19

    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object v11, v1

    invoke-virtual {v11, v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    :try_start_1
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add engine :: not supported anymore to "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    move v12, v2

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    goto/16 :goto_1

    :cond_3
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0

    :cond_4
    :try_start_4
    invoke-virtual {v11}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_6

    :try_start_5
    invoke-static/range {p3 .. p3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_6

    :cond_5
    const/4 v0, -0x2

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v0

    :cond_6
    :try_start_6
    invoke-direct {v8, v5}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-direct {v8, v2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_7

    move v12, v2

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    goto :goto_0

    :cond_7
    move-object v1, v8

    move v12, v2

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v13, v4

    move v4, v9

    move-object v14, v5

    move v5, v10

    move-object v15, v6

    move-object/from16 v6, p2

    move/from16 v16, v7

    move-object/from16 v7, p3

    :try_start_7
    invoke-direct/range {v1 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v15

    return v0

    :cond_8
    move v12, v2

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    :goto_0
    const-string v0, "SdpManagerService"

    const-string v1, "add engine :: failed to create engine due to pre-existing engine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    monitor-exit v15

    return v0

    :catchall_1
    move-exception v0

    move v12, v2

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    :goto_1
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    :cond_9
    move/from16 v16, v7

    :goto_2
    const-string v1, "SdpManagerService"

    const-string v2, "add engine :: failed to create engine due to invalid parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public addEngineNative(II[B)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_3

    array-length v0, p3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnUserAdded(II[B)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: native failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: invalid cmk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public adjustSdpMinor(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flag adjustment - Current version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v4, "NULL"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    const-string v2, "SdpManagerService"

    const-string v3, "Flag adjustment - Flag adjusted to minor"

    invoke-static {v2, v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    const-string v2, "SdpManagerService"

    const-string v3, "Flag adjustment - Flag adjusted to mdfpp"

    invoke-static {v2, v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, -0x5

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v7, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result v0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public boot(I)I
    .locals 4

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boot - Engine info not found in map with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boot - Failed to find engine info with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x5

    return v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->bootInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    return v1
.end method

.method public cancelLegacyResetTimeout(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->removeMessages(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy reset timout canceled for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public changeCMKNative(I[B[B)I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    const-string v0, "changeCMKNative"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, -0x3

    if-nez p2, :cond_1

    return v0

    :cond_1
    if-eqz p3, :cond_4

    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCMKNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xb

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public clearEncPkgCache(ILjava/lang/String;)Z
    .locals 11

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const-string v2, "cache"

    aput-object v2, v8, v1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v9

    sget v5, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    const/4 v7, 0x1

    move-object v2, v9

    move v3, p1

    move-object v4, p2

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v10

    sget v5, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v2

    if-nez v10, :cond_1

    const-string v0, "SdpManagerService"

    const-string v3, "Failed to clear data part!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "SdpManagerService"

    const-string v3, "Failed to clear ext part!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v0
.end method

.method public clearEncPkgData(ILjava/lang/String;)Z
    .locals 11

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const-string v2, "/"

    aput-object v2, v8, v1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v9

    sget v5, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    const/4 v7, 0x0

    move-object v2, v9

    move v3, p1

    move-object v4, p2

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v10

    sget v5, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v2

    if-nez v10, :cond_1

    const-string v0, "SdpManagerService"

    const-string v3, "Failed to clear data part!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "SdpManagerService"

    const-string v3, "Failed to clear ext part!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v0
.end method

.method public clearLegacyResetStatus(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear legacy reset status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getUserManagerInternal()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$SdpManagerService$ZZ31w2ieHFYTouoh_bfa_YU9yIM;

    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$SdpManagerService$ZZ31w2ieHFYTouoh_bfa_YU9yIM;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unexpected failure while clear volatiles"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearManagedToken(I)V

    return-void
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PackageManagerService;->createEncAppData(Ljava/lang/String;I)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    const/16 v2, -0xb

    return v2
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "deleteToeknFromTrusted"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/16 v0, -0x63

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, -0x5

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v7, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result v0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doSyntheticPasswordFullMigration(Ljava/lang/String;III)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Full sp migration requested from user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v11, 0x0

    aput-object v1, v0, v11

    const/4 v12, 0x1

    aput-object p1, v0, v12

    const-string/jumbo v1, "type"

    const/4 v13, 0x2

    aput-object v1, v0, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "requestedQuality"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "userId"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_1
    const/4 v0, -0x1

    move/from16 v14, p2

    if-ne v14, v0, :cond_2

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_2
    const/4 v1, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    sget-object v16, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v3, 0x0

    iget-object v4, v9, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {v9, v10}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_3

    const-string v0, "SP migration - Failed due to no engine found"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SP migration - Available only for minor type"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    :goto_0
    move-object v0, v1

    move-object v12, v2

    :goto_1
    move-object/from16 v1, v16

    goto/16 :goto_6

    :cond_4
    nop

    invoke-direct {v9, v8}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrustedInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v0

    move-object v7, v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SP migration - Failed due to invalid token"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    move-object v0, v1

    move-object v12, v7

    goto :goto_1

    :cond_5
    nop

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {v9, v7, v0, v13}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey([BII)[B

    move-result-object v0

    move-object v6, v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SP migration - Failed to get legacy master key"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    :goto_2
    move-object v0, v6

    move-object v12, v7

    goto :goto_3

    :cond_6
    nop

    invoke-virtual {v9, v7, v10}, Lcom/android/server/SdpManagerService;->setResetToken([BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "SP migration - Failed to set reset token"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-direct {v9, v10}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v4

    nop

    move-object v1, v9

    move-object/from16 v2, p1

    move v3, v14

    move-wide/from16 v17, v4

    move-object v0, v6

    move-object v6, v7

    move-object v12, v7

    move/from16 v7, p3

    move-object/from16 v19, v8

    move v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/SdpManagerService;->setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "SP migration - Failed to set credential with token"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    :goto_3
    move-object/from16 v1, v16

    goto :goto_6

    :cond_8
    move-wide/from16 v1, v17

    invoke-direct {v9, v12, v1, v2, v10}, Lcom/android/server/SdpManagerService;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v4

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "SP migration - Failed to get sdp essential key"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    :goto_5
    move-object v15, v4

    goto/16 :goto_1

    :cond_a
    nop

    invoke-direct {v9, v12, v10}, Lcom/android/server/SdpManagerService;->saveResetTokenViaProtector([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "SP migration - Failed to save reset token"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_b
    nop

    invoke-virtual {v9, v4, v0, v10}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "SP migration - Failed to make generational shift"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_c
    nop

    invoke-direct {v9, v10, v13}, Lcom/android/server/SdpManagerService;->removeLegacyKeyPair(II)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "SP migration - Failed to remove legacy token"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v16, v3

    goto :goto_5

    :goto_6
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v0, v2, v11

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    const-string v2, "Result of sp full migration for user %d : %s"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v3, v19

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_7
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: Can\'t dump SDP from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SDP Engine List :"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v1, v2, :cond_3

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "Engine Id : %5d   User ID : %5d   Version : %d   State : %d   Flag : %10s ( %d )   Alias : %s"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v5

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x4

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SDP_MINOR"

    goto :goto_1

    :cond_2
    const-string v4, "SDP_MDFPP"

    :goto_1
    aput-object v4, v9, v3

    const/4 v3, 0x5

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x6

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Sanity of key pair :"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_5

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    const-string v8, "Engine Id : %5d - ( %5d %5d )"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    iget-object v10, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v11

    invoke-virtual {v10, v11, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v11

    invoke-virtual {v10, v11, v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    const-string v0, "Not Supported..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x5

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x7

    return v0

    :cond_2
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/SdpManagerService;->enrollInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exists(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x5

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    monitor-exit v1

    if-eqz v2, :cond_0

    const/4 v0, -0x4

    :cond_0
    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public generationalShift([B[BI)Z
    .locals 8

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generational Shift for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "newMasterKey"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string/jumbo v3, "oldMasterKey"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    aput-object p2, v0, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "userId"

    aput-object v5, v0, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/SdpManagerService;->generationalShiftInternal([B[BIZ)Z

    move-result v0

    const-string v3, "Result of sdp generational shift for user %d : %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 12

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "cache"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v3

    sget v6, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    invoke-virtual {v3, p1, p2, v6, v2}, Lcom/android/server/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v6

    sget v7, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual {v3, p1, p2, v7, v2}, Lcom/android/server/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v7

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    array-length v8, v6

    if-ne v8, v0, :cond_2

    array-length v8, v7

    if-eq v8, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, p2, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    aget-wide v8, v6, v4

    aget-wide v10, v6, v5

    sub-long/2addr v8, v10

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->dataSize:J

    aget-wide v8, v6, v5

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    aget-wide v8, v7, v4

    aget-wide v10, v7, v5

    sub-long/2addr v8, v10

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    aget-wide v4, v7, v5

    iput-wide v4, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "SdpManagerService"

    const-string v4, "Failed to get size info!!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLegacyMasterKey(Ljava/lang/String;II)[B
    .locals 3

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 p3, 0x2

    :cond_1
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v2, 0x20

    invoke-virtual {v0, p2, p1, p3, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v1

    nop

    :cond_2
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    return-object v1
.end method

.method public getLegacyMasterKey([BII)[B
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    throw v1
.end method

.method public getLegacyPwdWrappedMasterKeyPath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ECMK_PWD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegacyTokenWrappedMasterKeyPath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/SdpManagerService$FileUtil;->getUserSystemDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ECMK_MDM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxy()Lcom/android/server/SdpManagerService$SdpManagerProxy;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/SdpManagerService$SdpManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/server/SdpManagerService$SdpManagerProxy;-><init>(Lcom/android/server/SdpManagerService;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

    return-object v0
.end method

.method public getResetToken(I)[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getResetTokenViaProtector(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResetTokenMDM(I)[B
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get reset token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Need migration for using Synthetic Password"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordMigration(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed in SP migration for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrusted(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    move-object v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getResetToken(I)[B

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getResetTokenSafe(I)[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getManagedToken(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResetTokenViaTrusted(I)[B
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get - Can\'t find engine info with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    nop

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrustedInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v1

    move-object v0, v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get - Token not found from tima with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSecuredEscrowData(I)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get secured escrow data for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "spblob"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "%016x.%s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const-string/jumbo v10, "e0.bku"

    const/4 v12, 0x1

    aput-object v10, v7, v12

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v7, "%016x.%s"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v11

    const-string/jumbo v8, "p1.bku"

    aput-object v8, v10, v12

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SdpManagerService$FileUtil;->read(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/SdpManagerService$FileUtil;->read(Ljava/lang/String;)[B

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v11

    aput-object v8, v9, v12

    invoke-static {v9}, Lcom/android/server/SdpManagerService$SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    return-object v2

    :cond_1
    const-string v9, "SdpSecureDataKey"

    invoke-direct {v0, v9, v1, v11}, Lcom/android/server/SdpManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;IZ)[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v6, Ljava/lang/Exception;

    const-string v10, "Unexpected failure while get secure data key"

    invoke-direct {v6, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/SDPLog;->e(Ljava/lang/Exception;)V

    return-object v2

    :cond_2
    iget-object v2, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v2, v9, v7}, Lcom/android/server/KeyProtector;->decryptFast([B[B)[B

    move-result-object v2

    iget-object v10, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v10, v9, v8}, Lcom/android/server/KeyProtector;->decryptFast([B[B)[B

    move-result-object v10

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v14, "e0"

    invoke-virtual {v13, v14, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v14, "p1"

    invoke-virtual {v13, v14, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v14, "Secured escrow data for user %d prepared [ Res : %b/%b ]"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v15, v12

    invoke-static {v10}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v15, v6

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v13
.end method

.method public getSupportedSDKVersion()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v0, 0x3ff3333333333333L    # 1.2

    :cond_0
    return-wide v0
.end method

.method public getTokenHandle(I)J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleDeviceOwnerChanged()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    const-string v2, "Device Owner has been changed!"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const-string v2, "Confirming Device Owner information [ Owner : %s, User : %d ]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->enableSyntheticPassword(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Unexpected condition while enable sp per user"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_3

    const-string v4, "Unexpected condition as per DO\' already has engine"

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcom/android/server/SdpManagerService$KnoxUtil;->setDoEnabled(Z)V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwner(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/SdpManagerService;->welcomeNewUser(I)V

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_4
    :goto_0
    const-string v2, "Unexpected condition while deal with device owner"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public hasLegacyCredential(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getLegacyPwdWrappedMasterKeyPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hasLegacyToken(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getLegacyTokenWrappedMasterKeyPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDefaultPathUser(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isFileBasedEncryption()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isLegacyEncryptionUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEnterpriseUser(I)Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isDeviceOwnerUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not an enterprise user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public isLegacyContainerUser(I)Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Identified as legacy type container user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public isLegacyEncryption(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isLegacyEncryptionUser(I)Z

    move-result v0

    return v0
.end method

.method public isLegacyWorkProfile(I)Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    nop

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isFileBasedEncryption()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isLegacyEncryptionUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isDeviceOwnerUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Identified as legacy work profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public isLicensed()I
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, -0x9

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isSDPEnabled(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isSdpMigrating(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "isSdpMigrating"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMigrating()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSdpPackage(ILjava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->readEngineList()V

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isSdpSupported()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    return v2

    :cond_2
    :goto_0
    return v3
.end method

.method public isSyntheticPasswordEnabledSystemUser(I)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabledForSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lock(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: Can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x5

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lock :: Not supported anymore to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x63

    return v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "lock :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x7

    return v0

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public migrate(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public onBiometricsAuthenticated(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerService"

    const-string v1, "User %d has been authenticated with biometrics"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    :cond_1
    return-void
.end method

.method public onChangePassword(I[B[B)Z
    .locals 6

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "onChangePassword"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/16 v0, 0x20

    invoke-direct {p0, p2, v0}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v2

    invoke-direct {p0, p3, v0}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to handle onChangePassword [persona : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    const/4 v1, 0x1

    return v1
.end method

.method public onDeviceLocked(I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceLocked : User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isDeviceOwnerUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    :cond_1
    return-void
.end method

.method public onDeviceOwnerLocked(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerService"

    const-string v1, "User %d has been locked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onDeviceUnlocked(I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceUnLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SdpManagerService"

    const-string v1, "User has no lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLegacyResetCredentialFinalized(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy finalized for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->clearLegacyResetStatus(I)V

    return-void
.end method

.method public onLegacyResetCredentialRequested([BII)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy requested for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed due to invalid token"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->cacheManagedToken([BI)V

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getUserManagerInternal()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$SdpManagerService$xLLUIk_wcln9LiVWE1zijJu1-kY;

    invoke-direct {v1, p2}, Lcom/android/server/-$$Lambda$SdpManagerService$xLLUIk_wcln9LiVWE1zijJu1-kY;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unexpected failure while set volatiles"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-gtz p3, :cond_2

    const-wide/32 v0, 0xdbba0

    goto :goto_0

    :cond_2
    int-to-long v0, p3

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    const/16 v2, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/SdpManagerService;->quickMessageDelayed(ILjava/lang/Object;J)V

    const-string v2, "Ready to reset credential!"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onLegacyResetCredentialStarted(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy started for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->cancelLegacyResetTimeout(I)V

    return-void
.end method

.method public onMasterKeyAcquired([BI)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->restoreMasterKeyIfRequired([BI)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key acquired for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "masterKey"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v3, "userId"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const/16 v0, -0x63

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find engine info for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Failed to unlock due to invalid key"

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v3

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Engine already unlocked for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/server/SdpManagerService;->unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    :goto_0
    if-nez v0, :cond_6

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->cacheManagedCredential([BI)V

    invoke-direct {p0, p2, v4}, Lcom/android/server/SdpManagerService;->notifyStateChange(II)V

    :cond_7
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    const-string v5, "Result of sdp unlock : %s [ rc : %d ]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onMasterKeyDerivationRequired(II)V
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isLegacyUserZero(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key derivation required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issued order is identified as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, -0x63

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find engine info for user "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x4

    if-eq p2, v2, :cond_4

    const/16 v7, 0x8

    if-eq p2, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected condition while check order "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    nop

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getManagedCredential(I)[B

    move-result-object v7

    move-object v0, v7

    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Managed credential not found for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    nop

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEphemeralKeyViaProtector(I)[B

    move-result-object v7

    move-object v0, v7

    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ephemeral key not found for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "masterKey"

    aput-object v8, v7, v5

    aput-object v0, v7, v4

    const-string/jumbo v8, "userId"

    aput-object v8, v7, v6

    const/4 v8, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string/jumbo v8, "order"

    aput-object v8, v7, v2

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v7}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Failed to unlock due to invalid key"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v2

    if-ne v2, v6, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine already unlocked for user "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v0, v3}, Lcom/android/server/SdpManagerService;->unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    :goto_1
    if-nez v1, :cond_8

    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->cacheManagedCredential([BI)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/SdpManagerService;->notifyStateChange(II)V

    :cond_9
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    const-string v3, "Result of sdp unlock : %s [ rc : %d ]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onMasterKeyDeserted([BI)V
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key deserted with user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "masterKey"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const-string v0, "User %d has none type credential"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    return-void
.end method

.method public onMasterKeyEvictionRequired(I)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isLegacyUserZero(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key eviction required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "userId"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const/16 v1, -0x63

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find engine info for user "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v2

    if-ne v2, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Engine already locked for user "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_4

    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearManageCredentialIfRequired(I)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/SdpManagerService;->notifyStateChange(II)V

    :cond_5
    const-string v5, "Result of sdp lock : %s [ rc : %d ]"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onMasterKeyInitialized([BI)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sdp essential key initialized for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "masterKey"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    nop

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEphemeralKeyViaProtector(I)[B

    move-result-object v4

    move-object v3, v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Failed to get ephemeral key"

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    nop

    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/SdpManagerService;->rewrapSdpKeys([B[BI)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Failed to rewrap sdp essential key"

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    nop

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->removeEphemeralKeyViaProtector(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Failed to delete ephemeral key"

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialType(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    const-string v4, "User %d has none type credential"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    :cond_5
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of key adjustment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onMigration(IZ[B)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    const-string v0, "SdpManagerService"

    const-string v3, "can\'t find SDP INFO xml. Migration failed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SdpManagerService"

    const-string v3, "Migration failed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v0, "SdpManagerService"

    const-string v1, "Migration OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPasswordChanged(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Password has been changed for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    const-string v4, "credentialType"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string/jumbo v3, "savedCredential"

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/4 v3, 0x5

    aput-object p3, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "userId"

    aput-object v5, v0, v3

    const/4 v3, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "Engine is locked after changing to none type."

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p4, v4}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    invoke-direct {p0, p4}, Lcom/android/server/SdpManagerService;->doesEphemeralKeyExist(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "According as user %d password changed, remove ephemeral key"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/android/server/SdpManagerService;->removeEphemeralKeyViaProtector(I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public prepareEncUserDirectory(I)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare enc directory for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const-string v0, "Result of preparing enc directory [ res : %s ]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-static {v3, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3100(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public registerClient(ILandroid/os/ISdpListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SdpManagerService$ListenerRoll;

    if-nez v2, :cond_2

    new-instance v3, Lcom/android/server/SdpManagerService$ListenerRoll;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/SdpManagerService$ListenerRoll;-><init>(Lcom/android/server/SdpManagerService$1;)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v3, Lcom/android/server/SdpManagerService$StateListener;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/SdpManagerService$StateListener;-><init>(Lcom/android/server/SdpManagerService;ILandroid/os/ISdpListener;)V

    invoke-virtual {v3}, Lcom/android/server/SdpManagerService$StateListener;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/server/SdpManagerService$ListenerRoll;->enroll(Lcom/android/server/SdpManagerService$StateListener;)Z

    move-result v4

    move v0, v4

    :cond_3
    const-string v4, "SdpManagerService"

    const-string/jumbo v5, "registerClient :: Engine Id = %d, Roll Size = %d, Result = %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :goto_0
    return-void
.end method

.method public registerListener(Ljava/lang/String;Landroid/os/ISdpListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, -0x5

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1, p2}, Lcom/android/server/SdpManagerService;->registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeEngine(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "removeEngine :: no engine found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove :: Not supported anymore to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x63

    return v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "remove :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x7

    return v0

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeLegacyToken(I)Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove token - Can\'t find engine info with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove token - Failed to remove token from tima for engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpManagerService;->removeLegacyKeyPair(II)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset :: Can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x5

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset :: Not supported anymore to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x63

    return v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "reset :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x7

    return v0

    :cond_3
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/SdpManagerService;->resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public saveResetTokenSafe([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->cacheManagedToken([BI)V

    return-void
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "saveTokenIntoTrusted"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/16 v0, -0x63

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/SdpManagerService;->saveSpecificKeyViaProtector([BLjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, -0x63

    :goto_0
    move v0, v4

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    return v0

    :cond_2
    :goto_1
    const/4 v1, -0x3

    return v1
.end method

.method public secureEscrowData(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secure escrow data for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "spblob"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "%016x.%s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const-string/jumbo v9, "e0"

    const/4 v11, 0x1

    aput-object v9, v6, v11

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v6, "%016x.%s"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v9, v10

    const-string/jumbo v7, "p1"

    aput-object v7, v9, v11

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/SdpManagerService$FileUtil;->read(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SdpManagerService$FileUtil;->read(Ljava/lang/String;)[B

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v10

    aput-object v7, v8, v11

    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-void

    :cond_2
    const-string v8, "SdpSecureDataKey"

    invoke-direct {v0, v8, v1, v10}, Lcom/android/server/SdpManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;IZ)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v5, Ljava/lang/Exception;

    const-string v9, "Unexpected failure while get secure data key"

    invoke-direct {v5, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/SDPLog;->e(Ljava/lang/Exception;)V

    return-void

    :cond_3
    iget-object v9, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v9, v8, v6}, Lcom/android/server/KeyProtector;->encryptFast([B[B)[B

    move-result-object v9

    iget-object v12, v0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v12, v8, v7}, Lcom/android/server/KeyProtector;->encryptFast([B[B)[B

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".bku"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/android/server/SdpManagerService$FileUtil;->write(Ljava/lang/String;[B)Z

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".bku"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/android/server/SdpManagerService$FileUtil;->write(Ljava/lang/String;[B)Z

    move-result v14

    const-string v15, "Escrow data for user %d got secured [ Res : %b/%b ]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v10

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v11

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v5, v11

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    const-string v6, "Escrow data doesn\'t exist [ %b/%b ]"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v11

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setEnforcePasswordChange(I)V
    .locals 0

    return-void
.end method

.method public setLockCredentialViaProtector(Ljava/lang/String;III)Z
    .locals 17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return v10

    :cond_0
    invoke-virtual {v8, v9}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v10

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set credential via trusted domain for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    aput-object v1, v0, v10

    const/4 v11, 0x1

    aput-object p1, v0, v11

    const-string v1, "credentialType"

    const/4 v12, 0x2

    aput-object v1, v0, v12

    const/4 v1, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "requestedQuality"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v13, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v14

    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-nez v0, :cond_2

    const-string v0, "Failed to get token handle"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {v8, v9}, Lcom/android/server/SdpManagerService;->getResetTokenViaProtector(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Failed to get reset token"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v8

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide v3, v14

    move-object v5, v7

    move/from16 v6, p3

    move-object v11, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/SdpManagerService;->setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z

    move-result v13

    invoke-static {v11}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    :goto_0
    const-string v0, "Result of setting credential via protector for user %d : [ res : %s ]"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v13
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set password :: Can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x5

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set password :: Not supported anymore to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x63

    return v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "set password :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x7

    return v0

    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/android/server/SdpManagerService;->setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setResetToken([BI)Z
    .locals 9

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set reset token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "token"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v3, "userId"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v5, v6, p2}, Lcom/android/server/SdpManagerService;->saveTokenHandleViaProtector(JI)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v5, v6, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "Unexpected exception while set reset token"

    invoke-static {v2, v1}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of set reset token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v0

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setSDPMigrating(IZ)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "setSDPMigrating"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setIsMigrating(Z)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSDPMigrating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdpManagerService"

    const-string v1, "SdpManagerService ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "systemReady"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SdpManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/SdpManagerService$SdpHandler;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpHandler;-><init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    const-string v1, "SdpManagerService"

    const-string v2, "Sending message MSG_SYSTEM_READY to handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->quickMessage(I)V

    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "systemReady done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlock :: Can\'t find engine info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlock :: Not supported anymore to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x63

    return v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "unlock :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x7

    return v0

    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unlockUser(I)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/SdpManagerService;->quickMessageDelayed(ILjava/lang/Object;J)V

    return-void
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    const-string/jumbo v0, "unlockViaTrusted"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockViaTrusted :: Can\'t find engine info with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x5

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    const/4 v2, -0x7

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SdpManagerService"

    const-string/jumbo v3, "unlockViaTrusted :: Permission denied to invoke engine control API"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/SdpManagerService;->unlockViaTrustedInternal(Ljava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v3

    return v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterClient(ILandroid/os/ISdpListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SdpManagerService$ListenerRoll;

    if-nez v2, :cond_2

    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "unregisterClient :: Already cleared..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/SdpManagerService$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SdpManagerService$StateListener;

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SdpManagerService$ListenerRoll;

    invoke-virtual {v3}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I

    move-result v3

    :goto_2
    const-string v5, "SdpManagerService"

    const-string/jumbo v6, "unregisterClient :: Engine Id = %d, Roll Size = %d, Result = %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_6
    :goto_3
    return-void
.end method

.method public unregisterListener(Ljava/lang/String;Landroid/os/ISdpListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xa

    return v0

    :cond_0
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, -0x5

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1, p2}, Lcom/android/server/SdpManagerService;->unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "verify :: Deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x63

    return v0
.end method

.method public welcomeNewUser(I)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Welcome new user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v1

    nop

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->enableSyntheticPassword(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Welcome - Failed to enalbe sp"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    nop

    invoke-direct {p0, v1, p1}, Lcom/android/server/SdpManagerService;->establish([BI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Welcome - Failed to create new engine"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    nop

    invoke-direct {p0, v1, p1}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Welcome - Failed to safekeep sdp ephemeral key"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    nop

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->generateAndSaveSessionKey(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Welcome - Failed to prepare session key"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    const-string v2, "Result of welcoming new user %d : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

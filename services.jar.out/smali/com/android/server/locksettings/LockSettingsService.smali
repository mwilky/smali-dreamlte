.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$VirtualLock;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ACTION_DUMP_SYNTHETIC_PASSWORD:Ljava/lang/String; = "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

.field private static final ALLOW_FAIL_COUNT:Ljava/lang/String; = "allowfailcount"

.field private static final CLIENT_NAME:Ljava/lang/String; = "clientname"

.field private static final DEBUG:Z = false

.field private static final DEVICE_SUPPORT_KNOX_SDP:Z = true

.field private static final DUMP:Z

.field private static final EMAIL_ADDRESS:Ljava/lang/String; = "emailaddress"

.field private static final ENABLE_EMERGENCY_CALL:Ljava/lang/String; = "enableemergencycall"

.field private static final ENCRYPTED_PASSWORD_ENABLED_BY_DEFAULT:I = 0x0

.field private static final EXTRA_CREDENTIAL:Ljava/lang/String; = "cred"

.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final EXTRA_USERID:Ljava/lang/String; = "urid"

.field private static final FLAG_ENTERPRISEID_SELECTED:Ljava/lang/String; = "lockscreen.enterpriseidentity_selected"

.field private static final LOCKED:Ljava/lang/String; = "locked"

.field private static final LOCK_TIME:Ljava/lang/String; = "locktime"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NULL_USER:Landroid/content/pm/UserInfo;

.field private static final PERMANENT_BLOCK_COUNT:Ljava/lang/String; = "permanentblockcount"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PHONE_NUMBER:Ljava/lang/String; = "phonenumber"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final REMOTE_LOCK_INTENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field private static final REMOTE_LOCK_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.REMOTELOCK"

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final SKIP_PIN_CONTAINER:Ljava/lang/String; = "skippin"

.field private static final SYNTHETIC_PASSWORD_ENABLED_BY_DEFAULT:I = 0x1

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final TAG_SDP:Ljava/lang/String; = "LockSettingsService.SDP"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/IRemoteLockMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field private final mEpManager:Lcom/android/server/locksettings/EncryptedPasswordManager;

.field private mFaceRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mFirstCallToVold:Z

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field protected final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field private mIrisRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeForPasswordCheck:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPassword:Ljava/lang/String;

.field private final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field private mRemoteCallback:Landroid/os/IRemoteCallback;

.field private mSdpManagerService:Lcom/android/server/SdpManagerService;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private mSpCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;",
            ">;"
        }
    .end annotation
.end field

.field private mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

.field private final mSpDumpReceiver:Landroid/content/BroadcastReceiver;

.field private final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->DUMP:Z

    new-instance v0, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->NULL_USER:Landroid/content/pm/UserInfo;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const-string/jumbo v3, "lockscreen.password_type"

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-string/jumbo v5, "lockscreen.password_salt"

    const-string/jumbo v6, "lockscreen.disabled"

    const-string/jumbo v7, "lockscreen.options"

    const-string/jumbo v8, "lockscreen.biometric_weak_fallback"

    const-string/jumbo v9, "lockscreen.biometricweakeverchosen"

    const-string/jumbo v10, "lockscreen.power_button_instantly_locks"

    const-string/jumbo v11, "lockscreen.passwordhistory"

    const-string/jumbo v12, "lock_pattern_autolock"

    const-string/jumbo v13, "lock_biometric_weak_flags"

    const-string/jumbo v14, "lock_pattern_visible_pattern"

    const-string/jumbo v15, "lock_pattern_tactile_feedback_enabled"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v0, "lockscreen.password_salt"

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const-string/jumbo v2, "lockscreen.password_type"

    const-string/jumbo v3, "lockscreen.profilechallenge"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    const-string/jumbo v2, "lock_pattern_visible_pattern"

    const-string/jumbo v3, "lockscreen.power_button_instantly_locks"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f2
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDumpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$6;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$6;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFaceRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$7;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$7;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mIrisRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    new-instance v0, Lcom/android/server/locksettings/EncryptedPasswordManager;

    invoke-direct {v0}, Lcom/android/server/locksettings/EncryptedPasswordManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEpManager:Lcom/android/server/locksettings/EncryptedPasswordManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STARTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsService;->DUMP:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDumpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordDump;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/locksettings/SyntheticPasswordDump;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    nop

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    invoke-static {v1, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/LockSettingsService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSecurityStatus(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasNoneTypeCredential(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordPerUserLocked(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/locksettings/LockSettingsService;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isLegacyContainerUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordDump;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialPerUserLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordPerUserLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/locksettings/LockSettingsService;I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/locksettings/LockSettingsService;[BLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doSelfRecovery([BLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/locksettings/LockSettingsService;[BI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;IJ[BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    return v0
.end method

.method private activateEscrowTokenForDualDAR(JI[BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private activateEscrowTokensForDualDAR(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILjava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, p2, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingToken(IJ)[B

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v4

    move v10, v4

    if-eqz v10, :cond_0

    move-object v4, p0

    move-wide v5, v2

    move v7, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokenForDualDAR(JI[BLjava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addEscrowToken([BI)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add escrow token for user "

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

    const-string/jumbo v1, "userId"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->addEscrowToken([BI)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLocked()V

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordPerUserLocked(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    move-object v1, v2

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v2

    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->restoreEscrowDataIfNeededLocked(I)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BI)J

    move-result-wide v2

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, p2, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingToken(IJ)[B

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v4

    move v10, v4

    if-eqz v10, :cond_6

    const/4 v9, 0x0

    move-object v4, p0

    move-wide v5, v2

    move v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokenForDualDAR(JI[BLjava/lang/String;)V

    :cond_6
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addUserKeyAuth(I[B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->getChangedStorageSecretIfDualDAR(I[B)[B

    move-result-object v4

    move-object p3, v4

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private checkLockMaterialsTraced(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "Check accessor - UID : %d, PID : %d, WHO : %s"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getProcessName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const-string v2, "Check requisites - Given : %s, Saved : %s, Unified : %s, Type : %d, User : %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Empty"

    goto :goto_0

    :cond_0
    const-string v5, "Hidden"

    :goto_0
    aput-object v5, v4, v6

    invoke-static {p3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Empty"

    goto :goto_1

    :cond_1
    const-string v5, "Hidden"

    :goto_1
    aput-object v5, v4, v7

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Yes"

    goto :goto_2

    :cond_2
    const-string v5, "No"

    :goto_2
    aput-object v5, v4, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private final checkPasswordHavePermission(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "28251513"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_2
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cleanupAbnormalState()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_4

    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    const-wide/32 v8, 0x20000

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    const-wide/32 v8, 0x30000

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    const-wide/32 v8, 0x40000

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    const-wide/32 v8, 0x50000

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    const-wide/32 v8, 0x60000

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    const-wide/32 v8, 0x80000

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    const-wide/32 v8, 0x70000

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v8, 0x10000

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_2

    :cond_2
    const-wide/32 v8, 0x10001

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v1, "LockSettingsService"

    const-string/jumbo v2, "migrated : if no password saved, clear lock type."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearUserKeyProtection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private computePasswordQuality(ILjava/lang/String;I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->quality:I

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

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private createSelfRecoveryRunnable([BLjava/lang/String;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Lcom/android/server/locksettings/LockSettingsService;[BLjava/lang/String;I)V

    return-object v0
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LockSettingsService"

    const-string v3, "Virtual user can have escrow token"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LockSettingsService"

    const-string v3, "Managed profile can have escrow token"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "LockSettingsService"

    const-string v4, "Corp-owned device can have escrow token"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "LockSettingsService"

    const-string v4, "User with profile owner can have escrow token"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LockSettingsService"

    const-string v4, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    :try_start_5
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_5
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "LockSettingsService"

    const-string v4, "User with knox admin can have escrow token"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6
    :try_start_7
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling escrow token on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private doPostVerification(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    nop

    :cond_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->createSelfRecoveryRunnable([BLjava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private doSelfRecovery([BLjava/lang/String;I)V
    .locals 8

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialPerUserLocked(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Generational shift failure detected with user %d subject to self-recovery"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v3, p1

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Self-recovery - Failed due to invalid master key"

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPxq7nth5H4JH9DfL2OtC8Fv-p0;

    invoke-direct {v5, p2, p3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPxq7nth5H4JH9DfL2OtC8Fv-p0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Self-Recovery - Failed due to invalid legacy key"

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v3

    move-object v5, v0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Ju8V6r7lJ806PnEcjWmw2j26_Z0;

    invoke-direct {v7, v4, v5, p3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Ju8V6r7lJ806PnEcjWmw2j26_Z0;-><init>([B[BI)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Self-recovery - Failed in generational shift"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "Self-recovery - Successfully done!"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$3KC84r4JQWw1fBap71_0O1Jx1JQ;

    invoke-direct {v7, v3, p3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$3KC84r4JQWw1fBap71_0O1Jx1JQ;-><init>([BI)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    return-void
.end method

.method private doSyntheticPasswordFullMigration(Ljava/lang/String;III)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify and migrate credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "credential"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "credentialType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "requestedQuality"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Qvalj5Y8GP_vZ4HfpHRNXx-dnTY;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Qvalj5Y8GP_vZ4HfpHRNXx-dnTY;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of sp verified migration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Make sure to give correct input"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doSyntheticPasswordFullMigrationAsync(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify and migrate credential for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "credential"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "credentialType"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "requestedQuality"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "userId"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$nyn5TSZpVXFrgm0b9-Ng7FroyjI;

    invoke-direct {v3, p1, p3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$nyn5TSZpVXFrgm0b9-Ng7FroyjI;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    move-object v1, v3

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9Yu2HSLbhvLowDAqd-rZvRO7c2s;

    invoke-direct {v4, v2, p3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9Yu2HSLbhvLowDAqd-rZvRO7c2s;-><init>([BI)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "credential"

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->copy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "requestedQuality"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$AnJvbFLWq0GndL0TZwT2UlZg9wE;->INSTANCE:Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$AnJvbFLWq0GndL0TZwT2UlZg9wE;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$OlBeA2-9nXQEXSepMTJ88X5FYqQ;

    invoke-direct {v5, v3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$OlBeA2-9nXQEXSepMTJ88X5FYqQ;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "sp full migration - Failed in verification due to invalid credential"

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$5psPggStx4p7bOnWrsLXgrP6PzA;

    invoke-direct {v3, p1, p2, v0, p3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$5psPggStx4p7bOnWrsLXgrP6PzA;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of sp verified migration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v1

    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Make sure to give correct input"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v11, v0, v1

    const-string v3, "credentialType"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string/jumbo v3, "userId"

    const/4 v4, 0x4

    aput-object v3, v0, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static/range {p6 .. p6}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    move-object v1, v11

    move v2, v12

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move v6, v13

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, -0x270f

    if-ne v13, v0, :cond_1

    iget-object v3, v10, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "LockSettingsService"

    const-string v1, "FRP credential can only be verified prior to provisioning."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_1
    const/4 v3, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    invoke-direct {v10, v8, v13}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, v12, v11, v13}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(ILjava/lang/String;I)V

    :cond_2
    return-object v8

    :cond_3
    invoke-direct {v10, v13}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {v10, v13}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {v10, v13}, Lcom/android/server/locksettings/LockSettingsService;->isSecureFolderUser(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {v10, v11, v12, v13}, Lcom/android/server/locksettings/LockSettingsService;->doSyntheticPasswordFullMigrationAsync(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_4
    invoke-direct {v10, v11, v12, v13}, Lcom/android/server/locksettings/LockSettingsService;->migrateToSyntheticPasswordBased(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-direct {v10, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-object v0

    :cond_5
    if-ne v13, v0, :cond_6

    const-string v0, "LockSettingsService"

    const-string v1, "Unexpected FRP credential type, should be SP based."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_6
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v13}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v14

    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-eq v0, v12, :cond_7

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " passed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_7
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v0, v1, :cond_8

    iget-boolean v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    move v15, v1

    if-eqz v15, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    :cond_9
    move-object v3, v11

    :goto_3
    move-object v0, v10

    move v1, v13

    move-object v2, v14

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {v10, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v13}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    if-eqz v15, :cond_b

    iget v6, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/high16 v8, 0x10000

    move-object v4, v10

    move-object v5, v11

    move-object v7, v3

    move v9, v13

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    :cond_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpLocksettings()V
    .locals 2

    const-string/jumbo v0, "running"

    const-string/jumbo v1, "init.svc.bugreportsa"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockSettingsService"

    const-string v1, "Running bugreport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "start bugreport - lockSettingsService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dumpstate.options"

    const-string v1, "bugreport_locksettings_error"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "bugreportsa"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enableEncryptedPasswordLocked(I)V
    .locals 3

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable EP for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "enable-ep"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private enableSyntheticPasswordLocked()V
    .locals 4

    const-string/jumbo v0, "enable-sp"

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private enableSyntheticPasswordPerUserLocked(I)V
    .locals 3

    const-string/jumbo v0, "enable-sp-per-user"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable sp for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private enforceShell()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    nop

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_0
    if-nez p3, :cond_1

    nop

    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-interface {v3, p4, p1, v1, v2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v3}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .locals 4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LockSettingsService"

    const-string v2, "Managed profile got unlocked, will unlock its keystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsService"

    const-string v3, "Failed to unlock child profile"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private fetchOuterLayerKey(I)[B
    .locals 3

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "fetchOuterLayerKey()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object v0

    const-string v1, "LockSettingsService"

    const-string/jumbo v2, "fetchOuterLayerKey Finished"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private finalizeLegacyResetRequest(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$WArZDnv6XcVIfwXpfGCM8YInhD8;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$WArZDnv6XcVIfwXpfGCM8YInhD8;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private fixateNewestUserKeyAuth(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
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

.method private getChangedStorageSecretIfDualDAR(I[B)[B
    .locals 2

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "getChangedStorageSecretIfDualDAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->fetchOuterLayerKey(I)[B

    move-result-object p2

    return-object p2
.end method

.method private getCurrentCredTypeAndQualityForDualDar(ILjava/lang/String;)[I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "lockscreen.password_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->readFrpPasswordQuality()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .locals 6

    const-string v0, "Unidentified"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->safe(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getSdpManagerService()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/SdpManagerService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityStatus(I)Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled(I)Z

    move-result v5

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCredential(I)Z

    move-result v7

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v8

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyToken(I)Z

    move-result v9

    const-string/jumbo v10, "{ Managed? %s, MP? %s, SP? %s, Handle? %s, Credential? %s, Legacy credential? %s, Legacy token? %s }"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v2

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v1, 0x6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSyntheticPasswordHandleLocked(I)J
    .locals 3

    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_0
    return-object v3
.end method

.method private hasLegacyCredential(I)Z
    .locals 2

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$5qSUIfJtzyYJ3jw6OZrxnnAELnA;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$5qSUIfJtzyYJ3jw6OZrxnnAELnA;-><init>(I)V

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

    return v0
.end method

.method private hasLegacyToken(I)Z
    .locals 2

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$SBr7KC0Z3Vog0yBHCq7I0GqB8MA;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$SBr7KC0Z3Vog0yBHCq7I0GqB8MA;-><init>(I)V

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

    return v0
.end method

.method private hasNoneTypeCredential(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private isCallerShell()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isCredentialRequiredToUnlockUser(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser()Z

    move-result v0

    return v0
.end method

.method private isEncryptedPasswordBasedCredentialLocked(I)Z
    .locals 7

    const-string/jumbo v0, "enable-ep"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    const-string v0, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EP for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEnterpriseUser(I)Z
    .locals 2

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$dVdQYmEHQ_kdhEo7iIalGqcYYjc;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$dVdQYmEHQ_kdhEo7iIalGqcYYjc;-><init>(I)V

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

    return v0
.end method

.method private isEscrowTokenActive(JI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

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

.method private isKeystoreLocked(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    return v0
.end method

.method private isKnoxAdminActivated(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getEdmService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresentAsUser(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsService"

    const-string v3, "Failed talking with enterprise policy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isLegacyContainerUser(I)Z
    .locals 2

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$ga_-2XCtkUFhoyiTg2_NHdr4uxE;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$ga_-2XCtkUFhoyiTg2_NHdr4uxE;-><init>(I)V

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

    return v0
.end method

.method private isLegacyResetRequested(I)Z
    .locals 1

    nop

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isLegacyResetCredentialRequested()Z

    move-result v0

    return v0
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSecureFolderUser(I)Z
    .locals 1

    nop

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    return v0
.end method

.method private isSpCachedLocked(I)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, -0x270f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v3

    const-string/jumbo v0, "enable-sp"

    const-wide/16 v5, 0x1

    invoke-virtual {p0, v0, v5, v6, v1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    cmp-long v0, v3, v7

    if-eqz v0, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1

    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialPerUserLocked(I)Z

    move-result v0

    return v0
.end method

.method private isSyntheticPasswordBasedCredentialPerUserLocked(I)Z
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    const-string/jumbo v3, "enable-sp-per-user"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    cmp-long v3, v1, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    return v0
.end method

.method private isUserSecure(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit v0

    return v3

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCredential(I)Z

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

.method static synthetic lambda$doSelfRecovery$13(Ljava/lang/String;ILcom/android/server/SdpManagerService;)[B
    .locals 1

    nop

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$doSelfRecovery$14([B[BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$doSelfRecovery$15([BILcom/android/server/SdpManagerService;)V
    .locals 0

    nop

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyAcquired([BI)V

    return-void
.end method

.method static synthetic lambda$doSyntheticPasswordFullMigration$16(Ljava/lang/String;IIILcom/android/server/SdpManagerService;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1

    nop

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordFullMigration(Ljava/lang/String;III)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$doSyntheticPasswordFullMigrationAsync$17(Ljava/lang/String;ILcom/android/server/SdpManagerService;)[B
    .locals 1

    nop

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$doSyntheticPasswordFullMigrationAsync$18([BILcom/android/server/SdpManagerService;)V
    .locals 0

    nop

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyAcquired([BI)V

    return-void
.end method

.method static synthetic lambda$doSyntheticPasswordFullMigrationAsync$19(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpManagerProxy;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService;->getProxy()Lcom/android/server/SdpManagerService$SdpManagerProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$doSyntheticPasswordFullMigrationAsync$20(Landroid/os/Bundle;Lcom/android/server/SdpManagerService$SdpManagerProxy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/server/SdpManagerService$SdpManagerProxy;->sendMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$doSyntheticPasswordFullMigrationAsync$21(Ljava/lang/String;IIILcom/android/server/SdpManagerService;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1

    nop

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordFullMigration(Ljava/lang/String;III)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$finalizeLegacyResetRequest$6(ILcom/android/server/SdpManagerService;)V
    .locals 0

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onLegacyResetCredentialFinalized(I)V

    return-void
.end method

.method static synthetic lambda$hasLegacyCredential$26(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$hasLegacyToken$27(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isEnterpriseUser$3(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isLegacyContainerUser$4(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->isLegacyContainerUser(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$migrateToSyntheticPasswordBased$22(Ljava/lang/String;Lcom/android/server/SdpManagerService;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$migrateToSyntheticPasswordBased$23(Ljava/lang/String;ILcom/android/server/SdpManagerService;)[B
    .locals 1

    nop

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$migrateToSyntheticPasswordBased$24([B[BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$migrateToSyntheticPasswordBasedInternal$25([BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->setResetToken([BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$notifyActivePasswordMetricsAvailable$1(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method public static synthetic lambda$notifyPasswordChanged$2(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordDeserted$12(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/SdpManagerService;)V
    .locals 1

    nop

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyDeserted([BI)V

    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordInitialized$10(ILcom/android/server/SdpManagerService;)V
    .locals 0

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->secureEscrowData(I)V

    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordInitialized$9(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/SdpManagerService;)V
    .locals 1

    nop

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyInitialized([BI)V

    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordRewrapped$8(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/SdpManagerService;)V
    .locals 0

    nop

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->onPasswordChanged(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordVerified$11([BILcom/android/server/SdpManagerService;)V
    .locals 0

    nop

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyAcquired([BI)V

    return-void
.end method

.method static synthetic lambda$prepareLegacyResetRequest$5(ILcom/android/server/SdpManagerService;)V
    .locals 0

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onLegacyResetCredentialStarted(I)V

    return-void
.end method

.method static synthetic lambda$restoreEscrowDataIfNeededLocked$29(ILcom/android/server/SdpManagerService;)Landroid/os/Bundle;
    .locals 1

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getSecuredEscrowData(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$30(ILcom/android/server/SdpManagerService;)[B
    .locals 1

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getResetTokenSafe(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$31([BILcom/android/server/SdpManagerService;)[B
    .locals 1

    nop

    const/4 v0, 0x2

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$32([BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->setResetToken([BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$33(ILcom/android/server/SdpManagerService;)Ljava/lang/Long;
    .locals 2

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getTokenHandle(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$34([B[BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$35([BILcom/android/server/SdpManagerService;)V
    .locals 0

    nop

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->saveResetTokenSafe([BI)V

    return-void
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$36(ILcom/android/server/SdpManagerService;)Ljava/lang/Long;
    .locals 2

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getTokenHandle(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$37(ILcom/android/server/SdpManagerService;)[B
    .locals 1

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getResetTokenSafe(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setSecureFolderLockCredential$7(Ljava/lang/String;IIILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    nop

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->setLockCredentialViaProtector(Ljava/lang/String;III)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$tryRemoveUserFromSpCacheLater$28(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldCacheSpForUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing SP from cache for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$unlockUser$0(Landroid/content/pm/UserInfo;Lcom/android/server/SdpManagerService;)V
    .locals 1

    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Lcom/android/server/SdpManagerService;->unlockUser(I)V

    return-void
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;Z)V

    :cond_1
    return-void
.end method

.method private migrateFrpCredential()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    :try_start_0
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private migrateOldData()V
    .locals 18

    move-object/from16 v1, p0

    const-string/jumbo v0, "migrated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v7, v8, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "migrated"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "LockSettingsService"

    const-string v5, "Migrated lock settings to new location"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "migrated_user_specific"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    move v0, v3

    :goto_1
    move v9, v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v11, "lock_screen_owner_info"

    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-virtual {v1, v0, v12, v10}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "lock_screen_owner_info"

    const-string v13, ""

    invoke-static {v7, v0, v13, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    move-object v13, v0

    const-wide/16 v14, 0x1

    :try_start_0
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    move/from16 v16, v3

    :goto_2
    const-string/jumbo v6, "lock_screen_owner_info_enabled"

    if-eqz v16, :cond_5

    move-wide v4, v14

    goto :goto_3

    :cond_5
    const-wide/16 v4, 0x0

    :goto_3
    invoke-virtual {v1, v6, v4, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "lock_screen_owner_info_enabled"

    invoke-virtual {v1, v4, v14, v15, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_6
    :goto_4
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v7, v0, v3, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v0, v9, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "migrated_user_specific"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "LockSettingsService"

    const-string v4, "Migrated per-user lock settings to new location"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string/jumbo v0, "migrated_biometric_weak"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move v4, v3

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v9

    const-string/jumbo v6, "lockscreen.password_type_alternate"

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v11

    const-wide/32 v6, 0x8000

    cmp-long v6, v9, v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, v11, v12, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_9
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    const-string/jumbo v4, "migrated_biometric_weak"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "LockSettingsService"

    const-string v5, "Migrated biometric weak to use the fallback instead"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v0, "migrated_lockscreen_disabled"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v5, v3

    :goto_6
    if-ge v5, v4, :cond_d

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v7

    if-eqz v7, :cond_c

    add-int/lit8 v6, v6, 0x1

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    const/4 v5, 0x1

    if-le v6, v5, :cond_f

    move v5, v3

    :goto_7
    if-ge v5, v4, :cond_f

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    const-string/jumbo v5, "migrated_lockscreen_disabled"

    const-string/jumbo v7, "true"

    invoke-virtual {v1, v5, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v5, "LockSettingsService"

    const-string v7, "Migrated lockscreen disabled flag"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->cleanupAbnormalState()V

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    move v0, v3

    :goto_8
    move v5, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_15

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "lockscreen.password_type"

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v0, v8, v9, v7}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v10

    cmp-long v0, v10, v8

    const-wide/32 v12, 0x50000

    if-nez v0, :cond_11

    const-string v0, "LockSettingsService"

    const-string v7, "Migrated tied profile lock type"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "lockscreen.password_type"

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0, v12, v13, v7}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_9

    :cond_11
    cmp-long v0, v10, v12

    if-eqz v0, :cond_13

    const-string v0, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid tied profile lock type: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    const-wide/16 v8, 0x0

    :cond_13
    :goto_9
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_encrypt_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v7, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v7, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_14
    goto :goto_a

    :catch_1
    move-exception v0

    const-string v7, "LockSettingsService"

    const-string v10, "Unable to remove tied profile key"

    invoke-static {v7, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_8

    :cond_15
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v5, "migrated_wear_lockscreen_disabled"

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move v5, v3

    :goto_b
    if-ge v5, v2, :cond_16

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v7, "lockscreen.disabled"

    invoke-virtual {v1, v7, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_16
    const-string/jumbo v5, "migrated_wear_lockscreen_disabled"

    const-string/jumbo v6, "true"

    invoke-virtual {v1, v5, v6, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "LockSettingsService"

    const-string v5, "Migrated lockscreen_disabled for Wear devices"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method private migrateOldDataAfterSystemReady()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "migrated_frp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    const-string/jumbo v0, "migrated_frp"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    const-string v0, "LockSettingsService"

    const-string v1, "Migrated migrated_frp."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "Unable to migrateOldDataAfterSystemReady"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private migrateToSyntheticPasswordBased(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-eqz v1, :cond_4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verify and migrate credential for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "credential"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v7, "credentialType"

    const/4 v8, 0x2

    aput-object v7, v4, v8

    const/4 v7, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    const/4 v7, 0x4

    const-string/jumbo v9, "userId"

    aput-object v9, v4, v7

    const/4 v7, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    invoke-static {v4}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v13

    new-instance v14, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0IYtFxeYwQgCV-8VjBiIEnk20PU;

    invoke-direct {v14, v12}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0IYtFxeYwQgCV-8VjBiIEnk20PU;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v13, :cond_0

    const-string/jumbo v14, "sp migration - Can\'t find engine info"

    invoke-static {v14}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v15

    new-instance v5, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$yngKc1GqHiXxX2VjFbDMjVnFC-U;

    invoke-direct {v5, v1, v3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$yngKc1GqHiXxX2VjFbDMjVnFC-U;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, [B

    if-nez v10, :cond_1

    const-string/jumbo v5, "sp migration - Failed in verification due to invalid credential"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v11, v10

    invoke-static {v10, v6}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "sp migration - Failed to unlock keystore. No option but to reset"

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/security/KeyStore;->onUserRemoved(I)V

    :cond_2
    invoke-direct {v0, v11, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->migrateToSyntheticPasswordBasedInternal([BLjava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v5

    move-object v9, v5

    move-object v12, v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v13

    new-instance v14, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;

    invoke-direct {v14, v5, v12, v3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hs10qWw5spvcRVyP9rpijHvH9Mk;-><init>([B[BI)V

    invoke-virtual {v13, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "Unexpected failure while perform generational shift"

    invoke-static {v13}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_3
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v10, v5, v6

    const/4 v6, 0x1

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result of sp verified migration  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v4

    :cond_4
    new-instance v4, Landroid/os/RemoteException;

    const-string v5, "Make sure to give correct input"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private migrateToSyntheticPasswordBasedInternal([BLjava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    :try_start_0
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sp migration - Detected credential quaility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$nB_iaTI1mLxoUTA5UjMJsDxQP4g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v15, p1

    :try_start_1
    invoke-direct {v2, v15, v11}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$nB_iaTI1mLxoUTA5UjMJsDxQP4g;-><init>([BI)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sp migration - Failed to set reset token"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne v10, v1, :cond_1

    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;I)V

    move-object/from16 v8, p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v10, v1, :cond_2

    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x0

    move-object/from16 v8, p2

    invoke-virtual {v1, v8, v2, v0, v11}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v16, 0x0

    move-object v1, v9

    move-object v2, v8

    move v3, v10

    move v7, v11

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    move-object v12, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v15, p1

    :goto_1
    :try_start_2
    const-string v1, "Unexpected exception while perform sp migration"

    invoke-static {v1, v0}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v12

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$QBoYkqRgslYmc5oBM_ZZV6ktQWg;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$QBoYkqRgslYmc5oBM_ZZV6ktQWg;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyPasswordChanged(I)V
    .locals 4

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$uLUdo5pAFhnR0hn-L5FUgWTjl70;

    invoke-direct {v3, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$uLUdo5pAFhnR0hn-L5FUgWTjl70;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private notifyPasswordPolicyOneLockChanged(ZI)V
    .locals 1

    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->notifyPasswordPolicyOneLockChanged(ZI)V

    :cond_0
    return-void
.end method

.method private notifySeparateProfileChallengeChanged(I)V
    .locals 1

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    :cond_0
    return-void
.end method

.method private onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .locals 4

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching SP for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {v2, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "Failed to pass primary user secret to AuthSecret HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onPassword2Auth(ILjava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "onPassword2Auth()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is not DualDAR eligible. so no need to verify DualDAR Passwords"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/ddar/DualDARController;->onPassword2Auth(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "LockSettingsService"

    const-string v2, "Authentication Failure by dual dar client"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    :cond_1
    const-string v1, "LockSettingsService"

    const-string/jumbo v2, "onPassword2Auth completed sucessfully"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-static {p1, v1}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/ddar/fsm/Event;)Z

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method private onPassword2Change(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "onPassword2Change()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not DualDAR eligible."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/ddar/DualDARController;->onPassword2Change(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "LockSettingsService"

    const-string v2, "Authentication Change Failure by dual dar client"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    const-string v2, "LockSettingsService"

    const-string v3, "Authentication Change to DualDAR Client Successful"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private onSyntheticPasswordDeserted(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP deserted - Unexpected condition while desert sp with user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$XQLvQzkdrIq8nNEG5UvYbxWuRCU;

    invoke-direct {v1, p1, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$XQLvQzkdrIq8nNEG5UvYbxWuRCU;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SP Initialized - Unexpected condition after sp initialization with user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$nAbEwq5VQPKXVX1gYzhnembcpK8;

    invoke-direct {v1, p1, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$nAbEwq5VQPKXVX1gYzhnembcpK8;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "SP has been initialized for system"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "enable-sp-for-system"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$GbGVolK8QSKUjZ5wLRcxLgpRxZc;

    invoke-direct {v1, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$GbGVolK8QSKUjZ5wLRcxLgpRxZc;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Z5VuEhXpmcrb0e6p-QDXParQp38;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$MY5ZoiCmvsUqXSITdBEuSgksrlw;

    invoke-direct {v2, v0, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$MY5ZoiCmvsUqXSITdBEuSgksrlw;-><init>([BI)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSpCachedLocked(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

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
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SP Verified - Unexpected condition after sp verification with user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private performDualDARPasswordChange(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "performDualDARPasswordChange "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private prepareLegacyResetRequest(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$iApCzTDyI12OsvK2DL-UlnxabJg;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$iApCzTDyI12OsvK2DL-UlnxabJg;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private readFrpPasswordQuality()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    return v0
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .locals 2

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_1

    const/high16 v1, 0x30000

    if-eq p1, v1, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq p1, v1, :cond_0

    return p1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private removeBiometrics(I)V
    .locals 11

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeBiometrics() : start | userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "removeBiometrics() : SemBioFaceManager.remove start"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setActiveUser(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/bio/face/SemBioFace;

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mFaceRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    goto :goto_1

    :cond_1
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "removeBiometrics() : faceList is empty."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v0

    move v10, p1

    invoke-virtual/range {v4 .. v10}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LockSettingsService"

    const-string/jumbo v4, "removeBiometrics() : removeFingerprint Success"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v2, "LockSettingsService"

    const-string/jumbo v4, "removeBiometrics() : removeFingerprint Fail"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v1

    nop

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "LockSettingsService"

    const-string/jumbo v4, "removeBiometrics() : SemIrisManager.remove start"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->setActiveUser(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/iris/Iris;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mIrisRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    invoke-virtual {v0, v2, p1, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V

    goto :goto_3

    :cond_5
    const-string v2, "LockSettingsService"

    const-string/jumbo v4, "removeBiometrics() : irisList is empty."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v3, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    :cond_6
    return-void
.end method

.method private removeEscrowToken(JI)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "LockSettingsService"

    const-string v3, "Cannot remove password handle"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    monitor-exit v0

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    monitor-exit v0

    return v3

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeKeystoreProfileKey(I)V
    .locals 4

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile_key_name_encrypt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile_key_name_decrypt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove keystore profile key for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private removeUser(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "unable to clear GK secure user id"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    :cond_2
    return-void
.end method

.method private restoreEscrowDataIfNeededLocked(I)V
    .locals 7

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$ileStN9rAHW6mDWyI4UcJQ5trb4;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$ileStN9rAHW6mDWyI4UcJQ5trb4;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string/jumbo v1, "e0"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "p1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData([B[BI)V

    :cond_4
    const-string v3, "Escrow data for user %d got restored [ Res : %b ]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v6, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static secretFromCredential(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "Android FBE credential hash"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private setEncryptedUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEncryptedUserKeyProtection: without auth and key, user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void

    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null response verifying a credential we just set"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    return-void
.end method

.method private setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v7, 0x0

    aput-object v1, v0, v7

    const/4 v8, 0x1

    aput-object p1, v0, v8

    const-string v1, "credentialType"

    const/4 v13, 0x2

    aput-object v1, v0, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "savedCredential"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const-string/jumbo v1, "requestedQuality"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "userId"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static/range {p5 .. p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    move-object/from16 v2, p1

    move v3, v10

    move-object/from16 v4, p3

    move/from16 v5, p4

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    return-void

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_0

    :cond_1
    move-object/from16 v14, p3

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_1

    :cond_2
    move-object/from16 v12, p1

    :goto_1
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.enterpriseidentity_selected"

    invoke-static {v0, v1, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eIdChosenByUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v15, :cond_3

    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move-object v4, v14

    move/from16 v5, p4

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->checkLockMaterialsTraced(Ljava/lang/String;ILjava/lang/String;II)V

    :cond_3
    const/16 v16, 0x0

    invoke-direct {v9, v11, v14}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentCredTypeAndQualityForDualDar(ILjava/lang/String;)[I

    move-result-object v17

    iget-object v6, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v6

    :try_start_0
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_4

    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move-object v4, v14

    move/from16 v5, p4

    move-object/from16 v18, v6

    move v6, v11

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V

    invoke-direct {v9, v12, v10, v14, v11}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_2

    :cond_4
    move-object/from16 v18, v6

    :goto_2
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v16, :cond_5

    aget v5, v17, v7

    aget v6, v17, v8

    move-object v1, v9

    move v2, v11

    move-object v3, v14

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->performDualDARPasswordChange(ILjava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_5
    const/4 v0, -0x1

    const/4 v6, 0x0

    if-ne v10, v0, :cond_7

    if-eqz v12, :cond_6

    const-string v0, "LockSettingsService"

    const-string v1, "CredentialType is none, but credential is non-null."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    invoke-direct {v9, v6, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-direct {v9, v11, v6}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    invoke-direct {v9, v6, v11}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, v10, v12, v11}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(ILjava/lang/String;I)V

    return-void

    :cond_7
    if-eqz v12, :cond_10

    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v5

    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v14, :cond_a

    :try_start_2
    invoke-virtual {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    :goto_3
    move-object v14, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v1, "LockSettingsService"

    const-string v2, "Child profile key not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    goto :goto_5

    :cond_8
    iget-object v0, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v0, :cond_a

    if-eqz v14, :cond_9

    const-string v0, "LockSettingsService"

    const-string v1, "Saved credential provided, but none stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    :goto_5
    const/16 v16, 0x0

    invoke-direct {v9, v11, v14}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentCredTypeAndQualityForDualDar(ILjava/lang/String;)[I

    move-result-object v18

    iget-object v4, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_3
    invoke-virtual {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v2, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v0, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v9

    move-object v3, v14

    move-object/from16 v19, v4

    move v4, v0

    move-object v13, v5

    move/from16 v5, p4

    move v6, v11

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move-object v4, v14

    move/from16 v5, p4

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V

    invoke-direct {v9, v0, v11}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_6

    :cond_b
    move-object/from16 v19, v4

    move-object v13, v5

    :goto_6
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v16, :cond_c

    aget v5, v18, v7

    aget v6, v18, v8

    move-object v1, v9

    move v2, v11

    move-object v3, v14

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->performDualDARPasswordChange(ILjava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_c
    iget-object v0, v13, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-direct {v9, v0, v14, v12, v11}, Lcom/android/server/locksettings/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v8

    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v8, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    iget-object v5, v8, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move v2, v11

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {v9, v7}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-direct {v9, v11, v12, v1}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    goto :goto_7

    :cond_d
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    :goto_7
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/16 v17, 0x0

    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move-object/from16 v19, v7

    move v7, v11

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, 0x0

    invoke-direct {v9, v11, v1}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v1, v10, v12, v11}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(ILjava/lang/String;I)V

    nop

    return-void

    :cond_e
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to enroll "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    if-ne v10, v3, :cond_f

    const-string/jumbo v3, "password"

    goto :goto_8

    :cond_f
    const-string/jumbo v3, "pattern"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    move-object/from16 v19, v4

    move-object v13, v5

    :goto_9
    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_10
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null credential with mismatched credential type"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v18, v6

    :goto_a
    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_a
.end method

.method private setLockCredentialVariant(Ljava/lang/String;ILjava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 5

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isLegacyResetRequested(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "User %d requested to reset password"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->prepareLegacyResetRequest(I)V

    nop

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithLegacyToken(Ljava/lang/String;III)Z

    move-result v1

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->finalizeLegacyResetRequest(I)V

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    :cond_0
    const-string v2, "Continue to set credential..."

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_1
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isSecureFolderUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "User %d identified as secure folder user"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setSecureFolderLockCredential(Ljava/lang/String;ILjava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .locals 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpManager"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p5

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-object v3, v8

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v10

    if-eqz v8, :cond_7

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object/from16 v3, p3

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v9, :cond_1

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set SP for FBE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v2

    invoke-direct {v0, v9, v2}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set EP for FBE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v9, v8, v1}, Lcom/android/server/locksettings/LockSettingsService;->setEncryptedUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    goto :goto_1

    :cond_2
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    :goto_1
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set EP for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableEncryptedPasswordLocked(I)V

    nop

    move-object/from16 v12, p3

    goto/16 :goto_4

    :cond_3
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-object/from16 v12, p3

    invoke-virtual {v1, v2, v12, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, v12

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v9, :cond_5

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set SP for FBE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v2

    invoke-direct {v0, v9, v2}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    goto :goto_3

    :cond_5
    :goto_2
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set EP for FBE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v9, v8, v1}, Lcom/android/server/locksettings/LockSettingsService;->setEncryptedUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    :goto_3
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    :cond_6
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set EP for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableEncryptedPasswordLocked(I)V

    goto :goto_4

    :cond_7
    move-object/from16 v12, p3

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v7

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const/4 v1, 0x0

    invoke-direct {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_4
    const-string/jumbo v1, "sp-handle"

    invoke-virtual {v0, v1, v10, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-direct {v0, v9, v7}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    invoke-direct {v0, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    return-wide v10
.end method

.method private setLockCredentialWithLegacyToken(Ljava/lang/String;III)Z
    .locals 22

    move-object/from16 v9, p0

    move/from16 v10, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set lock credential with legacy token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    const/4 v12, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_6

    invoke-direct {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyToken(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SP adaptation required for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v8

    new-instance v14, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$8tU8eA1beMxiDWmh7OYun4oYErQ;

    invoke-direct {v14, v10}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$8tU8eA1beMxiDWmh7OYun4oYErQ;-><init>(I)V

    invoke-virtual {v8, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v14, v8

    invoke-static {v14}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed due to invalid token"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v15, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9iDSzzwBPHAi1kO1yciF1MCfPPE;

    invoke-direct {v15, v8, v10}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$9iDSzzwBPHAi1kO1yciF1MCfPPE;-><init>([BI)V

    invoke-virtual {v0, v15}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v5, v0

    move-object v15, v0

    invoke-static {v15}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Failed to reset password due to invalid token"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$P9CzNYh8d-atn0JCmw5CR-fncWo;

    invoke-direct {v4, v15, v10}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$P9CzNYh8d-atn0JCmw5CR-fncWo;-><init>([BI)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Failed to set reset password"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$wzjJbcFDkJrJ9wQs2V-Bg5dO-rc;

    invoke-direct {v4, v10}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$wzjJbcFDkJrJ9wQs2V-Bg5dO-rc;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v19, v17

    move-wide/from16 v2, v19

    :try_start_0
    invoke-virtual {v9, v5, v2, v3, v10}, Lcom/android/server/locksettings/LockSettingsService;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    nop

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Failed to verify with reset token"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v0

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v4

    new-instance v11, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$J3BCXM8R2Q1s4ESS_opj89Akr38;

    invoke-direct {v11, v0, v15, v10}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$J3BCXM8R2Q1s4ESS_opj89Akr38;-><init>([B[BI)V

    invoke-virtual {v4, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v7, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v4

    new-instance v11, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$DwOC9dw_Bz624eVcNjHnujZjfG8;

    invoke-direct {v11, v15, v10}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$DwOC9dw_Bz624eVcNjHnujZjfG8;-><init>([BI)V

    invoke-virtual {v4, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :goto_0
    iget-object v2, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    :try_start_1
    invoke-direct {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->isSpCachedLocked(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v12, [Ljava/lang/Object;

    aput-object v14, v0, v13

    const/4 v2, 0x1

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of sp adaptation : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    if-nez v7, :cond_6

    return v13

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$KFIC_jUt4tBcEIsgX4c6HF5j3cw;

    invoke-direct {v2, v10}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$KFIC_jUt4tBcEIsgX4c6HF5j3cw;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v0, v14, v2

    if-nez v0, :cond_7

    nop

    move-object/from16 v16, v1

    goto :goto_1

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$JoMMTd37BxRRFLfrCbM84mG2miU;

    invoke-direct {v2, v10}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$JoMMTd37BxRRFLfrCbM84mG2miU;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Failed due to invalid token"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    nop

    move-object/from16 v16, v8

    goto :goto_1

    :cond_8
    move-object v1, v9

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v14

    move-object v6, v8

    move/from16 v7, p3

    move-object/from16 v16, v8

    move v8, v10

    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v11, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v1, "Unexpected failure while set credential with token"

    invoke-static {v1, v0}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    const-string v0, "Result of string credential with legacy token for user %d : %s"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v11
.end method

.method private setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set lock credential with token for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "credential"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v10, v0, v2

    const-string/jumbo v4, "type"

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v0, v6

    const-string/jumbo v4, "tokenHandle"

    const/4 v6, 0x4

    aput-object v4, v0, v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v0, v6

    const-string/jumbo v4, "token"

    const/4 v6, 0x6

    aput-object v4, v0, v6

    const/4 v4, 0x7

    aput-object p5, v0, v4

    const-string/jumbo v4, "requestedQuality"

    const/16 v6, 0x8

    aput-object v4, v0, v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x9

    aput-object v4, v0, v6

    const-string/jumbo v4, "userId"

    const/16 v6, 0xa

    aput-object v4, v0, v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0xb

    aput-object v4, v0, v6

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static/range {p7 .. p7}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    move-object v3, v10

    move v4, v11

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move v9, v12

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v12}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    :cond_1
    move v4, v0

    const-string v0, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setLockCredentialWithToken() : activePWQuality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v6

    :try_start_0
    invoke-direct {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->restoreEscrowDataIfNeededLocked(I)V

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternal(Ljava/lang/String;IJ[BII)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    nop

    if-eqz v0, :cond_2

    const-string v9, "Inconsiderable"

    goto :goto_0

    :cond_2
    move-object v9, v8

    :goto_0
    invoke-direct {v1, v10, v11, v9, v12}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_4

    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    invoke-direct {v1, v12, v2, v8}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLjava/lang/String;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    invoke-direct {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    if-lez v4, :cond_4

    const/4 v0, -0x1

    if-ne v11, v0, :cond_4

    invoke-direct {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometrics(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_1
    const-string v0, "Result of setting credential with token for user %d : %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v7

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private setLockCredentialWithTokenInternal(Ljava/lang/String;IJ[BII)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p7

    move-object v1, v7

    move-object v2, v8

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalForDualDAR(Ljava/lang/String;J[BI)Z

    move-result v10

    const/4 v0, 0x0

    if-nez v10, :cond_0

    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dual DAR Client failed to reset password with token for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v11, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v11

    :try_start_0
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    move-object v12, v1

    iget-object v1, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v1, :cond_1

    const-string v1, "LockSettingsService"

    const-string v2, "Invalid escrow token supplied"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    return v0

    :cond_1
    iget-object v1, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Untrusted credential reset happened for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    iget-object v3, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v4, 0x0

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v9, :cond_3

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set SP for FBE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {v7, v9, v1}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set EP for FBE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v7, v9, v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->setEncryptedUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    goto :goto_1

    :cond_4
    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    :goto_1
    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->isKeystoreLocked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->isEncryptedPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mEpManager:Lcom/android/server/locksettings/EncryptedPasswordManager;

    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystoreWithEncryptedPassword(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    iget-object v1, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    :goto_2
    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->isKeystoreLocked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Failed to unlock keystore"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_6
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set EP for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v7, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableEncryptedPasswordLocked(I)V

    goto :goto_3

    :cond_7
    const-string v1, "LockSettingsService"

    const-string v2, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    return v0

    :cond_8
    :goto_3
    if-eqz v8, :cond_9

    const/4 v0, -0x1

    move/from16 v13, p2

    if-ne v13, v0, :cond_a

    goto :goto_4

    :cond_9
    move/from16 v13, p2

    :goto_4
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v7, v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordDeserted(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_a
    const-string/jumbo v0, "lockscreen.password_type"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v14, p6

    int-to-long v1, v14

    :try_start_1
    invoke-virtual {v7, v0, v1, v2, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-direct {v7, v9}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    move-wide v5, v0

    iget-object v4, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v7

    move-object v2, v8

    move v3, v13

    move-object v15, v12

    move-wide v12, v5

    move v5, v14

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    iget-object v0, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v12, v13, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v15

    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v7, v9, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v0

    move/from16 v14, p6

    :goto_5
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method private setLockCredentialWithTokenInternalForDualDAR(Ljava/lang/String;J[BI)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_0

    const-string v2, "LockSettingsService"

    const-string v3, "Invalid escrow token supplied"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return v4

    :cond_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSecureFolderLockCredential(Ljava/lang/String;ILjava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set credential for secure folder user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v3, "credentialType"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v0, v5

    const-string/jumbo v3, "savedCredential"

    const/4 v5, 0x4

    aput-object v3, v0, v5

    const/4 v3, 0x5

    aput-object p3, v0, v3

    const-string/jumbo v3, "requestedQuality"

    const/4 v5, 0x6

    aput-object v3, v0, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x7

    aput-object v3, v0, v5

    const-string/jumbo v3, "userId"

    const/16 v5, 0x8

    aput-object v3, v0, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v0, v5

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {p3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Secure folder has legacy credential"

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/server/locksettings/LockSettingsService;->doSyntheticPasswordFullMigration(Ljava/lang/String;III)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    move-object v0, v7

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isSpCachedLocked(I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "Secure Folder seems to need sp initialization first"

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    sget-object v7, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object v0, v7

    goto :goto_1

    :cond_2
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "Secure Folder already has sp based credential"

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$4cw1GKW3k91kJbyJGHWklAgbBcM;

    invoke-direct {v8, p1, p2, p4, p5}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$4cw1GKW3k91kJbyJGHWklAgbBcM;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object v0, v7

    goto :goto_1

    :cond_3
    const-string v7, "Secure folder compromised!"

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v7, "Seems normal case, skip handling"

    invoke-static {v7}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    sget-object v7, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object v0, v7

    :cond_5
    :goto_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_3
    const-string v7, "Unexpected exception while set sf credential"

    invoke-static {v7, v3}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v3, "Result of setting credential for secure folder user %d : %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v0

    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setSeparateProfileChallengeEnabledLocked(IZLjava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSeparateChallengeLock"
    .end annotation

    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    xor-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordPolicyOneLockChanged(ZI)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/16 v0, -0x270f

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "cannot store lock settings for FRP user"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserKeyProtection: without auth and key, user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void

    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null response verifying a credential we just set"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldCacheSpForUser(I)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->canUserHaveUntrustedCredentialReset(I)Z

    move-result v1

    return v1
.end method

.method private shouldMigrateToSyntheticPasswordPerUserLocked(I)Z
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    const-string/jumbo v3, "enable-sp-per-user"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    return v0
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080586

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x1060204

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;Z)V
    .locals 15

    move-object v11, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz p2, :cond_1

    const v0, 0x1040ae9

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    const v0, 0x1040ae8

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1040890

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v6, 0x104088d

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    move-object v13, v4

    move-object v4, v0

    goto :goto_2

    :cond_2
    const v0, 0x1040891

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v3, 0x104088e

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v13, v0

    move-object v4, v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/high16 v3, 0x8000000

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->createConfirmProfileCredentialIntent(I)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v6, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v3, v13

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_3

    :cond_4
    iget-object v0, v11, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v5}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v14

    if-nez v14, :cond_5

    return-void

    :cond_5
    const/high16 v5, 0x10800000

    invoke-virtual {v14, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, v11, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v14, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v5, v11

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v13

    move-object v9, v4

    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_3
    return-void

    :cond_6
    :goto_4
    return-void
.end method

.method private spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v13, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify sp based credential for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "userCredential"

    const/4 v14, 0x0

    aput-object v3, v0, v14

    const/4 v15, 0x1

    aput-object p1, v0, v15

    const-string v4, "credentialType"

    const/4 v12, 0x2

    aput-object v4, v0, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    const-string/jumbo v4, "userId"

    const/4 v5, 0x4

    aput-object v4, v0, v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    :goto_0
    invoke-direct {v1, v10, v2, v13}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredentialForDualDAR(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LockSettingsService"

    const-string/jumbo v3, "verifyChallenge for DualDAR failed."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_1
    iget-object v9, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v9

    :try_start_0
    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v8, 0x0

    if-nez v0, :cond_2

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v16, v9

    :goto_2
    move-object v15, v10

    goto/16 :goto_8

    :cond_2
    const/16 v0, -0x270f

    if-ne v13, v0, :cond_3

    :try_start_2
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p7

    :try_start_3
    invoke-virtual {v0, v3, v10, v2, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v7, p7

    goto :goto_1

    :cond_3
    move-object/from16 v7, p7

    :try_start_4
    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v5

    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object v7, v10

    move-object v0, v8

    move v8, v13

    move-object/from16 v16, v9

    move-object/from16 v9, p7

    :try_start_5
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v3

    iget v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eq v4, v2, :cond_4

    :try_start_6
    const-string v0, "LockSettingsService"

    const-string v4, "Credential type mismatch."

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_4
    :try_start_7
    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v8

    iget-object v9, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v15, v10

    move-wide/from16 v10, p4

    move v12, v13

    :try_start_9
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v11, v7

    :try_start_a
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "LockSettingsService"

    const-string/jumbo v4, "verifyChallenge with SP failed."

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v16

    return-object v0

    :catchall_3
    move-exception v0

    move-object v11, v4

    goto/16 :goto_8

    :cond_5
    move-object v15, v10

    move-object v11, v4

    :cond_6
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_c

    invoke-direct {v1, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isEncryptedPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mEpManager:Lcom/android/server/locksettings/EncryptedPasswordManager;

    invoke-virtual {v4, v15}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystoreWithEncryptedPassword(Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    :goto_3
    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v4

    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unlocking user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with secret only, length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v13, v4}, Lcom/android/server/locksettings/LockSettingsService;->getChangedStorageSecretIfDualDAR(I[B)[B

    move-result-object v4

    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v13, :cond_9

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unlocking user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mEpManager:Lcom/android/server/locksettings/EncryptedPasswordManager;

    invoke-virtual {v5, v15}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v1, v13, v0, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserForMigration(I[B[B[B)V

    goto :goto_5

    :cond_9
    :goto_4
    const-string v0, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unlocking user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with EP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mEpManager:Lcom/android/server/locksettings/EncryptedPasswordManager;

    invoke-virtual {v5, v15}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v1, v13, v0, v5}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    goto :goto_5

    :cond_a
    invoke-direct {v1, v13, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    :goto_5
    iget-object v0, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v1, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "trust"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v13, v14}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_b
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v13}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    iget-object v0, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v1, v13, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_d

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v0

    if-lez v0, :cond_d

    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_d
    :goto_6
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isSpCachedLocked(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->destroy()V

    :cond_e
    const-string v0, "Result of verification of user %d : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {v1, v11, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->doPostVerification(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;I)V

    return-object v11

    :catchall_4
    move-exception v0

    move-object v15, v10

    move-object v11, v4

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object/from16 v16, v9

    :goto_7
    move-object v15, v10

    :goto_8
    :try_start_b
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_8
.end method

.method private spBasedDoVerifyCredentialForDualDAR(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method private spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpManager"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v6, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set sp based credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const-string v1, "credentialType"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string/jumbo v1, "savedCredential"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const-string/jumbo v1, "requestedQuality"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string/jumbo v1, "userId"

    const/16 v4, 0x8

    aput-object v1, v0, v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-direct {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v1, "LockSettingsService"

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Failed to decrypt child profile key"

    invoke-static {v1, v0}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v1, "LockSettingsService"

    const-string v4, "Child profile key not found"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Child profile key not found"

    invoke-static {v1, v0}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    nop

    :cond_0
    :goto_0
    move-object/from16 v0, p3

    :goto_1
    invoke-direct {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    iget-object v10, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v11

    const/16 v16, 0x0

    move-wide v12, v4

    move-object v14, v0

    move v15, v6

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v10

    iget-object v11, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v1, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    new-instance v3, Landroid/os/RemoteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to enroll "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v9, v2, :cond_1

    const-string/jumbo v2, "password"

    goto :goto_2

    :cond_1
    const-string/jumbo v2, "pattern"

    :goto_2
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v2, 0x0

    const/4 v12, -0x1

    if-eqz v1, :cond_3

    invoke-direct {v7, v6, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    :goto_3
    move-object v13, v1

    move v14, v2

    goto :goto_4

    :cond_3
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v12, :cond_9

    const-string v3, "LockSettingsService"

    const-string v13, "Untrusted credential change invoked"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v2, 0x1

    goto :goto_3

    :goto_4
    if-eqz v13, :cond_8

    if-eqz v14, :cond_4

    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v13, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_4
    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move/from16 v17, v14

    move-wide v14, v4

    move-object v4, v13

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move/from16 v3, p5

    invoke-virtual {v1, v14, v15, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    if-eqz v8, :cond_5

    if-ne v9, v12, :cond_6

    :cond_5
    invoke-direct {v7, v13, v3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordDeserted(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_6
    invoke-direct {v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->isSpCachedLocked(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->destroy()V

    :cond_7
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v1, v9, v8, v3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(ILjava/lang/String;I)V

    return-void

    :cond_8
    move v3, v6

    move/from16 v17, v14

    move-wide v14, v4

    const-string v1, "Untrusted credential reset not acceptable"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Untrusted credential reset not possible without cached SP"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-wide v14, v4

    move v3, v6

    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "spBasedSetLockCredentialInternalLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_a

    const-string/jumbo v6, "rate limit exceeded"

    goto :goto_5

    :cond_a
    const-string/jumbo v6, "failed"

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v9

    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synchronize challenge along with user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const-string v0, "Feasible for profiles(%d) ? %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v1, v12

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v13, 0x1

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    move v0, v12

    :goto_0
    move v14, v0

    if-ge v14, v11, :cond_7

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/UserInfo;

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v5, v15, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v9, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v6, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    invoke-direct {v6, v5}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "sync challenge - Managed profile %d has legacy credential"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    if-eqz v8, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") credential found! Clear profile credential."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, v6

    move/from16 v16, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    move/from16 v17, v16

    goto :goto_1

    :cond_5
    move/from16 v16, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") credential not found... Clear profile credential."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const-string v0, "LockSettingsService"

    const-string v1, "clear tied profile challenges, but no password supplied."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move/from16 v17, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    :goto_1
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    invoke-direct {v6, v1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    :cond_6
    :goto_2
    add-int/lit8 v0, v14, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    move-object v6, v1

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v3, :cond_1

    const-string v3, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieved auth token for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_0

    :cond_1
    const-string v3, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auth token not available for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LockSettingsService"

    const-string v3, "Failure retrieving auth token"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private tryRemoveUserFromSpCacheLater(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$GFWerLAKoOFnJxmOJRuUGH7UaUk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$GFWerLAKoOFnJxmOJRuUGH7UaUk;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unlockChildProfile(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_0

    const-string v1, "LockSettingsService"

    const-string v2, "Child profile key not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_1

    const-string v1, "LockSettingsService"

    const-string v2, "Parent keystore seems locked, ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    return-void
.end method

.method private unlockKeystoreWithEncryptedPassword(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock_sec(ILjava/lang/String;)Z

    return-void
.end method

.method private unlockUser(I[B[B)V
    .locals 9

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    move v1, v2

    nop

    if-eqz v1, :cond_1

    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "unlockUser skipped!! - user is already unlocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v3, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_1
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v4, p1, p2, p3, v3}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    nop

    const-wide/16 v4, 0xf

    :try_start_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V

    :cond_2
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Secure folder user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not running yet while unlock system user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unlock secure folder user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$-grOL-wIdSJ47-Wjm-Yfy9RvQ6A;

    invoke-direct {v8, v4}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$-grOL-wIdSJ47-Wjm-Yfy9RvQ6A;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v7

    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_4
    goto/16 :goto_1

    :cond_5
    goto :goto_5

    :catch_2
    move-exception v0

    const-string v2, "LockSettingsService"

    const-string v3, "Failed to unlock child profile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private unlockUserForMigration(I[B[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LockSettingsService"

    const-string/jumbo v2, "unlockUser - migration is needed"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    :goto_0
    return-void
.end method

.method private unlockUserWithToken(J[BI)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_0

    const-string v2, "LockSettingsService"

    const-string v3, "Invalid escrow token supplied"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "LockSettingsService"

    const-string/jumbo v3, "unlockUser with token"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    invoke-direct {p0, p4, v2, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "LockSettingsService"

    const-string/jumbo v2, "unlockUser with token skipped!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-direct {p0, p4, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p4, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    if-eqz v14, :cond_0

    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_1
    if-eqz v14, :cond_12

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_a

    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    const/high16 v7, 0x50000

    const/high16 v8, 0x10000

    const/4 v9, 0x1

    if-nez v0, :cond_8

    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v0, v9, :cond_3

    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, v12, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v15, v13}, Lcom/android/internal/widget/LockPatternUtils;->legacyPasswordToHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    iget-object v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v9, :cond_4

    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    :goto_1
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking user with fake token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {v12, v13, v10, v10}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    iget v3, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v4, 0x0

    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v9, :cond_5

    nop

    move v5, v8

    goto :goto_2

    :cond_5
    nop

    move v5, v7

    :goto_2
    move-object v1, v12

    move-object v2, v15

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    if-nez p4, :cond_6

    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    iget-object v1, v12, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    iget v2, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v1, v2, v15, v13}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(ILjava/lang/String;I)V

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    :cond_6
    goto :goto_3

    :cond_7
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget-object v5, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move v2, v13

    move-wide/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    invoke-direct {v12, v11}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v10

    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v16

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_10

    if-eqz p7, :cond_9

    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    :cond_9
    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with token length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    invoke-static/range {p3 .. p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v12, v13, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    invoke-direct {v12, v13, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v12, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_b
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v0, v9, :cond_c

    nop

    move v5, v8

    goto :goto_5

    :cond_c
    move v5, v7

    :goto_5
    if-eqz v16, :cond_d

    iget v3, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object v1, v12

    move-object v2, v15

    move-object v4, v15

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    move-object v2, v10

    move-object v3, v11

    goto :goto_7

    :cond_d
    iget-object v1, v12, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v7, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v9, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v12

    move-object v8, v15

    move-object v2, v10

    move v10, v5

    move-object v3, v11

    move v11, v13

    :try_start_1
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    invoke-direct {v12, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    :cond_e
    invoke-direct {v12, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    goto :goto_6

    :cond_f
    move-object v2, v10

    move-object v3, v11

    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_7
    iget-object v0, v12, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v0, v1, v15, v13}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(ILjava/lang/String;I)V

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v10

    move-object v3, v11

    :goto_8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_10
    move-object v2, v10

    move-object v3, v11

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-ne v0, v9, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v0

    if-lez v0, :cond_11

    const/16 v0, 0x8

    invoke-virtual {v12, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_11
    :goto_9
    return-object v2

    :cond_12
    :goto_a
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method


# virtual methods
.method public changeToken([BJ[BJI)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move/from16 v8, p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change token for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "newToken"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string/jumbo v2, "newHandle"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string/jumbo v2, "oldToken"

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const/4 v2, 0x5

    aput-object p4, v0, v2

    const-string/jumbo v2, "oldHandle"

    const/4 v4, 0x6

    aput-object v2, v0, v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v0, v4

    const-string/jumbo v2, "userId"

    const/16 v4, 0x8

    aput-object v2, v0, v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    move v9, v3

    :try_start_0
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide/from16 v4, p5

    move-object v6, p4

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v4, p2

    :try_start_2
    invoke-virtual {v2, v4, v5, v3, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    move v9, v2

    if-nez v9, :cond_1

    const-string v2, "Failed in new token activation"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v9, :cond_2

    move-wide/from16 v2, p5

    :try_start_3
    invoke-direct {v1, v2, v3, v8}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_2
    move-wide/from16 v2, p5

    :goto_0
    const-string v6, "Failed in old token elimination"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    move-wide v4, p2

    move-wide/from16 v2, p5

    const-string v6, "Failed due to invalid token"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_2
    monitor-exit v10

    goto :goto_6

    :cond_5
    move-wide v4, p2

    move-wide/from16 v2, p5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v6, "Excrow token is disabled for current user"

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-wide v4, p2

    :goto_3
    move-wide/from16 v2, p5

    :goto_4
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide v4, p2

    move-wide/from16 v2, p5

    :goto_5
    const-string v6, "Unexpected exception while change token"

    invoke-static {v6, v0}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final result of change token : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v9
.end method

.method public checkAppLockBackupPin(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockBackupkPinHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockFingerprintPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkAppLockPassword(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkAppLockPattern(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPatternHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkAppLockPin(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPinHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkBackupPassword(Ljava/lang/String;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    const/4 v10, 0x1

    if-nez v1, :cond_0

    return v10

    :cond_0
    iget v2, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v3, 0x4

    const/4 v11, 0x0

    if-eq v2, v3, :cond_1

    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " passed in:  LockPatternUtils.CREDENTIAL_TYPE_BACKUP_PASSWORD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    iget v2, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    :cond_2
    return v3

    :cond_3
    iget v2, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    if-ne v2, v10, :cond_4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_4

    return v10

    :cond_4
    return v11

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkCISPassword(ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.remotelock.CLIENT_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.permission.REMOTELOCK"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:Ljava/lang/String;

    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "failed checkRemoteLockPassword callback!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_0
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_1
    invoke-interface {p4, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "failed sendResult callback!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readCarrierPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-object v7, p4

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method public checkDigitalWellbeingPassword(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readDigitalWellbeingPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFMMPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkPrivateModeBackupPin(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPrivateModeLockBackupkPinHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkPrivateModePassword(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPrivateModeLockPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkPrivateModePattern(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPrivateModeLockPatternHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkPrivateModePin(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPrivateModeLockPinHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkRecoveryPassword(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readRecoveryPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public checkVoldPassword(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    if-nez v4, :cond_1

    return v1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {p0, v4, v6, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v7, :cond_3

    return v6

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v7

    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    invoke-virtual {p0, v4, v7, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v5, :cond_4

    return v6

    :cond_4
    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    return v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public closeSession(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "LockSettingsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Current lock settings service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SP Enabled = %b"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SP Applied = %b"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabledForSystem()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DO Enabled = %b"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move v2, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "          SP Enabled = %b"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_0
    const-string v6, "        SP Handle = %x"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "        SID = %x"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    nop

    move v1, p2

    goto :goto_1

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public getCarrierLockPlusMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public getCredentialType(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v4

    move v0, v4

    monitor-exit v1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const-string v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v7

    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Child profile lock file not found"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHashFactor(Ljava/lang/String;I)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get work profile credential"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LockSettingsService"

    const-string v3, "Synthetic password not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    const/4 v10, 0x0

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_3

    const-string v3, "LockSettingsService"

    const-string v4, "Current credential is incorrect"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v1

    :cond_3
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 3

    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getRecoverySecretTypes()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSecureMode(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(JI)I

    move-result v4

    move v0, v4

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x2

    :cond_2
    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .locals 3

    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

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

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    const/16 v0, -0x270f

    if-ne p3, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "legacy_lock_pattern_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "lock_pattern_autolock"

    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public haveAppLockBackupPin(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPassword(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasBackupPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveCarrierPassword(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCarrierPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveDigitalWellbeingPassword(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveDigitalWellbeingPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveFMMPassword(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFMMPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v4, v5, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    move v2, v3

    nop

    :cond_0
    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v2, v3

    :goto_1
    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

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

.method public havePattern(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v4, v5, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v2, v3

    :goto_1
    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

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

.method public havePrivateModeBackupPin(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->havePrivateModeLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePassword(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->havePrivateModeLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePattern(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->havePrivateModeLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePin(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->havePrivateModeLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveRecoveryPassword(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRecoveryPassword(I)Z

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    return-void
.end method

.method protected initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpManager"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialize sp for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credentialHash"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "credential"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string v1, "credentialType"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "requestedQuality"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "userId"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize SyntheticPassword for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-object v4, p2

    move v5, p3

    move-object v6, v0

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v8

    if-eqz p2, :cond_5

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object v4, v0

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToUnlockUser(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p5, :cond_3

    invoke-static {p5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set SP for FBE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v2

    invoke-direct {p0, p5, v2}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set EP for FBE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p5, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setEncryptedUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    :goto_1
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set EP for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->enableEncryptedPasswordLocked(I)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "Skip reset as keystore is in unlocked state"

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v1, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, p5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    :goto_3
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const-string/jumbo v1, "sp-handle"

    invoke-virtual {p0, v1, v8, v9, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-object v0
.end method

.method public onCleanupUser(I)V
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    invoke-direct {v9}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v10, v0

    :try_start_0
    new-instance v1, Lcom/android/server/locksettings/LockSettingsShellCommand;

    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onStartUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "registerRemoteLockCallback!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    if-ne v0, p1, :cond_1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "failed checkRemoteLockPassword callback!! after register"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "failed sendResult callback!! after register"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public requestRemoteLockInfo(I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v0, 0x0

    :goto_0
    move v4, v0

    const/4 v0, 0x4

    if-ge v4, v0, :cond_3

    move v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locked"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "phonenumber"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableemergencycall"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "clientname"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "emailaddress"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "allowfailcount"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v17, v12

    const-wide/16 v11, 0x0

    move-wide/from16 v18, v13

    invoke-virtual {v1, v0, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v13

    long-to-int v13, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "locktime"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v20, v15

    invoke-virtual {v1, v0, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "permanentblockcount"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v11, 0x0

    invoke-virtual {v1, v0, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v11

    long-to-int v11, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "skippin"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v4

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v4

    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v0, v5, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v12

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, v12}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    const-string v2, "LockSettingsService"

    move-object/from16 v23, v3

    const-string/jumbo v3, "failed changeRemoteLockState callback!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2, v12}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    const-string v3, "LockSettingsService"

    const-string/jumbo v1, "failed changeRemoteLockState callback!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_1
    move/from16 v21, v4

    :cond_2
    :goto_2
    add-int/lit8 v0, v21, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public resetKeyStore(I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    move v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v3, v7, :cond_1

    :try_start_0
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v0, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "More than one managed profile, uid1:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid2:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    :goto_2
    nop

    const-string v7, "LockSettingsService"

    const-string v9, "Failed to decrypt child profile key"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v5, v0

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_5

    aget v10, v0, v9

    sget-object v11, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v12, v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_4

    aget v14, v11, v13

    iget-object v15, v1, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v15}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v15

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    if-eq v3, v7, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    if-eq v3, v7, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    :cond_7
    throw v0
.end method

.method public sendLockTypeChangedInfo(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(Z)V

    return-void
.end method

.method public setAppLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockBackupPinHash([BI)V

    return-void
.end method

.method public setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockFingerprintPasswordHash([BI)V

    return-void
.end method

.method public setAppLockPassword(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPasswordHash([BI)V

    return-void
.end method

.method public setAppLockPattern(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPatternHash([BI)V

    return-void
.end method

.method public setAppLockPin(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPinHash([BI)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    if-eqz p2, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setCarrierLockPlusEnabled(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setDigitalWellbeingPassword(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeDigitalWellbeingPasswordHash([BI)V

    return-void
.end method

.method public setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeBackupPasswordHash([BI)V

    return-void
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCarrierPasswordHash([BI)V

    return-void
.end method

.method public setLockCredential(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialVariant(Ljava/lang/String;ILjava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    const/4 v2, 0x0

    invoke-direct {p0, p5, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLjava/lang/String;)V

    invoke-static {p5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFMMPasswordHash([BI)V

    return-void
.end method

.method public setLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setSecureLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V

    return-void
.end method

.method public setLockRecoveryPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRecoveryPasswordHash([BI)V

    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "lockscreen.samsung_biometric"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "setLong ## sendLockTypeChangedInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->sendLockTypeChangedInfo(Z)V

    :cond_0
    return-void
.end method

.method public setPrivateModeLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePrivateModeLocBackupkPinHash([BI)V

    return-void
.end method

.method public setPrivateModeLockPassword(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePrivateModeLockPasswordHash([BI)V

    return-void
.end method

.method public setPrivateModeLockPattern(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePrivateModeLockPatternHash([BI)V

    return-void
.end method

.method public setPrivateModeLockPin(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePrivateModeLockPinHash([BI)V

    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget v4, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iget-boolean v5, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    iget-object v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-boolean v8, v3, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    iget-object v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    iget v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    int-to-long v11, v0

    iget-wide v13, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    iget v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    move-wide v15, v13

    int-to-long v13, v0

    move-wide/from16 v17, v15

    iget-boolean v15, v3, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locked"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "phonenumber"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableemergencycall"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "clientname"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "emailaddress"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "allowfailcount"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locktime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v5, v17

    invoke-virtual {v1, v0, v5, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "permanentblockcount"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v13, v14, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "skippin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    move/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v5, v17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locked"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :goto_0
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v3, :cond_1

    move-object/from16 v2, p2

    :try_start_0
    invoke-interface {v3, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move-object/from16 v21, v3

    move/from16 v22, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v21, v3

    const-string v3, "LockSettingsService"

    move/from16 v22, v4

    const-string/jumbo v4, "failed changeRemoteLockState callback!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v2, p2

    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    move-object/from16 v23, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    const-string v4, "LockSettingsService"

    move-object/from16 v23, v3

    const-string/jumbo v3, "failed changeRemoteLockState callback!"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object/from16 v23, v3

    :goto_2
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v0

    const-string v4, "LockSettingsService"

    const-string/jumbo v1, "failed changeRemoteLockState callback!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "Enable"

    goto :goto_0

    :cond_1
    const-string v1, "Disable"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " separate challenge for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "managedUserPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLjava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setServerParams([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    const-string/jumbo v2, "enable-sp"

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    const/4 v5, 0x1

    nop

    :cond_1
    return v5

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordPerUserLocked(I)Z

    move-result v0

    return v0
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public systemReady()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "28251513"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LockSettingsService"

    const-string v3, "Failure retrieving IGateKeeperService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    invoke-static {}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService()Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get AuthSecret HAL"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "LockSettingsService"

    const-string v3, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->systemReady()V

    return-void
.end method

.method public tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tie lock if necessary for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "managedUserId"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string/jumbo v1, "managedUserPassword"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :try_start_0
    const-string v2, "Clear lock when parent is not secure"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v5, p0

    move-object v8, p2

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    const-string/jumbo v2, "lockscreen.password_type"

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Unexpected exception while clear lock"

    invoke-static {v3, v2}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    cmp-long v1, v5, v3

    if-nez v1, :cond_5

    return-void

    :cond_5
    nop

    new-array v1, v2, [B

    :try_start_2
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    move-object v1, v2

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    const/high16 v11, 0x50000

    const/4 v5, 0x2

    const/high16 v7, 0x50000

    move-object v3, p0

    move-object v4, v2

    move-object v6, p2

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/32 v4, 0x50000

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v2

    move v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "LockSettingsService"

    const-string v4, "Fail to tie managed profile"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :catch_2
    move-exception v1

    const-string v2, "LockSettingsService"

    const-string v3, "Failed to talk to GateKeeper service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected tieProfileLockToParent(ILjava/lang/String;)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_0
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    const-string v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v9, "GCM"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const-string v9, "NoPadding"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v9, 0x2

    invoke-direct {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v9, "GCM"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const-string v9, "NoPadding"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-virtual {v5, v8, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v7

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_encrypt_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_3
    array-length v2, v4

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    nop

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    return-void

    :cond_0
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid iv length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failed to concatenate byte arrays"

    invoke-direct {v3, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catchall_0
    move-exception v4

    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to encrypt key"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hasn\'t been registered!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public updateCarrierLockPlusMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->updateCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public userPresent(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    return-void
.end method

.method public verifyCredential(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_0

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p5, :cond_1

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move/from16 v10, p5

    invoke-direct {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-direct {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v10}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move-wide/from16 v5, p3

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    return-object v12

    :cond_0
    :try_start_0
    invoke-virtual {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-wide/from16 v5, p3

    move v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Unable to get tied profile token"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "User id must be managed profile with unified lock"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "token"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "tokenHandle"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "userId"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/SDPLog;->p([Ljava/lang/Object;)V

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-wide v5, p2

    move-object v7, p1

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    move-object v0, v3

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "Failed due to invalid escrow token supplied"

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "Unexpected exception while verify token"

    invoke-static {v2, v1}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of token verification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v0
.end method

.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.super Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;
.source "RestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field private static final ACTIVATION_LOCK_MASK:J = 0x8000000L

.field private static final AIRPLANE_MODE_MASK:J = 0x80L

.field private static final ALLOW_NON_MARKET_MASK:J = 0x1000000000000L

.field private static final ANDROID_BEAM_MASK:J = 0x40000L

.field private static final AUDIO_RECORD_MASK:J = 0x1L

.field private static final BACKGROUND_DATA_MASK:J = 0x4000000000000L

.field private static final BACKGROUND_LIMIT_MASK:J = 0x4000L

.field private static final BACKUP_MASK:J = 0x100000000000L

.field private static final BLUETOOTH_TETHERING_MASK:J = 0x8000000000L

.field private static final BROADCAST_DELAY:I = 0x1388

.field private static final CAMERA_MASK:J = 0x1000000000L

.field private static final CCMODE_MASK:J = 0x40000000L

.field private static final CELLULAR_DATA_MASK:J = 0x400000000000L

.field private static final CLIPBOARD_MASK:J = 0x200L

.field private static final CLIPBOARD_SHARE_MASK:J = 0x20000L

.field static final CONF_FILE:Ljava/lang/String; = "/data/system/enterprise.conf"

.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final DATA_SAVER_MASK:J = 0x800000000000000L

.field public static final DEFAULT_NETWORK_POLICY_APPLIED:Ljava/lang/String; = "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

.field private static final DEFAULT_RESTRICTION_MASK:J = 0x5ffffffc3b9fffefL

.field private static final DEVELOPER_MODE_MASK:J = 0x40L

.field private static final EDM_SDCARD_WRITEACCESS_BLOCKED:Ljava/lang/String; = "sdCardWriteAccessBlocked"

.field private static final EXTRA_EMERGENCY_START_SERVICE_ENABLE:Ljava/lang/String; = "enabled"

.field private static final EXTRA_EMERGENCY_START_SERVICE_FLAG:Ljava/lang/String; = "flag"

.field private static final EXTRA_EMERGENCY_START_SERVICE_SKIPDIALOG:Ljava/lang/String; = "skipdialog"

.field private static final FACE_UNLOCK_MASK:J = 0x2000000000000000L

.field private static final FACTORYRESET_EFS_DIR_PATH:Ljava/lang/String; = "/efs/MDM"

.field private static final FACTORYRESET_EFS_FILE_PATH:Ljava/lang/String; = "/efs/MDM/FactoryReset"

.field private static final FACTORY_RESET_MASK:J = 0x8000000000000L

.field private static final FAST_ENCRYPTION_MASK:J = 0x10L

.field private static final FIRMWARE_RECOVER_MASK:J = 0x1000000L

.field private static final FIRMWARE_UPDATE_MASK:J = 0x4000000L

.field private static final GOOGLE_AUTOSYNC_MASK:J = 0x2000000L

.field private static final GOOGLE_CRASH_REPORT_MASK:J = 0x80000000000000L

.field private static final HEADPHONE_MASK:J = 0x10000000L

.field private static final HOME_KEY_MASK:J = 0x10000000000000L

.field private static final IRIS_CAMERA_MASK:J = 0x400000000000000L

.field private static final KILL_ACTIVITY_MASK:J = 0x8000L

.field private static final KNOX_DELEGATION_MASK:J = -0x8000000000000000L

.field private static final LOCAL_CONTACT_STORAGE_MASK:J = 0x4000000000000000L

.field private static final LOCKSCREEN_STATE_MASK:J = 0x800000L

.field static final MASK_AND_COLUMN_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MASS_STORAGE_MASK:J = 0x40000000000L

.field private static final MAX_BACKGROUND_PROCESSES:I = 0x14

.field private static final MESSAGE_ID:I = 0x1

.field private static final MICROPHONE_MASK:J = 0x4L

.field private static final MOBILE_LIMIT_MASK:J = 0x10000L

.field private static final MOCK_LOCATION_MASK:J = 0x80000000000L

.field public static final NEW_RESTRICTION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

.field private static final NFC_MASK:J = 0x200000000000L

.field private static final NON_TRUSTED_APP_MASK:J = 0x400000L

.field private static final ODE_VERIFICATION_MASK:J = 0x80000000L

.field public static final OLD_ADVANCEDRESTRICTION_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

.field private static final OTA_UPGRADE_MASK:J = 0x40000000000000L

.field private static final PACKAGE_CAMERA_APP:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final PACKAGE_DIRECT_SHARE_PKGNAME:Ljava/lang/String; = "com.sec.android.directshare"

.field private static final PACKAGE_SETTINGS_APP:Ljava/lang/String; = "com.android.settings"

.field static final PARAM_INDEX_FACTORY_RESET:I = 0x3

.field public static final PARAM_INDEX_FIRMWARE_RECOVERY:I = 0x7

.field static final PARAM_INDEX_MDM1:I = 0x1e

.field static final PARAM_INDEX_MDM2:I = 0x1f

.field static final PARAM_MDM1_VALUE:I = 0x2

.field static final PARAM_MDM2_VALUE:I = 0x6

.field static final PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field static final PARAM_POLICY_VALUE:I = 0x8

.field static final PARAM_START_POS:I = 0x600

.field private static final POWER_OFF_MASK:J = 0x800L

.field private static final POWER_SAVING_MASK:J = 0x1000000000000000L

.field private static final PREVENT_ADMIN_ACTIVATION_MASK:J = 0x200000000L

.field private static final PREVENT_ADMIN_INSTALL_MASK:J = 0x100000000L

.field private static final SAMSUNG_KEYBOARD_PKGNAME:Ljava/lang/String; = "com.sec.android.inputmethod"

.field private static final SBEAM_MASK:J = 0x400L

.field private static final SCREEN_CAPTURE_MASK:J = 0x10000000000L

.field private static final SCREEN_PINNING_MASK:J = 0x200000000000000L

.field private static final SDCARD_MASK:J = 0x800000000000L

.field private static final SDCARD_MOVE_MASK:J = 0x20000000L

.field private static final SDCARD_WRITE_MASK:J = 0x800000000L

.field private static final SECURE_KEY_PAD_MASK:J = 0x200000L

.field private static final SELCETIVE_FOTA_VERSION_NONE:Ljava/lang/String; = "NONE"

.field public static final SELETIVE_FOTA_UNREGISTER:Ljava/lang/String; = "sec.fota.intent.MDM_UNREGISTER"

.field public static final SELETIVE_FOTA_UPDATE_RESULT:Ljava/lang/String; = "sec.fota.intent.MDM_REGISTER_RESULT"

.field public static final SELETIVE_FOTA_UPDATE_STATUS:Ljava/lang/String; = "com.xdm.intent.UPDATE_RESULT"

.field private static final SETTINGS_MASK:J = 0x8L

.field private static final SHARE_LIST_MASK:J = 0x100000L

.field private static final SMART_CLIP_MASK:J = 0x100000000000000L

.field private static final STATUS_BAR_MASK:J = 0x100L

.field private static final STOP_SYSTEM_APP_MASK:J = 0x1000L

.field private static final SVOICE_MASK:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field private static final UCM_SERVICE_NAME:Ljava/lang/String; = "com.samsung.ucs.ucsservice"

.field private static final USB_DEBUGGING_MASK:J = 0x20000000000L

.field private static final USB_DRIVER_EXCEPTION_LIST_PATH:Ljava/lang/String; = "sys/class/usb_notify/usb_control/whitelist_for_mdm"

.field private static final USB_INTERFACE_DEFAULT_VALUE:I = -0x1

.field private static final USB_MEDIAPLAYER_MASK:J = 0x2000000000000L

.field private static final USB_STORAGE_MASK:J = 0x80000L

.field private static final USB_TETHERING_MASK:J = 0x2000000000L

.field private static final VIDEO_RECORD_MASK:J = 0x2L

.field private static final VPN_MASK:J = 0x20000000000000L

.field private static final WALLPAPER_CHANGE_MASK:J = 0x400000000L

.field private static final WIFI_DIRECT_MASK:J = 0x2000L

.field private static final WIFI_TETHERING_MASK:J = 0x4000000000L

.field private static final excludedAdminList:[Ljava/lang/String;

.field private static mUsbSyncFlag:Z


# instance fields
.field private isLockScreenShortcutsAllowedCache:Z

.field private isLockScreenWidgetsAllowedCache:Z

.field private isSafeModeAllowedCache:Z

.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFotaReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsbMassStorageAvailable:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRestrictionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private preAdminRemoval_SDCardWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v1, "com.sec.sprextension.phoneinfo"

    const-string v2, "com.samsung.klmsagent"

    const-string v3, "com.samsung.android.knox.containercore"

    const-string v4, "com.samsung.android.kgclient"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mFotaReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v1, "dex_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/dex/DexPolicy;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    const-string/jumbo v1, "vpn_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "sec.fota.intent.MDM_REGISTER_RESULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.xdm.intent.UPDATE_RESULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "sec.fota.intent.MDM_UNREGISTER"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mFotaReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.sec.android.fotaclient.permission.FOTA"

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    invoke-static {v0, v3}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mountSdCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearSelectiveFota()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v0

    return v0
.end method

.method private applySdCardWriteAccessPolicy()V
    .locals 4

    const-string/jumbo v0, "sdCardWriteAccessBlocked"

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    const-string v3, "/data/system/enterprise.conf"

    invoke-static {v0, v2, v3}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExternalSdCardPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->unmountSdCard(Z)Z

    :cond_1
    return-void
.end method

.method private clearCacheAsUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private clearSelectiveFota()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SelectiveFotaTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSelectiveFota : return( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private createEFSFile(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "RestrictionPolicy"

    const-string v2, "createEFSFile"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "RestrictionPolicy"

    const-string v2, "createEFSFile : efsFile fail"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "RestrictionPolicy"

    const-string v3, "createEFSFile : efsFile exist"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    move v0, v1

    invoke-virtual {p1, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    invoke-virtual {p1, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v2

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createEFSFile: setReadable - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " setWritable - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RestrictionPolicy"

    const-string v3, "Exception : "

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEFSFile : create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private deleteEFSFile(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "RestrictionPolicy"

    const-string v2, "createEFSFile"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "RestrictionPolicy"

    const-string v2, "deleteEFSFile : efsFile fail"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RestrictionPolicy"

    const-string v2, "deleteEFSFile : efsFile exist"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteEFSFile : delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private disableNFC()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

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

.method private enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_HW_CONTROL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_LOCATION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_LOCATION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, ""

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check permission for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "com.sec.knox.containeragent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Container Migration Permission to calling Package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_HW_CONTROL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_LOCATION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_LOCATION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private static enforceSystemUser()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    return-object p1
.end method

.method private extractFromRestrictionCache(JZI)Z
    .locals 4

    move v0, p3

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, p1

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    :cond_1
    return v0
.end method

.method private getAppUid(ILjava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Name not found error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getCurrentPowerSavingMode()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :goto_2
    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    nop

    :goto_3
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrentPowerSavingMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private getDexPolicy()Lcom/android/server/enterprise/dex/DexPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    if-nez v0, :cond_0

    const-string v0, "dex_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dex/DexPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExternalSdCardPath()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHash : hashed imei: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IStorageManager;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "ADMIN_INFO"

    const-string v2, "adminName"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getRestrictionPoliciesLocked(I)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return-object v0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "enterprise_policy_new"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method private getStatusSelectiveFota(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "containerID"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "userID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "adminUid"

    const-string v2, "corpid"

    const-string/jumbo v3, "version"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SelectiveFotaTable"

    invoke-virtual {v3, v4, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_1

    const-string v6, "adminUid"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_0
    const/4 v7, -0x1

    :goto_1
    const-string v8, "RestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getStatusSelectiveFota : enabled amdin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v7, :cond_1

    const/4 v2, 0x3

    const-string v4, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getStatusSelectiveFota : old corpID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "corpid"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    const-string v4, "corpid"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "RestrictionPolicy"

    const-string/jumbo v8, "getStatusSelectiveFota : same corpID"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    goto :goto_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_2
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getStatusSelectiveFota : return( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private getTopActivityUserId()I
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getFocusedUserWithActivityManager()I

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
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "getTopActivityUserId() failed"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getUidForAdminActivation(I)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "preventAdminActivation"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    nop

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "RestrictionPolicy"

    const-string v5, "Admin not found on database "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    return v3
.end method

.method private getUidForAdminInstallation(I)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "preventAdminInstallation"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    nop

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "RestrictionPolicy"

    const-string v5, "Admin not found on database "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    return v3
.end method

.method private getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "android.uid.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    return v1
.end method

.method private getUserRestrictionSafeMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string/jumbo v0, "no_safe_boot"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUserRestrictions(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getVpnInfoPolicy()Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    return-object v0
.end method

.method private initializeCacheAsUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v2, 0x5ffffffc3b9fffefL    # 2.6815567691305012E154

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private isCameraEnabledAsUser(I)Z
    .locals 3

    const-wide v0, 0x1000000000L

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method private isCameraEnabledEx(ILcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledAsUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "isCameraEnabledEx isCameraEnabledEx with OWNER return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "isCameraEnabledEx isRestrictedByConstrainedState return true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method private isExistEFSFile()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/MDM/FactoryReset"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExistEFSFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isExternalSdCardPresent()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isFactoryResetAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/high16 v0, 0x8000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method private isFirmwareRecoveryAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/32 v0, 0x1000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method private isNewAdminActivationEnabledInternal(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result v0

    return v0
.end method

.method private isNewAdminActivationEnabledInternal(IZ)Z
    .locals 4

    const-wide v0, 0x200000000L

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    const v1, 0x10408da

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNewAdminActivationEnabledInternal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private isNewAdminInstallationEnabledInternal(IZ)Z
    .locals 4

    const-wide v0, 0x100000000L

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNewAdminInstallationEnabledInternal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    const v1, 0x10408db

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private isPackageOnExclusionList(ILjava/lang/String;)Z
    .locals 8

    sget-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminActivationWhiteList"

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private isScreenCaptureEnabled(IZ)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSmartClipModeAllowedAsUser(ZI)Z
    .locals 4

    const-wide/high16 v0, 0x100000000000000L

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10409dd

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSmartClipModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isUCMKeyguardEnabled()Z
    .locals 6

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "RestrictionPolicy"

    const-string v3, "Failed to get UCM Service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "RestrictionPolicy"

    const-string v5, "UCM Keyguard is enabled"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private isValidDevice(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadRestrictionCache(I)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide v3, 0x5ffffffc3b9fffefL    # 2.6815567691305012E154

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v0

    const-string v7, "#SelectClause#"

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget-object v10, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    :goto_1
    sget-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v8, 0x1

    add-int/2addr v0, v8

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/String;

    array-length v0, v9

    sub-int/2addr v0, v8

    const-string v10, "adminUid"

    aput-object v10, v9, v0

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "RESTRICTION"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v9, v6, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v5, v0

    const-string v0, "adminUid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    int-to-long v13, v0

    cmp-long v0, v11, v13

    if-nez v0, :cond_8

    long-to-int v0, v11

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v13, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v13, :cond_2

    :try_start_3
    iget-object v13, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, v13

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    goto/16 :goto_8

    :cond_2
    :goto_3
    :try_start_4
    sget-object v13, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v17, v16

    if-ne v15, v8, :cond_3

    move-object/from16 v8, v17

    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    and-long v16, v3, v16

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-eqz v16, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    or-long v3, v16, v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    const-wide v16, 0x5ffffffc3b9fffefL    # 2.6815567691305012E154

    goto :goto_5

    :cond_3
    move-object/from16 v8, v17

    :cond_4
    if-nez v15, :cond_6

    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide v16, 0x5ffffffc3b9fffefL    # 2.6815567691305012E154

    and-long v3, v16, v3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v3, v3, v18

    if-nez v3, :cond_5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    not-long v6, v6

    and-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v5, v3

    goto :goto_5

    :cond_5
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    goto :goto_5

    :cond_6
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    const-wide v16, 0x5ffffffc3b9fffefL    # 2.6815567691305012E154

    :goto_5
    move-wide/from16 v3, v16

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_7
    move-wide/from16 v16, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    iget-object v3, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    move-wide/from16 v16, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    nop

    move-wide/from16 v3, v16

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    const/4 v8, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_9
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    :goto_7
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    :goto_8
    :try_start_8
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :goto_9
    iget-object v3, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_a
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    :goto_a
    return-void

    :catchall_4
    move-exception v0

    iget-object v3, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private loadRestrictionCacheAndNotifyChanges(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCache(I)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    return-void
.end method

.method private loadRestrictionCacheOnSystemReady()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCache(I)V

    return-void
.end method

.method private manageEFSFile(Z)Z
    .locals 9

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "manageEFSFile"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/MDM"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    invoke-virtual {v1, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "manageEFSFile: setReadable - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " setWritable - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v6, "manageEFSFile : mkdirs fail"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_1
    invoke-virtual {v1, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/MDM/FactoryReset"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->deleteEFSFile(Ljava/io/File;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->createEFSFile(Ljava/io/File;)Z

    move-result v0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private matchRegex([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private mountSdCard()Z
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "mountSdCard() : fail to mount media because path is null."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->mountVolume(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mountSdCard() : Unable to mount media - error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "mountSdCard() : failed by Exception."

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "mountSdCard() : failed by RemoteException."

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private notifyChanges(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    nop

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    nop

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1/isCameraEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3/isSettingsChangesAllowed"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private onUserAdded(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCacheAndNotifyChanges(I)V

    return-void
.end method

.method private onUserRemoved(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearCacheAsUser(I)V

    return-void
.end method

.method private readData(I)Z
    .locals 7

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->readParamData()[B

    move-result-object v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v3, :cond_0

    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "readParamData : fail to read"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readParamData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1e

    aget-byte v4, v3, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/16 v4, 0x1f

    aget-byte v4, v3, v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    aget-byte v4, v3, p1

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readParamData : index - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ret - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private native readParamData()[B
.end method

.method private rollBackSVoice(I)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "voiceControl"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_control"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void
.end method

.method private sendIntentGearManagerforUpdate(I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.edm.intent.action.GEARPOLICY_ENABLE_INTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.GEARPOLICY_ENABLE_INTERNAL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "sendIntentGearManagerforUpdate() fas failed."

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendSeletiveFotaResult(I)V
    .locals 6

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSeletiveFotaResult: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.UPDATE_FOTA_VERSION_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.extra.UPDATE_FOTA_VERSION_STATUS"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.enterprise.intent.action.UPDATE_FOTA_VERSION_RESULT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    const-string v3, "com.sec.enterprise.intent.extra.UPDATE_FOTA_VERSION_STATUS"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private setAirplaneModeAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setAirplaneModeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "setAirplaneModeAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setCameraAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCameraAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "setCameraAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setCellularDataAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "setCellularDataAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setFaceRecognitionEvenCameraBlockedAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "setFaceRecognitionEvenCameraBlockedAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setLockScreenViewProperty(IZ)Z
    .locals 3

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "kg_multiple_lockscreen"

    nop

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "kg_enable_camera_widget"

    nop

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_shortcut"

    nop

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "set_shortcuts_mode"

    nop

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method private setNFCAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNFCAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "setNFCAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setSettingsChangeSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setSettingsChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "setSettingsChangeSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setStatusBarExpansionSystemUI(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatusBarExpansionSystemUI() package(UID) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v4

    aget-object v3, v0, v3

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setStatusBarExpansionAllowedAsUser(IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "setStatusBarExpansionSystemUI() failed. "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setUsbExceptionListOnDriver(I)I
    .locals 11

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    if-nez v1, :cond_0

    const-string v2, "RestrictionPolicy"

    const-string v3, "UsbManager is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isSupportDexRestrict()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    sget-object v2, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    move-result-object v2

    const-string v7, ""

    move-object v8, v7

    move v7, v3

    :goto_0
    array-length v9, v2

    sub-int/2addr v9, v4

    if-ge v7, v9, :cond_4

    aget-object v9, v2, v7

    invoke-virtual {v9}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v9

    and-int/2addr v9, p1

    if-lez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v2, v7

    invoke-virtual {v10}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x3

    if-le v7, v9, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v8, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_5
    const-string v7, "RestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set UsbInterface Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v8}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v2, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result v0

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    const-string v2, "RestrictionPolicy"

    const-string/jumbo v5, "isUsbHostStorageAllowed is false. pass set UsbInterface Exception"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v5, "isSupportDexRestrict is false"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_3
    const-string v2, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Usb Exception mask input USB Driver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    move v3, v4

    nop

    :cond_9
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private setWifiTetheringAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "setWifiTetheringAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private syncUsbExceptionList(I)I
    .locals 10

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "syncUsbExceptionList."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v2, "syncUsbExceptionList. -1 -> return"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    move v2, v1

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbInterface Exception mask USB Driver = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v2

    move v2, v1

    :goto_0
    :try_start_1
    array-length v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v2, v7, :cond_1

    :try_start_2
    aget-object v7, v5, v2

    invoke-static {v7}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    or-int/2addr v6, v7

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_3
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v9, "input wrong value."

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsbInterface Exception mask USB Driver = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    nop

    nop

    if-ne p1, v6, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    move-result v0

    return v0

    :catch_1
    move-exception v1

    move v2, v6

    goto :goto_2

    :cond_3
    :try_start_4
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "usbDriverFile.exists : false"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return v1

    :catch_2
    move-exception v1

    :goto_2
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "usbDriverFile read fail"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private unmountSdCard(Z)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, p1, v3}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :cond_1
    :goto_1
    return v0
.end method

.method private updateAirPlaneModeState(Z)V
    .locals 5

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "updateAirPlaneModeState() failed. "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setAirplaneModeAllowedSystemUI(IZ)V

    return-void
.end method

.method private updateRestrictionCache(Ljava/lang/String;JZI)V
    .locals 7

    move v0, p4

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p1, p5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    if-eq v3, p4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->initializeCacheAsUser(I)V

    invoke-direct {p0, p5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    not-long v5, p2

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v2, v3

    :goto_2
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3

    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .locals 3

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreenCaptureDisabledInWindowManager() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", disabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3/isScreenCaptureEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private updateSystemUIMonitor(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSettingsChangeSystemUI(IZ)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setAirplaneModeAllowedSystemUI(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularDataAllowedSystemUI(IZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setNFCAllowedSystemUI(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringAllowedSystemUI(IZ)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledAsUser(I)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCameraAllowedSystemUI(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V

    return-void
.end method

.method private updateUSBMode()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private updateUsbStorageStatebyIntent(Z)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "reason"

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
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
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "updateUsbStorageStatebyIntent() fas failed."

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUsbStorageStatebyIntent() allow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static writeData(IZ)Z
    .locals 6

    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceSystemUser()V

    const/4 v0, 0x0

    const/16 v1, 0x20

    new-array v1, v1, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v3, 0x1f

    const/16 v4, 0x1e

    if-nez p1, :cond_0

    const/16 v5, 0x8

    aput-byte v5, v1, p0

    const/4 v5, 0x2

    aput-byte v5, v1, v4

    const/4 v4, 0x6

    aput-byte v4, v1, v3

    goto :goto_0

    :cond_0
    const/4 v5, 0x7

    aput-byte v5, v1, p0

    const/4 v5, 0x1

    aput-byte v5, v1, v4

    const/4 v4, 0x5

    aput-byte v4, v1, v3

    :goto_0
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeData : index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " value - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeParamData([B)Z

    move-result v0

    return v0
.end method

.method private static native writeParamData([B)Z
.end method


# virtual methods
.method public addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "preventAdminActivationWhiteList"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public allowActivationLock(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowActivationLock"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "allowActivationLock"

    const-wide/32 v3, 0x8000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v0
.end method

.method public allowAirplaneMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowAirplaneMode : allow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowAirplaneMode"

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowAirplaneMode"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v0, v2

    :goto_0
    const-string v3, "allowAirplaneMode"

    const-wide/16 v4, 0x80

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateAirPlaneModeState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "RestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v10, "allowed"

    goto :goto_1

    :cond_1
    const-string/jumbo v10, "disallowed"

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " airplane mode."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_2
    :goto_2
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowAirplaneMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowAndroidBeam(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowAndroidBeam"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    const-string v2, "allowAndroidBeam"

    const-wide/32 v3, 0x40000

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-string/jumbo v3, "nfc"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "RestrictionPolicy"

    const-string v5, "RestrictionPolicy.allowAndroidBeam(): can\'t bind service"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v0, v4

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    const-string v4, "RestrictionPolicy"

    const-string v5, "RestrictionPolicy.allowAndroidBeam() exception : "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowAndroidBeam : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string/jumbo v9, "enabled"

    goto :goto_2

    :cond_2
    const-string/jumbo v9, "disabled"

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Android Beam."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_3
    :goto_3
    return v0
.end method

.method public allowAudioRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowAudioRecording"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowAudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "allowAudioRecording"

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audiorecord_allowed=off"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audiorecord_allowed=on"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public allowBackgroundProcessLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "limitOfBackgroundProcess"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    const-string/jumbo v2, "limitOfBackgroundProcess"

    const-wide/16 v3, 0x4000

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    :cond_1
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowBackgroundProcessLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowClipboardShare(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowClipboardShare"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string v1, "allowClipboardShare"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowClipboardShare : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public allowDataSaving(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowDataSaving"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "allowDataSaving"

    const-wide/high16 v3, 0x800000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v9, "allowed"

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "disallowed"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " data saving."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_1
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowDataSaver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowDeveloperMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v8

    const/4 v0, 0x1

    if-nez v7, :cond_0

    new-instance v1, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    iget-object v2, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetDeveloperModeOptions()Z

    move-result v0

    :cond_0
    move v9, v0

    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowDeveloperMode"

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    const-string v1, "allowDeveloperMode"

    const-wide/16 v2, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string v15, "RestrictionPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_1

    const-string v1, "allowed"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "disallowed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " developer mode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    iget v0, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public allowFaceRecognitionEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v10, v2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowFaceRecognitionEvenCameraBlocked"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    move v1, v2

    const-string v3, "allowFaceRecognitionEvenCameraBlocked"

    const-wide/high16 v4, 0x2000000000000000L

    const/4 v6, 0x0

    move-object v2, p0

    move v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v8, "allowed"

    goto :goto_0

    :cond_0
    const-string/jumbo v8, "disallowed"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " camera."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v8, v9

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v1

    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowFactoryReset(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const/4 v2, 0x1

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowFactoryReset : oldState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", allow - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "factoryresetallowed"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v5, "factoryresetallowed"

    const-wide/high16 v6, 0x8000000000000L

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v4, "RestrictionPolicy"

    const-string v5, "allowFactoryReset : do not need to update"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Z)Z

    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowFactoryReset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowFastEncryption(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowFastEncryption"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " allowFastEncryption : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "allowFastEncryption"

    const-wide/16 v5, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v0
.end method

.method public allowFirmwareAutoUpdate(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowFirmwareAutoUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowFirmwareAutoUpdate"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "allowFirmwareAutoUpdate"

    const-wide/32 v3, 0x4000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return v0
.end method

.method public allowFirmwareRecovery(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowFirmwareRecovery :oldState - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", allow - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "firmwarerecoveryallowed"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v4, "firmwarerecoveryallowed"

    const-wide/32 v5, 0x1000000

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v3, "RestrictionPolicy"

    const-string v4, "allowFirmwareRecovery : do not need to update"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x7

    :try_start_0
    invoke-static {v6, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(IZ)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v3, :cond_1

    const-string v6, "RestrictionPolicy"

    const-string v7, "allowFirmwareRecovery : write fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_1
    :goto_0
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowFirmwareRecovery : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowGoogleAccountsAutoSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    iget v0, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-nez v8, :cond_4

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v0, "com.google"

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v0, v4

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    move-object v5, v0

    nop

    :try_start_0
    invoke-interface {v5, v6}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    array-length v10, v4

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_2

    aget-object v13, v4, v12

    array-length v14, v0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    aget-object v16, v0, v15

    move-object/from16 v17, v16

    const-string v11, "com.google"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v17

    :try_start_1
    iget-object v3, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v5, v13, v3, v6}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v5, v13, v3, v11, v6}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_0
    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    const/4 v11, 0x0

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v19, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v19, v3

    :goto_3
    const-string v3, "RestrictionPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get content service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object/from16 v19, v3

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowGoogleAccountsAutoSync"

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "RestrictionPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_5

    const-string/jumbo v3, "enabled"

    goto :goto_5

    :cond_5
    const-string/jumbo v3, "disabled"

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Autosync of Google account."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v6

    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_6
    :goto_6
    const-string v2, "allowGoogleAccountsAutoSync"

    const-wide/32 v3, 0x2000000

    const/4 v5, 0x1

    move-object v1, v7

    move v10, v6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v17
.end method

.method public allowGoogleCrashReport(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "googleCrashReportEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "googleCrashReportEnabled"

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-wide/high16 v3, 0x80000000000000L

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowGoogleCrashReport : allow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowKillingActivitiesOnLeave(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "always_finish_activities"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v5, 0x1

    nop

    :cond_0
    and-int/2addr v0, v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowKeepActivities"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    const-string v2, "allowKeepActivities"

    const-wide/32 v3, 0x8000

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    :cond_2
    return v0
.end method

.method public allowLocalContactStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowLocalContactStorage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string v6, "allowLocalContactStorage"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    move v1, v3

    const-string v4, "allowLocalContactStorage"

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/4 v7, 0x1

    move-object v3, p0

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy/isLocalContactStorageAllowed"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_0
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allow local contact storage state input DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RestrictionPolicy"

    const-string v5, "Allow local contact storage state write fail"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public allowLockScreenView(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    :cond_1
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    move-result v5
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    :cond_2
    const v5, 0xffff

    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string v9, "allowLockScreenViews"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    const-string v7, "RestrictionPolicy"

    const-string v8, "allowLockScreenView() failed: cannot get value from edmstorageprovider."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-ne v3, p3, :cond_3

    or-int v3, v5, p2

    goto :goto_2

    :cond_3
    not-int v3, p2

    and-int/2addr v3, v5

    :goto_2
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "allowLockScreenViews"

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    move v0, v5

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "RestrictionPolicy"

    const-string v5, "allowLockScreenView() failed: unexpected exception"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v4, "RestrictionPolicy"

    const-string v5, "allowLockScreenView() failed: INVALID PARAMETER INPUT"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public allowOTAUpgrade(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowOTAUpgrade : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "OTAUpgradeEnabled"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    const-string v7, "OTAUpgradeEnabled"

    const-wide/high16 v8, 0x40000000000000L

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    const-string v3, "com.sec.android.fotaclient"

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    const-string v3, "com.wssyncmldm"

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    const-string v3, "com.ws.dm"

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public allowPowerOff(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed. Caller is not COM container or owner"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "powerOffAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v1, "powerOffAllowed"

    const-wide/16 v2, 0x800

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v7
.end method

.method public allowPowerSavingMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowPowerSavingMode"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "allowPowerSavingMode"

    const-wide/high16 v3, 0x1000000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllowPowerSavingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCurrentPowerSavingMode()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RestrictionPolicy"

    const-string v2, "AllowPowerSavingMode : send intent to PMS"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "enabled"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "flag"

    const/16 v5, 0x200

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "skipdialog"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return v0
.end method

.method public allowSBeam(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowSBeam"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    const-string v2, "allowSBeam"

    const-wide/16 v3, 0x400

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "turn_on"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowSBeam : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string/jumbo v9, "enabled"

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "disabled"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " SBeam."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_1
    return v0
.end method

.method public allowSDCardMove(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowSDCardMove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowSDCardMove"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string v1, "allowSDCardMove"

    const-wide/32 v2, 0x20000000

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v7
.end method

.method public allowSDCardWrite(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSDCardWrite : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "sdCardWriteEnabled"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "sdCardWriteEnabled"

    const-wide v5, 0x800000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    return v2
.end method

.method public allowSVoice(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    const/4 v0, 0x1

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v12

    if-nez v8, :cond_0

    if-eqz v12, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wake_up_lock_screen"

    invoke-static {v3, v4, v11, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_input_control"

    invoke-static {v3, v4, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v4, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "voiceControl"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v4, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_control"

    invoke-static {v4, v5, v11, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    iget-object v1, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowSVoice"

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int v13, v0, v1

    const-string v2, "allowSVoice"

    const-wide/16 v3, 0x20

    const/4 v5, 0x1

    move-object v1, v7

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v8, :cond_1

    invoke-direct {v7, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->rollBackSVoice(I)V

    :cond_1
    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    if-nez v8, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/ActivityManager;

    const/16 v0, 0xc

    invoke-virtual {v3, v0, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "RestrictionPolicy"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string/jumbo v4, "packageName "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_4

    const-string v0, "com.vlingo.midas"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v3

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->removeTask(I)Z

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v14, v10}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move-object/from16 v18, v3

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v4, "RestrictionPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string v3, "Fail getting ActivityManager "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    nop

    move v13, v0

    goto :goto_3

    :cond_4
    move-object/from16 v18, v3

    goto :goto_2

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_7
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowSVoice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    const/4 v14, 0x5

    const/4 v15, 0x1

    const/16 v16, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "RestrictionPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_8

    const-string v3, "allowed"

    goto :goto_4

    :cond_8
    const-string/jumbo v3, "disallowed"

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SVoice."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget v0, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-static/range {v14 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    :goto_5
    return v13
.end method

.method public allowSafeMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowSafeMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)Z

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSafeMode"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RestrictionPolicy"

    const-string v4, "allowSafeMode() : failed with error."

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)Z

    :cond_3
    return v0
.end method

.method public allowScreenPinning(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "lock_to_app_enabled"

    invoke-static {v1, v5, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "screenPinningAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "screenPinningAllowed"

    const-wide/high16 v4, 0x200000000000000L

    const/4 v6, 0x1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "trying to un pin app from different user, just ignore"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "failed taking activity manager service"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    nop

    :cond_2
    :goto_1
    return v1
.end method

.method public allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    invoke-static {v10}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    return v11

    :cond_0
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowSettingsChanges"

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    const-string v2, "allowSettingsChanges"

    const-wide/16 v3, 0x8

    const/4 v5, 0x1

    move-object v1, v7

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowSettingsChanges : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_0
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    move-object v3, v0

    const/16 v0, 0xc

    invoke-virtual {v3, v0, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    const-string v0, "com.android.settings"

    move-object v5, v0

    if-nez v8, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    move-object v13, v0

    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v15, v0

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    const-string v0, "RestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string/jumbo v4, "packageName "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string v0, "com.android.settings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    move-object v11, v0

    if-eqz v11, :cond_1

    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->removeTask(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v3

    :try_start_2
    const-string v3, "com.android.settings"

    invoke-interface {v0, v3, v10}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-object/from16 v20, v5

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    :goto_1
    :try_start_3
    const-string v3, "RestrictionPolicy"

    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string v5, "Fail getting ActivityManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v12, v0

    goto :goto_2

    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v20, v5

    goto :goto_2

    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    :goto_2
    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-object/from16 v5, v20

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.ALLOW_SETTINGS_CHANGES_INTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.action.allow.settings"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x0

    invoke-virtual {v7, v9, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-direct {v7, v10, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSettingsChangeSystemUI(IZ)V

    iget-object v3, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3/isSettingsChangesAllowed"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    :goto_3
    return v12
.end method

.method public allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowShareList"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string v1, "allowShareList"

    const-wide/32 v2, 0x100000

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowShareList : allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " = callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "smartClipAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "smartClipAllowed"

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-wide/high16 v3, 0x100000000000000L

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v0
.end method

.method public allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed. Caller is not COM container or owner"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "statusBarExpansionEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v1, "statusBarExpansionEnabled"

    const-wide/16 v2, 0x100

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    invoke-virtual {p0, v7, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    :cond_1
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowStatusBarExpansion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method public allowStopSystemApp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowStopSystemApp"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "allowStopSystemApp"

    const-wide/16 v3, 0x1000

    const/4 v5, 0x1

    move-object v1, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowStopSystemApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowUsbHostStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 24

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v0, 0x1

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v13

    iget-object v1, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowUsbHostStorage"

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int v14, v0, v1

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowUsbHostStorage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "allowUsbHostStorage"

    const-wide/32 v3, 0x80000

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v14, :cond_1

    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "RestrictionPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_0

    const-string v1, "allowed"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "disallowed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " USB Host Storage."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget v0, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    invoke-static/range {v15 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    if-eqz v14, :cond_5

    if-nez v8, :cond_5

    :try_start_0
    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-nez v0, :cond_2

    const-string v1, "RestrictionPolicy"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    array-length v2, v1

    const-string v3, ""

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v4

    move-object v5, v3

    move v3, v12

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v6, v1, v3

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    const-string/jumbo v12, "usb"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    nop

    invoke-virtual {v0, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v0

    const-string/jumbo v0, "mounted"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    move-object/from16 v23, v1

    const/4 v1, 0x0

    invoke-interface {v4, v5, v0, v1}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    move-object/from16 v23, v1

    goto :goto_2

    :cond_4
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    const/4 v12, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v14, 0x0

    goto :goto_4

    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5
    :goto_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v14, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "RestrictionPolicy"

    const-string v1, "allowUsbHostStorage() : failed to call updateUsbStorageStatebyIntent()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez v13, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "RestrictionPolicy"

    const-string v1, "allowUsbHostStorage set true(false -> true). Sync UsbInterface Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->syncUsbExceptionList(I)I

    :cond_7
    return v14
.end method

.method public allowUserMobileDataLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string v6, "allowMobileDataLimit"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v0, v3

    const-string v4, "allowMobileDataLimit"

    const-wide/32 v5, 0x10000

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v1, v3

    const-string/jumbo v3, "netpolicy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    const-wide/16 v9, -0x1

    iput-wide v9, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    nop

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkPolicy;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/NetworkPolicy;

    invoke-interface {v3, v6}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RestrictionPolicy.allowUserMobileDataLimit() exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method public allowVideoRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowVideoRecording"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowVideoRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "allowVideoRecording"

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-wide/16 v5, 0x2

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v0
.end method

.method public allowVpn(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "nativeVpnAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "nativeVpnAllowed"

    const-wide/high16 v3, 0x20000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getVpnInfoPolicy()Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnectActiveVpnConnections()V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowVpn():set :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string/jumbo v9, "enabled"

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "disabled"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Vpn."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_1
    return v0
.end method

.method public allowWallpaperChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "wallpaperEnabled"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "wallpaperEnabled"

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-wide v3, 0x400000000L

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowWallpaperChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowWifiDirect(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowWifiDirect"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    const-string v2, "allowWifiDirect"

    const-wide/16 v3, 0x2000

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.RESTRICTION_DISABLE_WFD_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowWifiDirect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public applyBackgroundDataRestriction()V
    .locals 15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "RestrictionPolicy"

    const-string v3, "Applying Background Data Policy"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    const-wide/16 v4, 0x400

    const-wide/32 v6, 0x100000

    const-wide/32 v8, 0x40000000

    const-wide/16 v10, 0x64

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v13

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/net/NetworkPolicy;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/net/NetworkPolicy;

    invoke-interface {v2, v14}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    :cond_0
    goto :goto_2

    :cond_1
    if-nez v3, :cond_4

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    const/16 v10, 0x40

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v2, v13, v4}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V

    :cond_2
    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_2
    const-string v4, "RestrictionPolicy"

    const-string v5, "Applied Background Data Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "networkPolicyService is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBackgroundData EX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public checkAdminActivationEnabled(ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageWhiteList(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x10408da

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkPackageSource(ILjava/lang/String;)Z
    .locals 3

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminInstallation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkPackageWhiteList(ILjava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminActivation(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPackageOnExclusionList(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public clearNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: can\'t dump Restriction Policy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Restriction Policy]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "[Restrictions applied for user : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "   "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-long v8, v3, v6

    cmp-long v8, v8, v6

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public enableODETrustedBootVerification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableODETrustedBootVerification  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isSupportTrustedBootForODE(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "RestrictionPolicy"

    const-string v3, "This device doesn\'t support TrustZone for ODE!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "ODETrustedBootVerification"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "ODETrustedBootVerification"

    const-wide v4, 0x80000000L

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "security.mdm.trustedboot"

    const-string/jumbo v6, "true"

    invoke-interface {v2, v5, v6}, Landroid/os/storage/IStorageManager;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "security.mdm.trustedboot"

    const-string/jumbo v6, "false"

    invoke-interface {v2, v5, v6}, Landroid/os/storage/IStorageManager;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "enableODETrustedBootVerification : RemoteException - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    return v0
.end method

.method public enableWearablePolicy(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableGearPolicy() : userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableGearPolicy() : this api doesn\'t support multi-user. userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isValidDevice(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableGearPolicy() : this api called unsupport device. device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const v2, 0xffff

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "wearablePolicyEnabled"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    const/4 v3, 0x1

    if-ne v3, p3, :cond_2

    not-int v3, p2

    and-int/2addr v3, v2

    goto :goto_1

    :cond_2
    or-int v3, v2, p2

    :goto_1
    move v2, v3

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "wearablePolicyEnabled"

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendIntentGearManagerforUpdate(I)V

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "getAllowedFOTAInfo"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "containerID"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "userID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    const-string v3, "corpid"

    const-string/jumbo v4, "version"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SelectiveFotaTable"

    invoke-virtual {v4, v5, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, "corpid"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "version"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAllowedFOTAInfo : corpID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "corpid"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "version"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto :goto_0

    :cond_1
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "getAllowedFOTAInfo: cursor is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    return-object v5
.end method

.method public getAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-wide/32 v2, 0x40000000

    invoke-direct {p0, v2, v3, v1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->updateMdfStatus()I

    move-result v0

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCCModeState : mdm ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", MdfUtils ret = : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "preventAdminActivationWhiteList"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public getSDCardState()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getStorageManager()Landroid/os/storage/StorageManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getUsbExceptionList()I
    .locals 12

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "getUsbExceptionList."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "UsbExceptionMask"

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    move-object v5, v10

    const-string v10, "UsbExceptionMask"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v7, v10

    if-le v7, v11, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    return v11

    :cond_2
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v1, v10

    nop

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_3

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v7, v10

    and-int/2addr v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_2
    const-string v2, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbInterface Exception mask MDM DB = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2, v0, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbInterface Exception mask USB Driver = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "RestrictionPolicy"

    const-string v3, "Failed get DB exception mask"

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, -0x3e8

    :goto_3
    return v1
.end method

.method public isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-wide/32 v0, 0x8000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10408cf

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isActivationLockAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isAdminEnforcementAllowed(II)Z
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v4, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " preventAdminActivation packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPackageOnExclusionList(ILjava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "RestrictionPolicy"

    const-string v6, "RestrictionPolicy.preventAdminInstallation exception : "

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const/4 v4, 0x1

    return v4

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isAirplaneModeAllowed(Z)Z
    .locals 4

    const-wide/16 v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10400a3

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAirplaneModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-wide/32 v0, 0x40000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10408d0

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAndroidBeamAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isAudioRecordAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    const v2, 0x10408dd

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    return v1
.end method

.method public isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/high16 v0, 0x4000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBackgroundDataEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/16 v0, 0x4000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBackgroundProcessLimitAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-wide v0, 0x100000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x1040121

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBackupAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide v0, 0x8000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    const/4 v0, 0x0

    const-wide/32 v1, 0x40000000

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isCCModeEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "security.mdf"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    mdm ret1 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "   ret :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.security.mdf.ux"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCCModeSupported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    const v2, 0x10408de

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_1
    return v0
.end method

.method public isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledEx(ILcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    const v2, 0x104017a

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCameraEnabled ret("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") userId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") cxtInfo.mCallerUid("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") cxtInfo.mContainerId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide v0, 0x400000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCellularDataAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isClipboardAllowedAsUser(ZI)Z
    .locals 4

    const-wide/16 v0, 0x200

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10401c4

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isClipboardAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isClipboardShareAllowedAsUser(I)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/32 v1, 0x20000

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isClipboardShareAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isDataSavingAllowed()Z
    .locals 4

    const-wide/high16 v0, 0x800000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDataSavingAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-wide/16 v0, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10408df

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDeveloperModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide/high16 v1, 0x2000000000000000L

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    return v1
.end method

.method public isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExistEFSFile()Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFactoryResetAllowed(): isExistEFSFile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " DB - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v0, :cond_0

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFactoryResetAllowed(): need to sync DB("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") and efs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Z)Z

    :cond_0
    return v0
.end method

.method public isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x10

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFastEncryptionAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10408d2

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    return v0
.end method

.method public isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/32 v1, 0x4000000

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10408d3

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFirmwareAutoUpdateAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->readData(I)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFirmwareRecoveryAllowed(): ret -  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " param - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v2, :cond_0

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFirmwareRecoveryAllowed(): need to sync DB("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") and param"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-static {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_0
    :goto_0
    return v2
.end method

.method public isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .locals 3

    const-wide/32 v0, 0x2000000

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method public isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    nop

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isGoogleCrashReportAllowedAsUser(I)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/high16 v1, 0x80000000000000L

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGoogleCrashReportAllowed : ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-wide/32 v0, 0x10000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10408d4

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHeadphoneEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v0

    const-wide/high16 v1, 0x10000000000000L

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    const v2, 0x1040401

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHomeKeyEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabledAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isIrisCameraEnabledAsUser(ZI)Z
    .locals 4

    const-wide/high16 v0, 0x400000000000000L

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const v1, 0x1040440

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isIrisCameraEnabledAsUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/32 v0, 0x8000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method public isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    return v1
.end method

.method public isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "isLocalContactStorageAllowed"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLocalContactStorageAllowed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide/32 v1, 0x800000

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLockScreenEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "allowLockScreenViews"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v4, p2

    if-eq p2, v4, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isLockScreenViewAllowed() failed: unexpected exception"

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isLockScreenViewAllowed() failed: INVALID PARAMETER INPUT"

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    nop

    :goto_3
    const-string v0, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLockScreenViewAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isMicrophoneEnabledAsUser(ZI)Z
    .locals 7

    const/4 v0, 0x1

    const-wide/16 v1, 0x4

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMicrophoneEnabledAsUser (owner) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v0, v3, :cond_1

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isMicrophoneEnabledAsUser : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    const v1, 0x1040587

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return v0
.end method

.method public isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide v1, 0x80000000000L

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMockLocationEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isNFCEnabled()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v0

    return v0
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .locals 4

    const-wide v0, 0x200000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10405f8

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNFCEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isNewAdminActivationEnabled(IZ)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result v0

    return v0
.end method

.method public isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isNewAdminInstallationEnabled(IZ)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledInternal(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledInternal(IZ)Z

    move-result v0

    return v0
.end method

.method public isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/high16 v0, 0x1000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNonMarketAppAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlockedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isNonTrustedAppInstallBlockedAsUser(I)Z
    .locals 3

    const-wide/32 v0, 0x400000

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method public isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const-wide v1, 0x80000000L

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isODETruestedBootVerfiicationEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/high16 v0, 0x40000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOTAUpgradeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v0

    const-wide/16 v1, 0x800

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    const v2, 0x10403ae

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPowerOffAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/high16 v0, 0x1000000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method public isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-wide/16 v0, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10408d5

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSBeamAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide/32 v1, 0x20000000

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    const v2, 0x10408d6

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSDCardMoveAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide v0, 0x800000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSDCardWriteAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSVoiceAllowedAsUser(ZI)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getCOMContainerOrOwnerUserId()I

    move-result p2

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v2

    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    const v3, 0x1040a3c

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_1
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSVoiceAllowedAsUser, userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "allowSafeMode"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "isSafeModeAllowed() failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eq v1, v0, :cond_2

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v2, "isSafeModeAllowed() - not allowed "

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSafeModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isScreenCaptureEnabledEx(IZ)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v2, v5

    move v0, v2

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isScreenCaptureEnabledEx : error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-wide v3, 0x10000000000L

    invoke-direct {p0, v3, v4, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    move v0, v1

    nop

    :goto_1
    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    const v1, 0x104091f

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_4
    if-nez v0, :cond_5

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenCaptureEnabledEx() : screencapture has disabled in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenCaptureEnabled : ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isScreenCaptureEnabledInternal(Z)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isScreenPinningAllowedAsUser(ZI)Z
    .locals 4

    const-wide/high16 v0, 0x200000000000000L

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenPinningAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-wide v2, 0x800000000000L

    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSdCardEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSettingsChangesAllowedAsUser(ZI)Z
    .locals 4

    const-wide/16 v0, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10400aa

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSettingsChangesAllowedAsUser, userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    move-result v1

    return v1
.end method

.method public isShareListAllowedAsUser(IZ)Z
    .locals 6

    const-wide/32 v0, 0x100000

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerExistOnDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerId(I)Z

    move-result v0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    const v3, 0x10409ac

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_1
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isShareListAllowed : userId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSmartClipModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSmartClipModeAllowedInternal(Z)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isStatusBarExpansionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v0

    return v0
.end method

.method public isStatusBarExpansionAllowedAsUser(ZI)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p2

    const-wide/16 v0, 0x100

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStatusBarExpansionAllowedAsUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide/16 v1, 0x1000

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isStopSystemAppAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTetheringEnabled : ret1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ret2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ret3 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method public isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide v0, 0x20000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbDebuggingEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-wide/32 v0, 0x80000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x1040ae2

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbHostStorageAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUsbKiesAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x2000000000000L

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    const v1, 0x1040528

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_1
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbMediaPlayerAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide v0, 0x2000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-wide/32 v2, 0x200000

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUseSecureKeypadEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " cxtInfo.mContainerId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " userid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/32 v0, 0x10000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method public isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide/16 v1, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isVideoRecordAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    const v2, 0x10408e6

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    return v1
.end method

.method public isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide/high16 v0, 0x20000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVpnAllowed():ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-wide v1, 0x400000000L

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    const v2, 0x1040b23

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWallpaperChangeAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isValidDevice(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "wearablePolicyEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p2

    if-eq p2, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isWearablePolicyEnabled() failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isWearablePolicyEnabled() failed: INVALID PARAMETER INPUT"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    nop

    :goto_2
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWearablePolicyEnabled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    const-wide/16 v0, 0x2000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x10408dc

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiDirectAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const-wide v0, 0x4000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
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
    .locals 7

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCacheAndNotifyChanges(I)V

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    const-string/jumbo v3, "microphoneEnabled"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v5, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/system/enterprise.conf"

    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v3, "screenCaptureEnabled"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v5, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/system/enterprise.conf"

    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    if-eq v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->rollBackSVoice(I)V

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v4, v3, v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    iget-boolean v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {p0, v3, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v5, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    iput-boolean v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    if-nez v4, :cond_2

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    iput-boolean v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v0, v4, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateSystemUIMonitor(I)V

    :cond_3
    iget-boolean v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)Z

    :cond_4
    sget-boolean v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    sput-boolean v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    :cond_5
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 8

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onContainerCreation("

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

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "useSecureKeypad"

    const/4 v7, 0x0

    move v3, p2

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "RestrictionPolicy"

    const-string v2, "Failed to initialize container"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "onContainerCreation initialize exception : "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onContainerRemoved("

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

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    :try_start_0
    new-array v0, v1, [Ljava/lang/String;

    const-string v2, "UsbExceptionMask"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v4, "UsbExceptionMask"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    sput-boolean v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    goto :goto_0

    :cond_0
    sput-boolean v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    :goto_0
    const-string v1, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreAdminRemoval - Exception mask : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " | Sync : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "RestrictionPolicy"

    const-string v2, "Read DB Error"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 3

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onPreContainerRemoval("

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

    return-void
.end method

.method public onUserMigrated(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceMigrationAgentSecurityCheck()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCacheAndNotifyChanges(I)V

    return-void
.end method

.method public preventNewAdminActivation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " preventAdminActivation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAdminEnforcementAllowed(II)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "preventAdminActivation"

    invoke-virtual {v0, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "RestrictionPolicy"

    const-string v4, "RestrictionPolicy.preventAdminActivation exception : "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminActivation(I)I

    move-result v0

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "preventAdminActivation"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    const-string/jumbo v3, "preventAdminActivation"

    const-wide v4, 0x200000000L

    const/4 v6, 0x0

    move-object v2, p0

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v0
.end method

.method public preventNewAdminInstallation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " preventAdminInstallation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAdminEnforcementAllowed(II)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "preventAdminInstallation"

    invoke-virtual {v0, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminInstallation(I)I

    move-result v0

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "preventAdminInstallation"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    :cond_2
    :goto_0
    move v0, v2

    const-string/jumbo v3, "preventAdminInstallation"

    const-wide v4, 0x100000000L

    const/4 v6, 0x0

    move-object v2, p0

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v0
.end method

.method public setAllowNonMarketApps(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    const-string v0, "RestrictionPolicy"

    const-string v1, "MiscPolicy.setAllowNonMarketApps"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowNonMarketApps : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "install_non_market_apps"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowNonMarketApp"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    const-string v2, "allowNonMarketApp"

    const-wide/high16 v3, 0x1000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v9, "allowed"

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "disallowed"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " installation of non-Google-Play application."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_1
    return v0
.end method

.method public setAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    if-eqz v2, :cond_6

    const-string/jumbo v7, "update_fota_corpid"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAllowedFOTAVersion : corpID =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAllowedFOTAVersion : version =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    if-eqz v1, :cond_1

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    if-eqz v1, :cond_2

    const-string v9, "/"

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    if-eq v8, v7, :cond_3

    if-ne v9, v7, :cond_4

    :cond_3
    const/4 v5, 0x3

    const-string v7, "RestrictionPolicy"

    const-string/jumbo v10, "setAllowedFOTAVersion : ERROR_UPDATE_FOTA_INVALID_PARAMETER(version) "

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x3

    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "setAllowedFOTAVersion : ERROR_UPDATE_FOTA_INVALID_PARAMETER(corpID = null) "

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v5, 0x3

    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "setAllowedFOTAVersion : ERROR_UPDATE_FOTA_INVALID_PARAMETER(bundle = null) "

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAllowedFOTAVersion : caller =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v0, v7, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStatusSelectiveFota(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_b

    if-eqz v1, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_9
    if-eqz p4, :cond_a

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V

    :cond_a
    return v9

    :cond_b
    const/4 v10, 0x2

    if-eq v7, v10, :cond_d

    const/4 v11, 0x3

    if-ne v7, v11, :cond_c

    goto :goto_4

    :cond_c
    const/4 v11, 0x4

    if-ne v7, v11, :cond_10

    const/4 v5, 0x2

    goto :goto_5

    :cond_d
    :goto_4
    if-eqz v1, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_f
    const/4 v5, 0x0

    :cond_10
    :goto_5
    if-nez v5, :cond_16

    if-eqz v1, :cond_11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_11
    if-nez v2, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearSelectiveFota()Z

    move-result v3

    goto :goto_6

    :cond_12
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "adminUid"

    iget v13, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "version"

    invoke-virtual {v11, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "corpid"

    invoke-virtual {v11, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "adminUid"

    iget v14, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v13, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SelectiveFotaTable"

    invoke-virtual {v13, v14, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    const-string v13, "RestrictionPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAllowedFOTAVersion : result = "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-eqz v3, :cond_15

    if-eq v7, v10, :cond_14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const-string v8, "RestrictionPolicy"

    const-string/jumbo v12, "setAllowedFOTAVersion : sendBroadcast : sec.fota.intent.MDM_REGISTER"

    invoke-static {v8, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "com.wssyncmldm"

    const-string v12, "com.samsung.utagent"

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    :goto_7
    move v12, v15

    array-length v13, v8

    if-ge v12, v13, :cond_13

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "sec.fota.intent.MDM_REGISTER"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v14, v8, v12

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v14, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v15, v12, 0x1

    goto :goto_7

    :cond_13
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_14
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v10, "setAllowedFOTAVersion : update version"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_8

    :cond_15
    const/4 v5, 0x4

    :cond_16
    :goto_8
    if-eqz p4, :cond_17

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V

    :cond_17
    return v9
.end method

.method public setBackgroundData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "backgroundDataEnabled"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v4, "backgroundDataEnabled"

    const-wide/high16 v5, 0x4000000000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    const-string/jumbo v3, "netpolicy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v3, v5}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    const-string v4, "RestrictionPolicy"

    const-string v5, "Applied Background Data Removal Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBackgroundData EX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V

    :cond_2
    :goto_1
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBackgroundData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public setBackup(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-nez p2, :cond_1

    :try_start_0
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v5, "RestrictionPolicy"

    const-string v6, "Failed to get BackupManager"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBackup : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    nop

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string v6, "backupEnabled"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v0, v3

    const-string v4, "backupEnabled"

    const-wide v5, 0x100000000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBackup : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RestrictionPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :goto_3
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBackup : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0
.end method

.method public setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getDexPolicy()Lcom/android/server/enterprise/dex/DexPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v2, :cond_1

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v2, "failed to setBluetoothTethering due to Ethernet only mode"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string v7, "bluetoothTetheringEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    const-string v5, "bluetoothTetheringEnabled"

    const-wide v6, 0x8000000000L

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBluetoothTethering : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string/jumbo v5, "enabled"

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "disabled"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " bluetooth tethering."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    if-nez p2, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBluetoothTethering Ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v1, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothTethering : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setCCMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v15

    const-string v0, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCCMode() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " and current MDM state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUCMKeyguardEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "RestrictionPolicy"

    const-string v2, "UCM Keyguard is enabled, so cannot set CC mode"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_0
    new-instance v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    iget-object v2, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    const/4 v2, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v12, v3

    nop

    :try_start_0
    invoke-virtual {v14, v8}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enableCCMode(Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v19, v12

    move-object v6, v14

    move/from16 v18, v15

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move v11, v2

    goto :goto_2

    :goto_1
    move-object v3, v0

    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string/jumbo v4, "setCCMode(): failed to set CCMode with exception"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    :goto_2
    const-string v0, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCCMode() result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_2

    iget-object v0, v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "setCCMode"

    invoke-virtual {v0, v2, v3, v4, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "setCCMode"

    const-wide/32 v3, 0x40000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-nez v0, :cond_1

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCCMode() : failed to update enterprise db. enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    goto :goto_3

    :cond_2
    const-string v0, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCCMode() : failed. securtyManagerService has failed to enforce CCMode. result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_4

    const/4 v0, 0x4

    if-ne v2, v0, :cond_3

    goto :goto_4

    :cond_3
    move v5, v11

    move-wide/from16 v19, v12

    move-object v6, v14

    move/from16 v18, v15

    goto :goto_6

    :cond_4
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v10, 0x5

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v16, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Admin "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has requested to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v8, :cond_5

    :try_start_3
    const-string/jumbo v0, "enable "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move v5, v11

    move-wide/from16 v19, v12

    move-object v6, v14

    move/from16 v18, v15

    goto :goto_7

    :cond_5
    :try_start_4
    const-string v0, "disable "

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CCMode."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v5, v11

    const/4 v11, 0x1

    move-wide/from16 v19, v12

    const/4 v12, 0x1

    move v13, v6

    move-object v6, v14

    move-object/from16 v14, v16

    move/from16 v18, v15

    move-object v15, v0

    move/from16 v16, v17

    :try_start_5
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_6
    return v1

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move v5, v11

    move-wide/from16 v19, v12

    move-object v6, v14

    move/from16 v18, v15

    :goto_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_4
    move-exception v0

    move-wide/from16 v19, v12

    move-object v6, v14

    move/from16 v18, v15

    :goto_8
    move-wide/from16 v3, v19

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v8, v0

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "cameraEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move v11, v0

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "cameraEnabled"

    const-wide v2, 0x1000000000L

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v11, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera"

    invoke-interface {v0, v1, v7}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

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

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.camera"

    invoke-interface {v3, v4, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-eqz v11, :cond_2

    invoke-virtual {p0, p1, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCameraAllowedSystemUI(IZ)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v6, "allowed"

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "disallowed"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " camera."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1/isCameraEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    nop

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "is EDMStorageProvider running?"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail getting ActivityManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    return v10

    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getDexPolicy()Lcom/android/server/enterprise/dex/DexPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v2, :cond_1

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v2, "failed to setCellularData due to Ethernet only mode"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCellularData() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "cellularDataEnabled"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCellularData() : fail to get admin policy value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "cellularDataEnabled"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v0, v5

    if-nez p2, :cond_4

    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_1

    :cond_2
    const-string v6, "RestrictionPolicy"

    const-string/jumbo v7, "setCellularData() : mobile data has already disabled"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const-string v6, "RestrictionPolicy"

    const-string/jumbo v7, "setCellularData() : Failed to get Telephony Manager"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v5

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    if-nez v0, :cond_5

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "cellularDataEnabled"

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_4

    :cond_5
    const-string v6, "cellularDataEnabled"

    const-wide v7, 0x400000000000L

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    :goto_4
    if-eqz v0, :cond_7

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularDataAllowedSystemUI(IZ)V

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    const-string/jumbo v5, "enabled"

    goto :goto_5

    :cond_6
    const-string/jumbo v5, "disabled"

    :goto_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cellular data."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_7
    const-string v1, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCellularData() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public setClipboardEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "clipboardEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "clipboardEnabled"

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-wide/16 v3, 0x200

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setClipboardEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setEnableNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->disableNFC()V

    :cond_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableNFC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "nfcEnabled"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "nfcEnabled"

    const-wide v4, 0x200000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2/isNFCEnabled"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    if-eqz v1, :cond_2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string/jumbo v4, "enabled"

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "disabled"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NFC."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setNFCAllowedSystemUI(IZ)V

    :cond_2
    return v1
.end method

.method public setHeadphoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    const-string/jumbo v3, "h2w"

    nop

    :try_start_0
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHeadphoneState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " old state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " WiredHeadsetOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    const/4 v5, 0x4

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, ""

    invoke-virtual {v6, v5, v0, v7, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, ""

    invoke-virtual {v5, v4, v0, v6, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, ""

    invoke-virtual {v6, v5, v0, v7, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, ""

    invoke-virtual {v5, v4, v0, v6, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "setHeadphoneState"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    move v1, v4

    const-string/jumbo v5, "setHeadphoneState"

    const-wide/32 v6, 0x10000000

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "RestrictionPolicy"

    const-string v6, "RestrictionPolicy.setHeadphoneState() exception : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "setHomeKeyState() : Failed. Caller is not COM container or owner"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "homeKeyEnabled"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "homeKeyEnabled"

    const-wide/high16 v3, 0x10000000000000L

    const/4 v5, 0x1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v0
.end method

.method public setIrisCameraState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIrisCameraState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "iriscameraEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v1, "iriscameraEnabled"

    const-wide/high16 v2, 0x400000000000000L

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v7
.end method

.method public setKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "knox_delegation"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    move v8, v1

    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKnoxDelegationEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "knox_delegation"

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    move-object v1, p0

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "is EDMStorageProvider running?"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public setLockScreenState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setLockScreenState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "lockScreenEnabled"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v2, "lockScreenEnabled"

    const-wide/32 v3, 0x800000

    const/4 v5, 0x1

    move-object v1, p0

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v9, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has changed lock screen state to"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string/jumbo v6, "enabled"

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "disabled"

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v3, p2

    move v7, v0

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_2
    :goto_1
    return v8
.end method

.method public setMicrophoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wake_up_lock_screen"

    invoke-static {v2, v3, v8, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control"

    invoke-static {v2, v3, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    :try_start_0
    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "com.sec.android.app.voicenote.Controller"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sec.android.app.voicenote.Controller"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "setMicrophoneState Broadcast error "

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "microphoneEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    const-string/jumbo v0, "microphoneEnabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v11, v0

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v6, "allowed"

    goto :goto_2

    :cond_2
    const-string/jumbo v6, "disallowed"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " microphone."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    :goto_3
    const-string/jumbo v1, "microphoneEnabled"

    const-wide/16 v2, 0x4

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v9, :cond_5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "microphone_allowed=off"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "microphone_allowed=on"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_5
    :goto_4
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMicrophoneState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public setMockLocation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v8, v2

    if-nez p2, :cond_0

    :try_start_0
    new-instance v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetMockLocationApps()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/2addr v0, v3

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const-string v4, "com.android.settings"

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "killSettings: RemoteException ex -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "mockLocationEnabled"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v0, v2

    const-string/jumbo v3, "mockLocationEnabled"

    const-wide v4, 0x80000000000L

    const/4 v6, 0x1

    move-object v2, p0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    :cond_1
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMockLocationState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public setNonTrustedAppInstallBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "blockNonTrustedApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string v1, "blockNonTrustedApp"

    const-wide/32 v2, 0x400000

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v7
.end method

.method public setSafeModeProperty(Z)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "safe_boot_disallowed"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "safe_boot_disallowed"

    xor-int/lit8 v6, p1, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSafeModeProperty() : already applied. = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
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
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "setSafeModeProperty() failed."

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v0, :cond_3

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSafeModeProperty() failed, allow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    if-eqz v4, :cond_1

    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setScreenCapture: enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " callingUid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :cond_1
    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenCapture failed : result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "screenCaptureEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    move v1, v4

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenCapture : enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " callingUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "screenCaptureEnabled"

    const-wide v8, 0x10000000000L

    const/4 v10, 0x1

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-nez v5, :cond_3

    const-string/jumbo v5, "screenCaptureEnabled"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/data/system/enterprise.conf"

    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz v1, :cond_4

    nop

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenCapture : getTopActivityUserId()= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    move-result v4

    if-ne v4, v0, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v0}, Landroid/view/IWindowManager;->updateScreenshotPolicy(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "setScreenCapture error"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_2
    return v1
.end method

.method public setSdCardState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSdCardState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    move v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "sdCardEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v3, v4

    const-string/jumbo v5, "sdCardEnabled"

    const-wide v6, 0x800000000000L

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-nez p2, :cond_1

    const-string v4, "RestrictionPolicy"

    const-string v5, "SdCard unmount : "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->unmountSdCard(Z)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mountSdCard()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string/jumbo v9, "enabled"

    goto :goto_2

    :cond_2
    const-string/jumbo v9, "disabled"

    :goto_2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " access to external SDCard."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTethering : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public setUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-nez p2, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    nop

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "usbDebuggingEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v0, v4

    const-string/jumbo v5, "usbDebuggingEnabled"

    const-wide v6, 0x20000000000L

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    :cond_1
    if-eqz v0, :cond_3

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "RestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string/jumbo v10, "enabled"

    goto :goto_2

    :cond_2
    const-string/jumbo v10, "disabled"

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " USB debugging."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUSBDebugging : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public setUsbExceptionList(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 9

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbExceprionList. exception mask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isSupportDexRestrict()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "RestrictionPolicy"

    const-string/jumbo v3, "isSupportDexRestrict is false"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v4

    if-le p2, v4, :cond_1

    const-string v4, "RestrictionPolicy"

    const-string v5, "Exception mask is over max value. Max : 131071(USBInterface.OFF)"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "UsbExceptionMask"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    invoke-virtual {v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    invoke-virtual {v6, v7, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    move v3, v6

    goto :goto_0

    :cond_2
    const-string v6, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    invoke-virtual {v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    move v3, v6

    :goto_0
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Usb Exception mask input DB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "RestrictionPolicy"

    const-string v5, "UsbInterface Exception mask insert fail"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public setUsbKiesAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    return v0
.end method

.method public setUsbMassStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    return v0
.end method

.method public setUsbMediaPlayerAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "usbMediaPlayerEnabled"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v0, v3

    const-string/jumbo v4, "usbMediaPlayerEnabled"

    const-wide/high16 v5, 0x2000000000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.knox.permission.KNOX_MTP_DISABLED_INTERNAL"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "edm.intent.action.disable.mtp"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.restriction.permission.MTP_DISABLED"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "mtp"

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "ptp"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RestrictionPolicy"

    const-string v5, "Error in RestrictionPolicy after setting MTP policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :cond_1
    :goto_1
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUSBMediaPlayerAvailability: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string/jumbo v4, "enabled"

    goto :goto_2

    :cond_2
    const-string/jumbo v4, "disabled"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " USB Media Player (MTP)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 21

    move-object/from16 v6, p0

    move/from16 v7, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v8

    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getDexPolicy()Lcom/android/server/enterprise/dex/DexPolicy;

    :cond_0
    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v0

    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v1, :cond_1

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "failed to setUsbTethering due to Ethernet only mode"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    if-nez v7, :cond_4

    iget-object v2, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    move v0, v9

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v12, v3, v0

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_2

    const/4 v5, 0x0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v12, v5

    goto :goto_1

    :cond_4
    move v12, v0

    :goto_1
    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "usbTetheringEnabled"

    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    const-string/jumbo v1, "usbTetheringEnabled"

    const-wide v2, 0x2000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_6

    if-eqz v13, :cond_6

    const/4 v14, 0x5

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "RestrictionPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_5

    const-string/jumbo v1, "enabled"

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "disabled"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " USB Tethering setting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget v0, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-static/range {v14 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    const/4 v9, 0x1

    nop

    :cond_7
    return v9
.end method

.method public setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseSecureKeypad : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseSecureKeypad containerID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSamsungWorkspace(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "setUseSecureKeypad fails. PO not supported."

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "useSecureKeypad"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    const-string/jumbo v2, "useSecureKeypad"

    const-wide/32 v3, 0x200000

    const/4 v5, 0x0

    move-object v1, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    return v0
.end method

.method public setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 23

    move-object/from16 v6, p0

    move/from16 v7, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v8

    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getDexPolicy()Lcom/android/server/enterprise/dex/DexPolicy;

    :cond_0
    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mDexPolicy:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v0

    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v0, v1, :cond_1

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "failed to setWifiTethering due to Ethernet only mode"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_1
    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    const/4 v13, 0x0

    if-nez v7, :cond_4

    iget-object v2, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    move v0, v9

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v14, v3, v0

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v2, v14}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_2

    const/4 v5, 0x0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v13, v9}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    move v14, v5

    goto :goto_1

    :cond_4
    move v14, v0

    :goto_1
    iget-object v0, v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "wifiTetheringEnabled"

    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    const-string/jumbo v1, "wifiTetheringEnabled"

    const-wide v2, 0x4000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_6

    if-eqz v15, :cond_6

    const/16 v16, 0x5

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "RestrictionPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_5

    const-string/jumbo v1, "enabled"

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "disabled"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Wifi Tethering setting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget v0, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v13}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-direct {v6, v9, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringAllowedSystemUI(IZ)V

    :cond_6
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    const/4 v9, 0x1

    nop

    :cond_7
    return v9
.end method

.method public systemReady()V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCacheOnSystemReady()V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "systemReady()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public systemReady(I)V
    .locals 3

    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() : mCurrentPhase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x226

    if-eq p1, v0, :cond_1

    const/16 v0, 0x258

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    goto :goto_0

    :cond_2
    goto :goto_0

    :cond_3
    nop

    :goto_0
    return-void
.end method

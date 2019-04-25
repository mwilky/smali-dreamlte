.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherState;
    }
.end annotation


# static fields
.field private static final ACTION_TETHERING_DENIED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_DENIED"

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z = true

.field static final DEFAULT_MHSIP_RANGE:I = -0x1

.field protected static final DISABLE_PROVISIONING_SYSPROP_KEY:Ljava/lang/String; = "net.tethering.noprovisioning"

.field static final FIRST_MHSIP_RANGE:I = 0x1

.field private static final MAXAP_NOTI_ID:I = 0x1040b50

.field static final SECOND_MHSIP_RANGE:I = 0x2

.field private static final STRING_NCM:Ljava/lang/String; = "ncm"

.field private static final STRING_RNDIS_DIAG_MODEM:Ljava/lang/String; = "rndis,acm,diag"

.field private static final STRING_RNDIS_DM_MODEM:Ljava/lang/String; = "rndis,acm,dm"

.field private static final STRING_RNDIS_MODEM_ADB:Ljava/lang/String; = "rndis,acm,adb"

.field private static final TAG:Ljava/lang/String;

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;

.field private static final VDBG:Z = true

.field public static final WIFIAP_HIGH_TX_POWER_MODE:I = 0x1

.field public static final WIFIAP_LOW_TX_POWER_MODE:I = 0x0

.field private static final WIFIAP_PLUG_STATE_CHANGED:Ljava/lang/String; = "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

.field private static final WIFIAP_PLUG_STATE_CHANGED_OPTION:Ljava/lang/String; = "wifiap_plug_state_changed_option"

.field public static final WIFIAP_TX_POWER_MODE_CHANGED:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_changed"

.field public static final WIFIAP_TX_POWER_MODE_VALUE:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_value"

.field static final WIFI_AP_ON_ICON:[I

.field private static clients:I = 0x0

.field private static final lowBatteryThreshold:I = 0xf

.field private static mDhcpKnoxCustomRange:[Ljava/lang/String;

.field private static mIsPlugged:Z

.field private static mIsTetherActive:Z

.field private static mLastClients:I

.field private static mRVFMode:I

.field private static mTetheringPreState:I

.field private static mTetheringState:I

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private add_client_event:Z

.field private bluetoothTethered:Z

.field callStateListener:Landroid/telephony/PhoneStateListener;

.field private cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

.field private isApSuspended:Z

.field private isWifiTetheredOnly:Z

.field private knoxUri:Landroid/net/Uri;

.field private locale_changed_event:Z

.field private final mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

.field private volatile mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private final mForwardedDownstreams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBootComplete:Z

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private mLastNotificationId:I

.field private mLastVendorNotificationId:I

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mLooper:Landroid/os/Looper;

.field private mLowBatteryNotification:Landroid/app/Notification;

.field private mMaxApNotificationManager:Landroid/app/NotificationManager;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNcmEnabled:Z

.field private final mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

.field private mWifiTetherRequested:Z

.field private misTablet:Z

.field private nextWifiSharingLiteIpRange:I

.field private supportedCPUCoreTable:[I

.field private wifiTethered:Z

.field private wifiVendorTethered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104023d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    sput-boolean v2, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    sput v2, Lcom/android/server/connectivity/Tethering;->clients:I

    sput v2, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    sput v2, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    const-string v0, "192.168.102.2"

    const-string v1, "192.168.102.254"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    sput-boolean v2, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    sput v2, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    sput v2, Lcom/android/server/connectivity/Tethering;->mTetheringPreState:I

    return-void

    :array_0
    .array-data 4
        0x10809fb
        0x10809fc
        0x10809fd
        0x10809fe
        0x10809ff
        0x1080a00
        0x1080a01
        0x1080a02
        0x1080a03
        0x1080a04
        0x1080a05
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    new-instance v3, Landroid/net/util/SharedLog;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    iput-boolean v3, v0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    iput-boolean v3, v0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iput-boolean v3, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    iput-boolean v3, v0, Lcom/android/server/connectivity/Tethering;->isWifiTetheredOnly:Z

    iput-boolean v3, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/connectivity/Tethering;->nextWifiSharingLiteIpRange:I

    iput-boolean v3, v0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-boolean v3, v0, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    iput-boolean v3, v0, Lcom/android/server/connectivity/Tethering;->misTablet:Z

    new-instance v4, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v4, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->callStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v4, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v5, "constructed"

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->mark(Ljava/lang/String;)V

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    iput-object v10, v0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    new-instance v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v11, "TetherMaster"

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v10, v0, v11, v12, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    iput-object v10, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v10}, Lcom/android/internal/util/StateMachine;->start()V

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v10}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v15, Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v11, v10, v12}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    move-result-object v13

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    move-object/from16 v16, v11

    move-object v11, v15

    move-object/from16 v17, v12

    move-object v12, v10

    move-object v3, v15

    move-object/from16 v15, v17

    invoke-direct/range {v11 .. v16}, Lcom/android/server/connectivity/tethering/OffloadController;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v13, 0x50005

    invoke-virtual {v1, v3, v11, v12, v13}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v11, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v15, Landroid/net/util/VersionedBroadcastListener;

    const-string v12, "CarrierConfigChangeListener"

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;

    invoke-direct {v14, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;-><init>(Lcom/android/server/connectivity/Tethering;)V

    move-object v11, v15

    move-object/from16 v16, v14

    move-object v14, v10

    move-object v2, v15

    move-object v15, v3

    invoke-direct/range {v11 .. v16}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    new-instance v2, Lcom/android/server/connectivity/tethering/SimChangeListener;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/connectivity/-$$Lambda$Tethering$G9TtPVJE34-mHCiIrkFoFBxZRf8;

    invoke-direct {v12, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$G9TtPVJE34-mHCiIrkFoFBxZRf8;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-direct {v2, v11, v10, v12}, Lcom/android/server/connectivity/tethering/SimChangeListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

    new-instance v2, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v11, 0x0

    invoke-direct {v2, v0, v11}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->startStateMachineUpdaters()V

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v11, "ro.build.characteristics"

    invoke-virtual {v2, v11}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v11, "tablet"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iput-boolean v11, v0, Lcom/android/server/connectivity/Tethering;->misTablet:Z

    const-string v11, "VZW"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->callStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v13, 0x20

    invoke-virtual {v11, v12, v13}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/knox/custom/SystemManager;)Lcom/samsung/android/knox/custom/SystemManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->enableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->misTablet:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->disableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    return v0
.end method

.method static synthetic access$3500()I
    .locals 1

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    return v0
.end method

.method static synthetic access$3502(I)I
    .locals 0

    sput p0, Lcom/android/server/connectivity/Tethering;->clients:I

    return p0
.end method

.method static synthetic access$3602(I)I
    .locals 0

    sput p0, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    return p0
.end method

.method static synthetic access$3702(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->suspendWifiApIcon(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$4100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    return v0
.end method

.method static synthetic access$4102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$4700()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeUpdateConfiguration()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredVendorNotification()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/SimChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/Tethering;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->supportedCPUCoreTable:[I

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/server/connectivity/Tethering;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->supportedCPUCoreTable:[I

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->nextWifiSharingLiteIpRange:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/connectivity/Tethering;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/Tethering;->nextWifiSharingLiteIpRange:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->ipAddressFamilyTobeUsed()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method private static argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private blockInternetSharingByActiveSync(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ActiveSync] Tried to Untether an unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50078

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "extraRemTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    return-void
.end method

.method private carrierConfigAffirmsEntitlementCheckNotRequired()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string/jumbo v1, "require_entitlement_checks_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    return v3
.end method

.method private changeInterfaceState(Ljava/lang/String;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable start or stop tethering on iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private clearLowBatteryNotification()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    :cond_0
    return-void
.end method

.method private clearTetheredVendorNotification()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    :cond_0
    return-void
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private disableWifiIpServingLocked(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling WiFi tethering request - AP_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->unwanted()V

    return-void

    :cond_0
    nop

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->unwanted()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error disabling Wi-Fi IP serving; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "no interface name specified"

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "specified interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Invalid tether type."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    :cond_1
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    move-result v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    :cond_2
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enableWifiIpServingLocked(Ljava/lang/String;I)V
    .locals 6

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enable IP serving in unknown WiFi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    nop

    :goto_0
    nop

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v3, "Cannot enable IP serving in mode %s on missing interface name"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static getIPv4DefaultRouteInterface(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIPv6DefaultRouteInterface(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_1
    return-object v0
.end method

.method private getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/Tethering$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/connectivity/Tethering$3;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method private getRvfMode()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRvfMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    return v1

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private ipAddressFamilyTobeUsed()I
    .locals 9

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    :cond_0
    const-string v3, "255.255.255.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/net/Inet4Address;

    invoke-static {v4}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v4

    and-int v5, v2, v4

    invoke-static {v5}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    const-string v7, "192.168.43.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    return v8

    :cond_1
    const/4 v8, 0x1

    return v8
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move v1, v2

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current userid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    const-string v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "[ActiveSync] internet sharing is blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "[ActiveSync] internet sharing is NOT blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isLightTheme()Z
    .locals 2

    const-string/jumbo v0, "white"

    const-string/jumbo v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " connectivityManager isWifiConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v0, 0x1

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " wifiManager isWifiConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private isWifiErrored(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    array-length v5, v1

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return v4
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED carrier config change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->reevaluateSimCardProvisioning()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/connectivity/Tethering;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED SIM card change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private makeControlCallback(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/IControlsTethering;
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/Tethering$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/Tethering$4;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    return-object v0
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a tetherable iface, ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active iface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") reported as added, ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding TetheringInterfaceStateMachine for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v10, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->makeControlCallback(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/IControlsTethering;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    move-object v1, v10

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    invoke-direct {v0, v10}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->start()V

    return-void
.end method

.method private maybeUpdateConfiguration()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dunCheck:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method private notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    iput p4, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got notification from stale iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED iface=%s state=%s error=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-ne p3, v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-interface {v0, p1, v5}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x5

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v1, 0x50006

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_2
    packed-switch p3, :pswitch_data_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const v0, 0x50001

    goto :goto_3

    :pswitch_1
    const v0, 0x50002

    nop

    :goto_3
    nop

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private notifyLinkPropertiesChanged(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED LinkProperties update iface=%s state=%s lp=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IControlsTethering;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    const v0, 0x50007

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50007

    invoke-virtual {v1, v3, v2, v4, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got notification from stale iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyTetheringActiveToRIL(Z)V
    .locals 8

    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyTetheringActiveToRIL skip send Tether Active to RIL- phone service is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send Tether Active to RIL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exception occured during send Tether Active to RIL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    sget-object v5, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exception occured during send Tether Active to RIL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :goto_3
    nop

    sget-object v5, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_4
    nop

    :goto_5
    return-void
.end method

.method private pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    iget-object v2, v2, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method private reevaluateSimCardProvisioning()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->hasMobileHotspotProvisionApp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->carrierConfigAffirmsEntitlementCheckNotRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->startProvisionIntent(I)V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "extraSetAlarm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
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

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "extraProvisionCallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
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

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 18

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    const/4 v6, 0x0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    iget-object v7, v1, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    move v9, v6

    move v6, v0

    :goto_0
    :try_start_0
    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v6, v10, :cond_a

    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v14, v1, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget v15, v10, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v15, :cond_1

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    iget v15, v10, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-ne v15, v13, :cond_2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    iget v15, v10, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-ne v15, v11, :cond_3

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    iget v11, v10, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-ne v11, v12, :cond_9

    invoke-virtual {v7, v14}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v11, "ncm0"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v14}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "VZW"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "SPRINT"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v13, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    goto :goto_2

    :cond_6
    :goto_1
    iput-boolean v13, v1, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v11

    sput v11, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    goto :goto_3

    :cond_7
    invoke-virtual {v7, v14}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    iput-boolean v13, v1, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    :cond_8
    :goto_3
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v5}, Lcom/android/server/connectivity/Tethering;->isWifiErrored(Ljava/util/ArrayList;)Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_b

    sget-object v8, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v14, "Wifi Interface Errored. Disable MHS"

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v10, v0}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_b
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x24000000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v14, "availableArray"

    invoke-virtual {v8, v14, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v14, "localOnlyArray"

    invoke-virtual {v8, v14, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v14, "tetherArray"

    invoke-virtual {v8, v14, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v14, "erroredArray"

    invoke-virtual {v8, v14, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v8, v15}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v14, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "sendTetherStateChangedBroadcast %s=[%s] %s=[%s] %s=[%s] %s=[%s]"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const-string v16, "avail"

    aput-object v16, v10, v0

    const-string v0, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    const-string/jumbo v0, "local_only"

    aput-object v0, v10, v12

    const-string v0, ","

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const-string/jumbo v0, "tether"

    const/4 v11, 0x4

    aput-object v0, v10, v11

    const/4 v0, 0x5

    const-string v11, ","

    invoke-static {v11, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    const/4 v0, 0x6

    const-string/jumbo v11, "error"

    aput-object v11, v10, v0

    const/4 v0, 0x7

    const-string v11, ","

    invoke-static {v11, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-static {v15, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    move v0, v13

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Tethering;->notifyTetheringActiveToRIL(Z)V

    const-string v0, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "44010"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    sget-boolean v14, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    if-eqz v14, :cond_d

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.SPECIFIC_TETHER_APN_REQUESTED"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    :cond_d
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.SPECIFIC_TETHER_APN_UNREQUESTED"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_e
    :goto_6
    iget-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    if-eqz v0, :cond_10

    sget v0, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    if-nez v0, :cond_10

    const-string v0, "VZW"

    sget-object v10, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "statusbar"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const v10, 0x1080a21

    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    sget-object v10, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget v11, Lcom/android/server/connectivity/Tethering;->clients:I

    aget v10, v10, v11

    const-string/jumbo v11, "wifi_ap"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v0, v11, v10, v14, v15}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v11, "wifi_ap"

    invoke-virtual {v0, v11, v13}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_f
    const-string v0, "SPRINT"

    sget-object v10, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x1080a20

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    goto :goto_7

    :cond_10
    const-string v0, "VZW"

    sget-object v10, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "statusbar"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const-string/jumbo v10, "wifi_ap"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    const-string/jumbo v10, "wifi_ap"

    invoke-virtual {v0, v10}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredVendorNotification()V

    :cond_12
    :goto_7
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    sput v0, Lcom/android/server/connectivity/Tethering;->mTetheringPreState:I

    iget-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-eqz v9, :cond_13

    goto :goto_8

    :cond_13
    const/4 v12, 0x0

    :goto_8
    add-int/2addr v0, v12

    iget-boolean v10, v1, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    if-eqz v10, :cond_14

    const/16 v17, 0x4

    goto :goto_9

    :cond_14
    const/16 v17, 0x0

    :goto_9
    add-int v0, v0, v17

    sput v0, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mTetheringState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-nez v0, :cond_17

    iget-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    if-nez v0, :cond_17

    const/4 v0, 0x0

    sput v0, Lcom/android/server/connectivity/Tethering;->clients:I

    sput v0, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    const-string v0, "TMO"

    sget-object v10, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "NEWCO"

    sget-object v10, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v10, "clearLowBatteryNotification"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V

    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->isWifiTetheredOnly:Z

    const v0, 0x1080a1c

    const v10, 0x1080a1d

    if-eqz v9, :cond_1e

    iget-boolean v11, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-nez v11, :cond_1b

    iget-boolean v11, v1, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    if-eqz v11, :cond_18

    goto :goto_b

    :cond_18
    const-string v0, "TMO"

    sget-object v11, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "NEWCO"

    sget-object v11, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_a

    :cond_19
    const v0, 0x1080a1e

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_13

    :cond_1a
    :goto_a
    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_13

    :cond_1b
    :goto_b
    const-string v11, "TMO"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d

    const-string v11, "NEWCO"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    goto :goto_c

    :cond_1c
    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_13

    :cond_1d
    :goto_c
    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_13

    :cond_1e
    iget-boolean v11, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-eqz v11, :cond_25

    iget-boolean v11, v1, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    if-nez v11, :cond_22

    if-eqz v9, :cond_1f

    goto :goto_e

    :cond_1f
    const-string v0, "TMO"

    sget-object v11, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "NEWCO"

    sget-object v11, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_d

    :cond_20
    iput-boolean v13, v1, Lcom/android/server/connectivity/Tethering;->isWifiTetheredOnly:Z

    const v0, 0x1080a1f

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_13

    :cond_21
    :goto_d
    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_13

    :cond_22
    :goto_e
    const-string v11, "TMO"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_24

    const-string v11, "NEWCO"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    goto :goto_f

    :cond_23
    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_13

    :cond_24
    :goto_f
    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_13

    :cond_25
    iget-boolean v11, v1, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    if-eqz v11, :cond_2c

    iget-boolean v11, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-nez v11, :cond_29

    if-eqz v9, :cond_26

    goto :goto_11

    :cond_26
    const-string v0, "TMO"

    sget-object v11, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "NEWCO"

    sget-object v11, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_10

    :cond_27
    const v0, 0x1080a1b

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_13

    :cond_28
    :goto_10
    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_13

    :cond_29
    :goto_11
    const-string v11, "TMO"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    const-string v11, "NEWCO"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    goto :goto_12

    :cond_2a
    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_13

    :cond_2b
    :goto_12
    invoke-direct {v1, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_13

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    :goto_13
    if-nez v9, :cond_2f

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v10, "Release DVFS"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_14

    :cond_2d
    const/4 v0, 0x0

    :goto_14
    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v10, :cond_2e

    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v10}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_2e
    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v10, :cond_2f

    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v10}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    :cond_2f
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "extraProvisionCallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
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

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method private setWifiApTxPowerMode(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfigTxPower(I)Z

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.wifiap_tx_power_mode_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.wifiap_tx_power_mode_value"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_tx_power_changed_by_service"

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0xc3

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "txPower"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v4

    return v4

    :cond_2
    return v3
.end method

.method private setWifiTethering(Z)I
    .locals 7

    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isLightTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x103012b

    goto :goto_0

    :cond_0
    const v3, 0x1030128

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showLowBatteryNotification()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x108008a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, ""

    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "biscotto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "Battery is below 15%."

    goto :goto_0

    :cond_1
    const v5, 0x1040a4d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    const v5, 0x1040a4e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.TetherSettings"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x14000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v9, v6

    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-nez v8, :cond_2

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    :cond_2
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput v1, v8, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v3, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v3, v5, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showTetheredNotification(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    return-void
.end method

.method private showTetheredVendorNotification(I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v3

    if-lez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_powersave_mode_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    const-string v6, "TMO"

    sget-object v7, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "NEWCO"

    sget-object v7, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v6, p1

    goto :goto_2

    :cond_4
    :goto_1
    const v6, 0x1080a1d

    :goto_2
    iget v7, v0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    if-eqz v7, :cond_6

    iget v7, v0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    if-ne v7, v6, :cond_5

    iget-boolean v7, v0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    if-nez v7, :cond_5

    iget-boolean v7, v0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    if-nez v7, :cond_5

    return-void

    :cond_5
    iput-boolean v5, v0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    iput-boolean v5, v0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iget v7, v0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    const v9, 0x1040a4f

    const v10, 0x1040a5a

    if-eqz v8, :cond_7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_3

    :cond_7
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_3
    const-string v11, "SPRINT"

    sget-object v12, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const v12, 0x1040a51

    const v13, 0x1040a55

    if-eqz v11, :cond_9

    sget v11, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v11, :cond_9

    sget v11, Lcom/android/server/connectivity/Tethering;->clients:I

    if-ne v11, v4, :cond_8

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_4

    :cond_8
    new-array v11, v4, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v5

    invoke-virtual {v7, v12, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_9
    iget-boolean v11, v0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    if-eqz v11, :cond_a

    const v11, 0x1040a5b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_4
    goto :goto_5

    :cond_a
    const v11, 0x1040a59

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_5
    const-string v14, "VZW"

    sget-object v15, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const v15, 0x1060204

    const-wide/16 v12, 0x0

    if-eqz v14, :cond_b

    new-instance v14, Landroid/app/NotificationChannel;

    const-string/jumbo v9, "wifi_ap_tethered"

    const-string v10, "Mobile Hotspot Active"

    invoke-direct {v14, v9, v10, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v2, v14

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Before mChannel.getImportance() :"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v9, :cond_b

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "wifi_ap_tethered"

    invoke-direct {v9, v10, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v15}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string/jumbo v10, "status"

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_b
    const-string v9, "SPRINT"

    sget-object v10, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v9, :cond_c

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v9, v10, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v15}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string/jumbo v10, "status"

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_c
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.settings"

    const-string v12, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v10, 0x10008000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v10

    move-object/from16 v18, v9

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    const-string v12, "VZW"

    sget-object v13, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    sget v12, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v12, :cond_e

    sget v12, Lcom/android/server/connectivity/Tethering;->clients:I

    if-ne v12, v4, :cond_d

    const v5, 0x1040a56

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_6

    :cond_d
    const v12, 0x1040a52

    new-array v13, v4, [Ljava/lang/Object;

    sget v14, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-virtual {v7, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_e
    iget-boolean v5, v0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    if-eqz v5, :cond_f

    const v5, 0x1040a5a

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_6

    :cond_f
    const v5, 0x1040a4f

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_6

    :cond_10
    const v12, 0x1080a20

    if-ne v6, v12, :cond_13

    sget v12, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v12, :cond_12

    sget v12, Lcom/android/server/connectivity/Tethering;->clients:I

    if-ne v12, v4, :cond_11

    const v5, 0x1040a55

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_6

    :cond_11
    new-array v12, v4, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    const v5, 0x1040a51

    invoke-virtual {v7, v5, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_12
    const v5, 0x1040a57

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    :cond_13
    :goto_6
    const/4 v5, 0x0

    iget-boolean v12, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    iget-boolean v12, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    const/4 v12, 0x0

    if-eqz v5, :cond_14

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    new-instance v14, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v14}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v14, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_7

    :cond_14
    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_7
    iput v6, v0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    const-string v13, "VZW"

    sget-object v14, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v13

    if-eq v13, v4, :cond_15

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "After mChannel.getImportance() :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget v4, v0, Lcom/android/server/connectivity/Tethering;->mLastVendorNotificationId:I

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v12, v4, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startProvisionIntent(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private startStateMachineUpdaters()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.intent.action.TETHERING_DENIED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    :cond_0
    return-void
.end method

.method private stopTrackingInterfaceLocked(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to remove unknown iface ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stop()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing TetheringInterfaceStateMachine for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private suspendWifiApIcon(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, "wifi_ap"

    const v5, 0x10809fa

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v2, "wifi_ap"

    invoke-virtual {v0, v2, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget v5, Lcom/android/server/connectivity/Tethering;->clients:I

    aget v4, v4, v5

    const-string/jumbo v5, "wifi_ap"

    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v2, "wifi_ap"

    invoke-virtual {v0, v2, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private tether(Ljava/lang/String;I)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    move-object v4, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v5, "[ActiveSync] tether() Internet sharing has banned due to security policy."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V

    iget-object v0, v4, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v5, 0x50078

    invoke-virtual {v0, v5}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is banned due to SECURITY POLICY"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    monitor-exit v3

    return v0

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v13, 0x0

    move-object v14, v13

    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string/jumbo v10, "isBluetoothTetheringEnabled"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v14, v0

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isBluetoothTetheringEnabled"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    :cond_1
    if-eqz v14, :cond_2

    :goto_0
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v9, p2

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    move-object v7, v13

    :try_start_4
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const/16 v17, 0x0

    const-string/jumbo v18, "isUsbTetheringEnabled"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isUsbTetheringEnabled"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "true"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v6, v0

    :cond_3
    if-eqz v7, :cond_4

    :goto_2
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v9, p2

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    :try_start_7
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, 0x2

    if-eqz v0, :cond_5

    if-nez v6, :cond_5

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v10, "Tethering USB is not allowed (MDM)"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x4

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not allowed (MDM)"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v15 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return v9

    :cond_5
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v10, "Tethering Bluetooth is not allowed (MDM)"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x4

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not allowed (MDM)"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v15 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return v9

    :cond_6
    const/4 v0, 0x1

    if-nez v4, :cond_7

    sget-object v5, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to Tether an unknown iface: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-class v5, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is an unknown iface for tethering"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return v0

    :cond_7
    iget v5, v4, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eq v5, v0, :cond_8

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to Tether an unavailable iface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is an unavailable iface for tethering"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    monitor-exit v3

    return v0

    :cond_8
    iget-object v0, v4, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const v5, 0x50066

    move/from16 v9, p2

    :try_start_8
    invoke-virtual {v0, v5, v9}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(II)V

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is tethered"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v3

    return v0

    :goto_4
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :goto_5
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :catchall_2
    move-exception v0

    move/from16 v9, p2

    :goto_6
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method private tetherMatchingInterfaces(II)V
    .locals 10

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tetherMatchingInterfaces("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p2, :cond_1

    if-nez p2, :cond_0

    const-string/jumbo v5, "wifi.concurrent.interface"

    const-string/jumbo v6, "swlan0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For STA + SoftAp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "concurrency skip tethering on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v1, v4

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find iface of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Error listing Interfaces"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-class v2, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error listing Interfaces"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;-><init>(Landroid/content/Context;Landroid/net/util/SharedLog;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->updateMobileRequiresDun(Z)V

    return-void
.end method

.method private upstreamWanted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkWifiOnly()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method clearMaxApNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x1040b50

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method protected clearTetheredNotification()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    :cond_0
    return-void
.end method

.method createMaxApNotification()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    const v0, 0x108008a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040b50

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1040b4f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wifiap_maxclient_notification"

    move-object v6, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Landroid/app/NotificationChannel;

    const/4 v10, 0x4

    invoke-direct {v9, v5, v6, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12, v10, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v12, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v12, Landroid/app/Notification$Builder;

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "wifiap_maxclient_notification"

    invoke-direct {v12, v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    new-instance v14, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v14}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v14, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v13, v2, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Tethering:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Configuration:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "Tether state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    packed-switch v6, :pswitch_data_0

    const-string v6, "UnknownState"

    goto :goto_1

    :pswitch_0
    const-string v6, "LocalHotspotState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v6, "TetheredState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v6, "AvailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v6, "UnavailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - lastError = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upstream wanted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current upstream interface(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Hardware offload:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "--short"

    invoke-static {p3, v2}, Lcom/android/server/connectivity/Tethering;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "<log removed for brevity>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetStateInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dhcpRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public hasTetherableConfiguration()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-class v5, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is untethered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignore interface down for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isTetherProvisioningRequired()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v2, "net.tethering.noprovisioning"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->carrierConfigAffirmsEntitlementCheckNotRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v3
.end method

.method public setNcmTethering(Z)I
    .locals 4

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNcmTethering("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v2, "ncm"

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    monitor-exit v1

    return v3

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setUsbTethering(Z)I
    .locals 7

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbTethering("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetStateInternal()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v4, "Set USB Net Destination Address"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    const/16 v5, 0x14c

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v2, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "enabled"

    const-string v5, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v5, "[Tethering always mode] call tetherUsb()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "rndis,acm,dm"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-nez p1, :cond_4

    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v4, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    const-wide/16 v4, 0x20

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    :cond_4
    :goto_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected showTetheredNotification(IZ)V
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_powersave_mode_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    sget-object v6, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STN icon misTablet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/connectivity/Tethering;->misTablet:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mLastNotificationId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ATT"

    sget-object v7, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Lcom/android/server/connectivity/Tethering;->misTablet:Z

    if-eqz v6, :cond_2

    return-void

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    iget v6, v0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    iget v6, v0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-ne v6, v1, :cond_5

    iget-boolean v6, v0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    if-nez v6, :cond_5

    iget-boolean v6, v0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    if-nez v6, :cond_5

    const-string v6, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    sget v8, Lcom/android/server/connectivity/Tethering;->mTetheringPreState:I

    if-ne v6, v8, :cond_5

    return-void

    :cond_4
    return-void

    :cond_5
    iput-boolean v5, v0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    iput-boolean v5, v0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iget v6, v0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v7, v6, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v8, :cond_8

    sget v8, Lcom/android/server/connectivity/Tethering;->clients:I

    if-ne v8, v4, :cond_7

    const v5, 0x1040a55

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_1
    goto :goto_2

    :cond_7
    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10700e7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v9, 0x1040a51

    new-array v10, v4, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/android/server/connectivity/Tethering;->clients:I

    add-int/lit8 v12, v12, -0x2

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    const-string v5, "TMO"

    sget-object v8, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x1040a58

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    :cond_9
    const-string v5, "NEWCO"

    sget-object v8, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x1040a54

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    :cond_a
    const v5, 0x1040940

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_2
    const-string v8, "VZW"

    sget-object v9, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "SPRINT"

    sget-object v9, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_b
    const v8, 0x1040a53

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_c
    const v8, 0x1040a4f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iget-boolean v10, v0, Lcom/android/server/connectivity/Tethering;->isWifiTetheredOnly:Z

    if-eqz v10, :cond_d

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_d
    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.TetherSettings"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const/high16 v10, 0x14000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v12, v9

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    const-string v11, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v11

    const v12, 0x104004a

    const v13, 0x1040046

    const/4 v14, 0x5

    const v15, 0x104004b

    const/4 v7, 0x3

    const v4, 0x1080a1f

    if-lez v11, :cond_11

    if-ne v1, v4, :cond_e

    return-void

    :cond_e
    sget v4, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    if-ne v4, v7, :cond_f

    const v1, 0x1080a1e

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_f
    sget v4, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    if-ne v4, v14, :cond_10

    const v1, 0x1080a1b

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_10
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_11
    const v11, 0x1080a1e

    if-ne v1, v11, :cond_12

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_12
    if-ne v1, v4, :cond_13

    const v4, 0x104004c

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_13
    const v4, 0x1080a1b

    if-ne v1, v4, :cond_14

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_14
    sget v4, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    if-ne v4, v7, :cond_15

    const v4, 0x1040049

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_15
    sget v4, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    if-ne v4, v14, :cond_16

    const v4, 0x1040047

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_16
    sget v4, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    const/4 v7, 0x6

    if-ne v4, v7, :cond_17

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_4

    :cond_17
    const v4, 0x1040048

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_18
    :goto_4
    iget-object v4, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v4, :cond_19

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v7, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v4, v7, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v4, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v11, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v12, 0x1060204

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v7, "status"

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_19
    const/4 v4, 0x0

    iget-boolean v7, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-eqz v4, :cond_1a

    iget-object v7, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v11, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v11}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v11, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_1a
    iget-object v7, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_5
    iput v1, v0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    iget v7, v0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v7, v11, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    :goto_0
    return-void
.end method

.method public stopTethering(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    :cond_0
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untethering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherState;->isCurrentlyServing()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to untether an inactive iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    monitor-exit v0

    return v2

    :cond_1
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50067

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public untetherAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    return-void
.end method

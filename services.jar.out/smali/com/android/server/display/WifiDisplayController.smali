.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;,
        Lcom/android/server/display/WifiDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_DISCONNECTION_REQUEST:Ljava/lang/String; = "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DEFAULT_GO_INTENT:I = 0xd

.field private static final DEFAULT_SCAN_CHANNEL:I = 0x64b

.field private static final DISCOVER_PEERS_FULL_SCAN_INTERVAL_MILLIS:I = 0x3e8

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field private static final DLNA_MAX_VOLUME:I = 0x64

.field private static final DLNA_MIN_VOLUME:I = 0x0

.field private static final FULL_SCAN_CHANNEL:I = 0x0

.field private static final INTENT_ACTION_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final NOTIFY_CLIENT_CONNECTED:I = 0x1

.field private static final NOTIFY_DISPLAY_VOLUME_STATUS:I = 0x46

.field private static final NOTIFY_DISPLAY_VOLUME_SUPPORT:I = 0x3c

.field private static final NOTIFY_GET_PROCESS_NAME_BY_PID:I = 0x50

.field private static final NOTIFY_REQUEST_TCP_SWITCHING:I = 0x5a

.field private static final NOTIFY_ROTATION_CHANGED:I = 0xa

.field private static final NOTIFY_SCREEN_WAKE_UP:I = 0x32

.field private static final NOTIFY_SUPPORT_INITIATE_MIRRORING:I = 0x28

.field private static final NOTIFY_SUPPORT_UIBC:I = 0x9

.field private static final NOTIFY_TRANSPORT_MODE:I = 0x7

.field private static final NOTIFY_WEAK_NETWORK:I = 0x1e

.field private static final NOTIFY_WFD_ENGINE_PAUSE:I = 0x3

.field private static final NOTIFY_WFD_ENGINE_RESUME:I = 0x2

.field private static final REASON_LOST_RTSP:I = 0x4

.field private static final REASON_NOT_DEFINED:I = 0x1

.field private static final REASON_NO_HDCP_KEY:I = 0x3

.field private static final REASON_RTSP_TIME_OUT:I = 0x2

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x1e

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final RTSP_TIMEOUT_SECONDS_MIRRORLINK_MODE:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"

.field private static final TCP_MODE:I = 0x1

.field private static final UDP_MODE:I = 0x0

.field private static final WFD_SCAN_TIMER:I = 0x2710

.field private static final WIFI_DISPLAY_STATE_OFF:I = 0x0

.field private static final WIFI_DISPLAY_STATE_ON:I = 0x1

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mControllerUtils:Lcom/android/server/display/ControllerUtils;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectByUser:Z

.field private mDisconnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private mDisplayCurrentVolume:I

.field private mDisplayMaxVolume:I

.field private mDisplayMinVolume:I

.field private mDlnaCurrentVolume:I

.field private mDvfsManagerCPUMinNormal:Lcom/samsung/android/os/SemDvfsManager;

.field private mDvfsManagerCPUMinSecure:Lcom/samsung/android/os/SemDvfsManager;

.field private mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private final mHandler:Landroid/os/Handler;

.field private final mInitiateReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDisplayVolumeMuted:Z

.field private mIsDlnaVolumeMuted:Z

.field private mIsFirstConnection:Z

.field private mIsSupportDisplayVolumeControl:Z

.field private mIsSupportInitiateMirroring:Z

.field private mIsWifiDisplaySinkConnected:Z

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private final mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mP2pFrequency:I

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRenameCapablity:Z

.field private mRequestedScanChannel:I

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private mScreenWakeUpByUser:Z

.field private mStreamVolume:I

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTransportMode:I

.field private mWfdAppMonitor:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field private mWfdRestartTriggerd:Z

.field private mWfdUibcManager:Lcom/android/server/display/WFDUibcManager;

.field private final mWifiDisable:Ljava/lang/Runnable;

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiTurnedOnByController:Z

.field private remoteDisplayListener:Landroid/media/RemoteDisplay$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64b

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    new-instance v1, Lcom/android/server/display/WifiDisplayController$9;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$9;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$19;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->remoteDisplayListener:Landroid/media/RemoteDisplay$Listener;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$21;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$29;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$30;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$31;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$31;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mInitiateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$32;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$32;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    const-string/jumbo v1, "wifip2p"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.WIFI_DISPLAY_FORCE_UDP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$1;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_display_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v4, "wifi_display_certification_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v4, "wifi_display_wps_config"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v4, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v4}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    new-instance v4, Lcom/android/server/display/ControllerUtils;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/display/ControllerUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    new-instance v4, Lcom/android/server/display/WFDUibcManager;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/display/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/android/server/display/WFDUibcManager;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_display_on"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v4, "SMART_VIEW_NORMAL"

    const/16 v5, 0x15

    invoke-static {v0, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDvfsManagerCPUMinNormal:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v4, "SMART_VIEW_SECURE"

    invoke-static {v0, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDvfsManagerCPUMinSecure:Lcom/samsung/android/os/SemDvfsManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/ControllerUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanResults()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mInitiateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$300()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/android/server/display/WifiDisplayController;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->sendSSRMRequestIntent(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsFirstConnection:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsFirstConnection:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/android/server/display/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportDisplayVolumeControl:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->getBluetoothMacAddress(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportDisplayVolumeControl:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->wakeUpScreen()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/display/WifiDisplayController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(II)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->setLastConnectedWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->registerGameManagerCallback()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->sendBroadcastSupportInitateMirrroing()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->sendDisconnectionRequestBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unregisterGameManagerCallback()V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mP2pFrequency:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->finish()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mStreamVolume:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mStreamVolume:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWifiDisplaySinkConnected:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWifiDisplaySinkConnected:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getScreenLockType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->sendBroadcastTransportMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I

    return v0
.end method

.method static synthetic access$7102(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I

    return p1
.end method

.method static synthetic access$7200(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayCurrentVolume:I

    return v0
.end method

.method static synthetic access$7202(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayCurrentVolume:I

    return p1
.end method

.method static synthetic access$7300(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z

    return v0
.end method

.method static synthetic access$7302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7502(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRenameCapablity:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->getProcessNameByPid(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdAppMonitor:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;)Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdAppMonitor:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    iget-object v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v0, v11, :cond_0

    iget v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v0, v12, :cond_0

    iget v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    if-ne v0, v13, :cond_0

    iget v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    if-eq v0, v14, :cond_1

    :cond_0
    iget-object v15, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v8, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iput-object v10, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object v11, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iput v12, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iput v13, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    iput v14, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    iget-object v7, v9, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/display/WifiDisplayController$24;

    move-object v0, v6

    move-object v1, v9

    move-object v2, v8

    move-object v3, v11

    move-object v4, v15

    move-object v5, v10

    move-object v9, v6

    move v6, v12

    move-object v10, v7

    move v7, v13

    move-object/from16 v16, v8

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private computeFeatureState()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_1

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and not part way through connecting to a different device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_2

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method private connectWifiDisplayViaAp(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 9

    const-string v0, "WifiDisplayController"

    const-string v1, "connectWifiDisplayViaAp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    const-string v0, "WifiDisplayController"

    const-string v1, "RemoteDisplay already existed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStopScan()V

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(II)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->setUri(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    :goto_0
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listening for RTSP connection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from Wifi display via AP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->remoteDisplayListener:Landroid/media/RemoteDisplay$Listener;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getInitParam()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    invoke-static/range {v3 .. v8}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)Landroid/media/RemoteDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x5a

    goto :goto_1

    :cond_2
    const/16 v1, 0x1e

    :goto_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createConnectConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 6

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    const-string/jumbo v1, "eng"

    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xd

    if-eqz v1, :cond_0

    const-string/jumbo v4, "wlan.wfd.gointent"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    goto :goto_0

    :cond_0
    iput v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    :goto_0
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set groupOwnerIntent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iconIdx :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/display/SemDeviceInfo;->isAuSharingLinkMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    const/16 v4, 0x64b

    if-ne v3, v4, :cond_1

    iget v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v3, v3, 0x600

    if-lez v3, :cond_2

    :cond_1
    const-string v3, "WifiDisplayController"

    const-string/jumbo v4, "set PERSISTENT_NET_ID"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    iput v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    :cond_2
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createConnectConfig() :: name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/display/SemDeviceInfo;->isPinRequest()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v4, 0x1

    iput v4, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    :cond_6
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v3, Landroid/net/wifi/WpsInfo;->setup:I

    :cond_7
    :goto_1
    return-object v0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 9

    new-instance v8, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v8
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    :goto_0
    return-object v0
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    :goto_0
    return-object v0
.end method

.method private disconnect()V
    .locals 3

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnect() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method private disconnectionProcess()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v2, :cond_0

    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped listening for RTSP connection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v3, :cond_6

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting from Wifi display: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_3
    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$15;

    invoke-direct {v5, p0, v0}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$16;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_0
    return v2

    :cond_6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v3, :cond_8

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceling connection to Wifi display: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$17;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return v2

    :cond_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {p0, v3, v1}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    return v2

    :cond_a
    return v1
.end method

.method private finish()V
    .locals 3

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mStreamVolume:I

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRenameCapablity:Z

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsFirstConnection:Z

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isSwitchingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v1

    new-instance v2, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v2}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v2, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaConnectionState(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v1}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayStateBroadcast(I)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    invoke-virtual {v0}, Lcom/android/server/display/ControllerUtils;->stopControllerService()V

    return-void
.end method

.method private getBluetoothMacAddress(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, ""

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "serviceData"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->stringToByte(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x3

    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_3

    aget-byte v7, v5, v6

    and-int/2addr v7, v1

    if-lez v7, :cond_2

    aget-byte v7, v5, v6

    and-int/2addr v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x6

    if-lez v7, :cond_1

    new-array v7, v9, [B

    add-int/lit8 v10, v6, 0x7

    invoke-static {v5, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v7}, Lcom/android/server/display/WifiDisplayController;->parseMacAddressToUpperString([B)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_1

    :cond_1
    new-array v7, v9, [B

    add-int/lit8 v10, v6, 0x1

    invoke-static {v5, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v7}, Lcom/android/server/display/WifiDisplayController;->parseMacAddressToUpperString([B)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v8

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    goto :goto_3

    :cond_4
    :goto_2
    return-object v2

    :catch_0
    move-exception v3

    const-string v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getBluetoothMacAddress, error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v2
.end method

.method private getInitParam()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    nop

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v1

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "width"

    const/16 v5, 0x320

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "height"

    const/16 v5, 0x1e0

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "fps"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_audio"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_uibc"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_pdm"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "device_type"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v1, "width"

    const/16 v5, 0x780

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "height"

    const/16 v5, 0x438

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "fps"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_audio"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "pending_setup"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/display/SemDeviceInfo;->isPendingRequest()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "audio_only"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/display/SemDeviceInfo;->isAudioOnlyMode()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_uibc"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_pdm"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "device_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isInitiateMirroringMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "device_type"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    if-ne v1, v4, :cond_3

    const-string/jumbo v1, "frequency"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mP2pFrequency:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "frequency"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "WifiDisplayController"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :goto_2
    return-object v0
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain address of network interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because it had no IPv4 addresses."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain address of network interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x216a

    return v0

    :cond_0
    const/16 v0, 0x1c44

    return v0
.end method

.method private getProcessNameByPid(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$34;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$34;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getScreenLockType()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    if-eqz v1, :cond_4

    const v2, 0x8000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    const-string/jumbo v2, "none"

    return-object v2

    :cond_0
    const-string v2, "WifiDisplayController"

    const-string v3, "LockScreenType : Password"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "password"

    return-object v2

    :cond_1
    const-string v2, "WifiDisplayController"

    const-string v3, "LockScreenType : Pin"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "pin"

    return-object v2

    :cond_2
    const-string v2, "WifiDisplayController"

    const-string v3, "LockScreenType : Pattern"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "pattern"

    return-object v2

    :cond_3
    const-string v2, "WifiDisplayController"

    const-string v3, "LockScreenType : Bio"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bio"

    return-object v2

    :cond_4
    const-string v2, "WifiDisplayController"

    const-string v3, "LockScreenType : Swipe"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "swipe"

    return-object v2
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v0

    new-instance v7, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    goto :goto_0

    :goto_1
    move-object v1, v7

    move v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WifiDisplayController"

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$20;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdRestartTriggerd:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->startCastingDialog()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdRestartTriggerd:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private handleConnectionFailure(I)V
    .locals 7

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi display connection failed!, mDesiredDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10409da

    const/4 v1, 0x1

    const v2, 0x103012b

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v5, 0x1040b2e

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x1040b30

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v5, 0x1040b2f

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestApDeviceDisconnect()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePeersChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    return-void
.end method

.method private handleScanFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$14;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleScanResults()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/WifiDisplay;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v4, v1, v2

    iget v5, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {v4, v5}, Landroid/hardware/display/WifiDisplay;->setIconIdx(I)V

    aget-object v4, v1, v2

    iget v5, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {v4, v5}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    aget-object v4, v1, v2

    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->getBluetoothMacAddress(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/display/WifiDisplay;->setBluetoothMacAddress(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v3, p0, v1}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleScanStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSendStatusChangeBroadcast(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "do not update wfd state in SideSyncMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "wifi state turn off, but wfd state on"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    :goto_0
    return-void
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWifiRestricted()Z
    .locals 8

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    move-object v7, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v4, "isWifiEnabled"

    const-string/jumbo v2, "true"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_1
    const-string/jumbo v1, "isWifiEnabled"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiDisplayController"

    const-string v2, "Restriction policy block wifi change"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    :goto_2
    const/4 v1, 0x0

    return v1
.end method

.method private parseMacAddressToUpperString([B)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method private registerGameManagerCallback()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "gamemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v0}, Lcom/samsung/android/game/IGameManagerService;->identifyForegroundApp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "WifiDisplayController"

    const-string v2, "Set low latency mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "lowl"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/game/IGameManagerService;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v0

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback. ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "failed to get game manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private reportFeatureState()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requestPeers()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    return-void
.end method

.method private sendBroadcastSupportInitateMirrroing()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SUPPORT_INITIATE_MIRRORING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "device_name"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "device_p2p_mac_address"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/display/SemDeviceInfo;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastSupportInitateMirrroing : Device name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Device address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/display/SemDeviceInfo;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendBroadcastTransportMode()V
    .locals 4

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcastTransportMode mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "TCP"

    goto :goto_0

    :cond_0
    const-string v2, "UDP"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "CONNECTION_MODE"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendDisconnectionRequestBroadcast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendEventToSemDeviceStatusListener(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendRemoteDisplayStateChangeEvent(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendSSRMRequestIntent(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$35;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$35;-><init>(Lcom/android/server/display/WifiDisplayController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLastConnectedWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 2

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "setLastConnectedWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->setLastConnectedWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_0
    return-void
.end method

.method private stopPeerDiscovery()V
    .locals 3

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "stopPeerDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const v1, 0x2208f

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->callSECApi(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Message;)I

    return-void
.end method

.method private stringToByte(Ljava/lang/String;)[B
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    mul-int v3, v1, v2

    mul-int v4, v1, v2

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "WifiDisplayController"

    const-string/jumbo v3, "stringToByte, NumberFormatException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private tryDiscoverPeers(I)V
    .locals 5

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryDiscoverPeers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unadvertiseDisplay()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method private unregisterGameManagerCallback()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGameCallback:Lcom/samsung/android/game/IGameManagerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/game/IGameManagerService;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiDisplayController"

    const-string/jumbo v2, "mGameManagerService.unregisterCallback error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateConnection()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnection, mConnectedDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRemoteDisplay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectionProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_4

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->createConnectConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$18;

    invoke-direct {v5, p0, v2}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->remoteDisplayListener:Landroid/media/RemoteDisplay$Listener;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getInitParam()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    move-object v4, v2

    invoke-static/range {v4 .. v9}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)Landroid/media/RemoteDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x78

    goto :goto_1

    :cond_6
    const/16 v3, 0x1e

    :goto_1
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDesiredDevice: new information "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    :cond_0
    return-void
.end method

.method private updateScanState()V
    .locals 3

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScanState() mScanRequested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWfdEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDiscoverPeersInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-nez v0, :cond_3

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting Wifi display scan, mRemoteDisplayConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers(I)V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "removeCallbacks retry scan"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "WifiDisplayController"

    const-string v1, "Stopping Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    const/16 v0, 0x64b

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSettings()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    const-string/jumbo v1, "wifi_display_certification_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettings : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "wifi_display_wps_config"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiRestricted()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "WifiDisplayController"

    const-string/jumbo v2, "wifi restriction is off, turn on wifi by controller."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdRestartTriggerd:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWifiDisplaySinkConnected:Z

    if-nez v1, :cond_4

    const-string v1, "WifiDisplayController"

    const-string v2, "Turn off wifi after 1sec."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    return-void
.end method

.method private updateWfdEnableState()V
    .locals 5

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWfdEnableState:: mWifiDisplayOnSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWifiP2pEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWfdEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWfdEnabling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->setScreenSharing(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtection(Z)V

    const/16 v0, 0x1c44

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    const/16 v0, 0x32

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setScreenSharing(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v4, p0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    :cond_3
    :goto_0
    return-void
.end method

.method private wakeUpScreen()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$33;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$33;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiDisplayOnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiP2pEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWfdEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWfdEnabling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNetworkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScanRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDiscoverPeersInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConnectingDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisconnectingDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCancelingDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConnectedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplayInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplayConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplaySurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method public getDeviceMaxVolume()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I

    return v0
.end method

.method public getDeviceMinVolume()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I

    return v0
.end method

.method public getLastConnectedWifiDisplay(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getLastConnectedWifiDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLastConnectedWifiDisplay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    :cond_0
    return-void
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_2
    goto :goto_0

    :cond_3
    return v2
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeviceVolumeMuted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsDlnaVolumeMuted:Z

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z

    return v0
.end method

.method public isDongleRenameSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRenameCapablity:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public renameDongle(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renameDongle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "res"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public requestApDeviceDisconnect()V
    .locals 2

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "requestApDeviceDisconnect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->sendEventToSemDeviceStatusListener(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    :cond_0
    return-void
.end method

.method public requestConnect(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestDeviceConnect(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 5

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDeviceConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->isInitiateMirroringMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mInitiateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->connectWifiDisplayViaAp(Landroid/hardware/display/SemDeviceInfo;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public requestDisconnect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method public requestPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    :cond_0
    return-void
.end method

.method public requestResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    :cond_0
    return-void
.end method

.method public requestStartScan()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_0
    return-void
.end method

.method public requestStartScan(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_0

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestStartScan setChannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_0
    return-void
.end method

.method public requestStopScan()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    :cond_0
    return-void
.end method

.method public restartWifiDisplay()V
    .locals 2

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "restartWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdRestartTriggerd:Z

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method public sendDeviceVolumeKeyEvent(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceVolumeKeyEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    invoke-virtual {v2, p1}, Lcom/android/server/display/ControllerUtils;->keyEventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/display/WifiDisplayController;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/display/WifiDisplayController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v0, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v4, 0x1040b2d

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v5}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/WifiDisplayController;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v0, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setParam, sendDeviceVolumeKeyEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    invoke-virtual {v5, p1}, Lcom/android/server/display/ControllerUtils;->keyEventToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const-string/jumbo v1, "vkev"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    if-ne p1, v1, :cond_4

    const-string/jumbo v0, "vkev"

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const-string/jumbo v0, "mkev"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    if-ne p1, v2, :cond_6

    const-string/jumbo v0, "mkev"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public sendWifiDisplayStateBroadcast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAppListSupportingDirectStream(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppListSupportingDirectStream : applist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const-string/jumbo v2, "dsal"

    invoke-virtual {v1, v2, v0}, Landroid/media/RemoteDisplay;->setParam(Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 4

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mDlnaCurrentVolume:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsDlnaVolumeMuted:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "minVol"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "maxVol"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "curVol"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mDlnaCurrentVolume:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isMute"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsDlnaVolumeMuted:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V

    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceVolume : volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mDlnaCurrentVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDeviceVolumeMuted(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsDlnaVolumeMuted:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "minVol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "maxVol"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "curVol"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mDlnaCurrentVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "isMute"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsDlnaVolumeMuted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceVolumeMuted :  muted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsDlnaVolumeMuted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mDlnaCurrentVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteDisplay;->setParam(Ljava/lang/String;Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public setScanningChannel(I)V
    .locals 3

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanningChannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    return-void
.end method

.method public setWifiDisplayCPUBoost(ILandroid/os/IBinder;)V
    .locals 3

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiDisplayCPUBoost : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "disableCPUBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDvfsManagerCPUMinSecure:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDvfsManagerCPUMinNormal:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdAppMonitor:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdAppMonitor:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    :cond_1
    const v0, 0x124f80

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDvfsManagerCPUMinNormal:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDvfsManagerCPUMinSecure:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto :goto_0

    :cond_2
    const v0, 0xf4240

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDvfsManagerCPUMinSecure:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDvfsManagerCPUMinNormal:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setWifiDisplayRealSize(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiDisplayRealSize : value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dprs"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCastingDialog()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent call exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startUIBCVirtualSoftkey(Z)V
    .locals 4

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startStopUIBCVirtualSoftkey() isAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.UIBCVIRTUALSOFTKEY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.uibcvirtualsoftkey"

    const-string v3, "com.sec.android.uibcvirtualsoftkey.UIBCVirtualSoftkeyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "Start"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiDisplayController"

    const-string v2, "Exception showHideUIBCVirtualSoftkey() : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaConnectionState(I)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaUid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDlnaPlayerType(I)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isPendingRequest()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/SemDeviceInfo;->setPendingRequest(Z)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    invoke-virtual {v0}, Lcom/android/server/display/ControllerUtils;->startControllerService()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestResume()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestPause()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getDlnaConnectionState()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->getDlnaPlayerType()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->handleSendStatusChangeBroadcast(II)V

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->sendRemoteDisplayStateChangeEvent(II)V

    :cond_4
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceState : device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/display/SemDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

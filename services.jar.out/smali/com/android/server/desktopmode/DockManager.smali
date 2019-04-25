.class Lcom/android/server/desktopmode/DockManager;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DockManager$DockMsgState;,
        Lcom/android/server/desktopmode/DockManager$DockHandler;
    }
.end annotation


# static fields
.field private static final MSG_DOCK_FAST_CHARGING_ERROR:I = 0xdd

.field private static final MSG_DOCK_FAST_CHARGING_ERROR_UNDEFINED:I = 0xdc

.field private static final MSG_DOCK_FAST_CHARGING_EXTRA_ERROR_UPDATED:I = 0xf1

.field private static final MSG_DOCK_FAST_CHARGING_EXTRA_UNDEFINED:I = 0xf0

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_CREATE:I = 0xc9

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_DESTROY:I = 0xcc

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_POWER_INFO:I = 0xca

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_SET_ENABLE:I = 0xcb

.field private static final MSG_DOCK_FAST_CHARGING_REQUEST_UNDEFINED:I = 0xc8

.field private static final MSG_DOCK_FAST_CHARGING_RESPONSE_POWER_INFO:I = 0xd3

.field private static final MSG_DOCK_FAST_CHARGING_RESPONSE_SET_ENABLE:I = 0xd4

.field private static final MSG_DOCK_FAST_CHARGING_RESPONSE_UNDEFINED:I = 0xd2

.field private static final MSG_DOCK_FAST_CHARGING_VERSION_DSVERSION_UPDATED:I = 0xe7

.field private static final MSG_DOCK_FAST_CHARGING_VERSION_UNDEFINED:I = 0xe6

.field private static final MSG_DOCK_REQUEST_UPDATE_DOCK_LIB_STATUS:I = 0x96

.field private static final MSG_TYPE_ERROR:I = 0x66

.field private static final MSG_TYPE_EXTRA:I = 0x68

.field private static final MSG_TYPE_REQUEST:I = 0x64

.field private static final MSG_TYPE_RESPONSE:I = 0x65

.field private static final MSG_TYPE_VERSION:I = 0x67

.field private static final NO_CHARGER_POWER:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final mInterfaceNameSource:Ljava/lang/String; = "wlan0"

.field private static final mInterfaceNameTarget:Ljava/lang/String; = "eth0"

.field private static final sDSVersionForBootMode:Ljava/lang/String; = "FFFF"

.field private static final sDSVersionForDefault:Ljava/lang/String; = "####"


# instance fields
.field private mAdaptiveFastChargingSettingsEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

.field private mDockChargerPower:I

.field private mDockChargerSupport:I

.field private mDockControlLibError:Landroid/util/SparseBooleanArray;

.field private mDockFastChargingState:I

.field private mDockFastChargingStateReason:Ljava/lang/String;

.field private mDockVersion:Ljava/lang/String;

.field private mDockVersionExtra:Ljava/lang/String;

.field private mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

.field private mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

.field private mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

.field private mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

.field private mLastDockVersion:Ljava/lang/String;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field private final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field private final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field private mVirtualMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingStateReason:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    iput v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    new-instance v1, Lcom/android/server/desktopmode/DockManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$1;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    iput-object p3, p0, Lcom/android/server/desktopmode/DockManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    new-instance v1, Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/server/desktopmode/DockManager$DockHandler;-><init>(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DockManager$1;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    new-instance v0, Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const/16 v3, 0xc8

    const/16 v4, 0xd2

    const/16 v5, 0xdc

    const/16 v6, 0xe6

    const/16 v7, 0xf0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/DockManager$DockMsgState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/desktopmode/DockManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/desktopmode/DockManager$2;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/desktopmode/DockManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager;->updateDockVersionToSettings(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager;->updateDockLibStatus(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/desktopmode/DockManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager;->createDockControlLib(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/desktopmode/DockManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager;->destroyDockControlLib(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/desktopmode/DockManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/desktopmode/DockManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/desktopmode/DockManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/desktopmode/DockManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/DockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->initialize()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DockManager;->isDexPadConnected(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/DockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/DockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/DockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->setVirtualMacAddress()V

    return-void
.end method

.method private convertVirtualMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v1, v5

    int-to-byte v1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0x100

    or-int/2addr v1, v3

    invoke-static {v1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    nop

    const/16 v6, 0xe

    const/16 v7, 0xc

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-byte v8, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit16 v8, v8, 0x100

    xor-int/lit8 v8, v8, 0x40

    invoke-static {v8, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private createDockControlLib(I)V
    .locals 5

    const v0, 0xa029

    const v1, 0xa020

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string v1, "createDockControlLib is not supported"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/desktopmode/DockManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$3;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDockControlLib dockType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const/16 v2, 0x64

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    invoke-direct {v1, v2, p1, v3}, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;-><init>(Landroid/content/Context;ILcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    :cond_4
    :goto_1
    return-void
.end method

.method private destroyDockControlLib(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string v2, "destroyDockControlLib"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    const/16 v2, 0x64

    const/16 v3, 0xcc

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->destroy()V

    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    const v0, 0xa029

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const-string/jumbo v1, "undocked"

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->setDockLowChargerState(I)V

    :cond_2
    return-void
.end method

.method public static dockControlErrorToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SET_FAST_CHARGING_UVDM_FAILED"

    return-object v0

    :pswitch_1
    const-string v0, "CHARGING_MODE_UPDATE_UVDM_FAILED"

    return-object v0

    :pswitch_2
    const-string v0, "CONNECTED_POWER_CHARGER_INFO_UPDATE_UVDM_FAILED"

    return-object v0

    :pswitch_3
    const-string v0, "SET_FAST_CHARGING_DEX_BUSY"

    return-object v0

    :pswitch_4
    const-string v0, "CONNECTED_POWER_CHARGER_INFO_UPDATE_DEX_BUSY"

    return-object v0

    :pswitch_5
    const-string v0, "FAN_LEVEL_CONTROL_DEX_BUSY"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dockFastChargingStateToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "STATE_DOCK_FAST_CHARGING_USING"

    return-object v0

    :pswitch_1
    const-string v0, "STATE_DOCK_FAST_CHARGING_ENABLING"

    return-object v0

    :pswitch_2
    const-string v0, "STATE_DOCK_FAST_CHARGING_AVAILABLE"

    return-object v0

    :cond_0
    const-string v0, "STATE_DOCK_FAST_CHARGING_NOT_AVAILABLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string v1, "DockManager initialize()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    return-void
.end method

.method private static isDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v0

    return v0
.end method

.method static isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockFastChargingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isDockFastChargingEnabling(Lcom/android/server/desktopmode/State;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockFastChargingState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockFastChargingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEthernetConfigured()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v2, "eth0"

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEthernetConfigured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEthernetConfigured: configTarget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private registerObserver()V
    .locals 4

    new-instance v0, Lcom/android/server/desktopmode/DockManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DockManager$4;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerObserver"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private requestConnectedPowerChargerInfoUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setVirtualMacAddress()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v1, "eth0"

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v2, "wlan0"

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVirtualMacAddress Target original=eth0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Source original="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/DockManager;->convertVirtualMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "eth0"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "eth0"

    invoke-interface {v2, v3, v0}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "eth0"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "eth0"

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    move-object v0, v2

    :cond_1
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVirtualMacAddress Target virtual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setVirtualMacAddress mNMService is null"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private unregisterObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    if-eqz v0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAdaptiveFastChargingSettingsEnabled()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "adaptive_fast_charging"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    return-void
.end method

.method private updateDockLibStatus(Lcom/android/server/desktopmode/State;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDockLibStatus(), isDesktopDockConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDexPadConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPrevDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDockFastChargingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDockChargerPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDockChargerSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v0

    const/16 v1, 0x2711

    const v2, 0xa020

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DockManager;->requestCreateDockControlLib(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v0

    const v1, 0xa029

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DockManager;->requestCreateDockControlLib(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DockManager;->requestDestroyDockControlLib(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DockManager;->requestDestroyDockControlLib(I)V

    const/4 v0, -0x1

    const-string/jumbo v1, "undocked"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateDockVersionToSettings(Z)V
    .locals 3

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/dp_sec/dex_ver"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sys/class/sec/ccic/acc_device_version"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    :goto_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDockVersionToSettings(), mDockVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "dock_version"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mDockVersion"

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDockVersionExtra"

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mVirtualMacAddress"

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mVirtualMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDockChargerPower"

    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDockChargerSupport"

    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mAdaptiveFastChargingSettingsEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDockFastChargingState"

    iget v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->dockFastChargingStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDockFastChargingStateReason"

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingStateReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mLastDockVersion"

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->access$1000(Lcom/android/server/desktopmode/DockManager$DockMsgState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "mLastDockControlLibMsgState"

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method getDockChargerPower()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    return v0
.end method

.method getUseDexMacAddress()Z
    .locals 8

    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider/DexPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "isVirtualMacAddressEnforced"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string/jumbo v3, "isVirtualMacAddressEnforced"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    :goto_2
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUseDexMacAddress useDexMacAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method requestCreateDockControlLib(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method requestDestroyDockControlLib(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method requestUpdateDockLibStatus(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestUpdateDockLibStatus, reason - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method requestVirtualMacAddress(Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->isEthernetConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->setVirtualMacAddress()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->registerObserver()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/desktopmode/DockManager;->unregisterObserver()V

    :cond_2
    :goto_0
    return-void
.end method

.method setFastChargingEnable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method updateDockFastChargingState(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDockFastChargingState() new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->dockFastChargingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->dockFastChargingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingStateReason:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockFastChargingState:I

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setDockFastChargingState(I)V

    :cond_2
    return-void
.end method

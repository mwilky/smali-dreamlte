.class public Lcom/samsung/accessory/manager/SAccessoryManager;
.super Lcom/samsung/accessory/manager/ISAccessoryManager$Stub;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    }
.end annotation


# static fields
.field private static final AUTH_STATE_FRONT_AUTHENTICATED:I = 0x3

.field private static final AUTH_STATE_NORMAL:I = 0x0

.field private static final AUTH_STATE_PROGRESS:I = 0x1

.field private static final AUTH_STATE_REAR_AUTHENTICATED:I = 0x2

.field public static final BATTERY_MISC_EVENT_WIRELESS_AUTH:I = 0x200

.field private static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field private static final DBG:Z

.field public static final EXTRA_MISC_EVENT:Ljava/lang/String; = "misc_event"

.field private static final FRONT_HALL_IC:I = 0x1

.field private static final MSG_AUTH_RESTART:I = 0x3

.field private static final MSG_AUTH_SESSION_COMPLETE:I = 0xc

.field private static final MSG_AUTH_SESSION_STARTED:I = 0xb

.field private static final MSG_AUTH_SESSION_STARTING:I = 0xa

.field private static final MSG_AUTH_SESSION_STOPPED:I = 0xd

.field private static final MSG_AUTH_START_REQUEST:I = 0x1

.field private static final MSG_AUTH_START_REQUEST_INTERNAL:I = 0x2

.field private static final MSG_AUTH_STOP_REQUEST:I = 0x4

.field private static final MSG_DETACHCHECK:I = 0xe

.field private static final REAR_HALL_IC:I = 0x0

.field private static final SUPPORT_DEX:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final USB_ATTACHED:I = 0xc8

.field private static final USB_DETACHED:I = 0x0

.field private static final VDBG:Z = true

.field private static final WIRELESSCHARGER_CONNECTED:I = 0x1

.field private static final WIRELESSCHARGER_DISCONNECTED:I = 0x2

.field private static final WIRELESS_CHARGER_NODE:Ljava/lang/String; = "sys/class/power_supply/battery/batt_misc_event "


# instance fields
.field private authState:Z

.field private auth_state:I

.field private authenticatedHall:I

.field private isUsbReady:Z

.field private mAuthHandler:Landroid/os/Handler;

.field private final mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

.field final mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mIsFactory:Z

.field private mLocalAuthenticator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field final mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

.field private mSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationSession;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbpdIds:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWirelessAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

.field private modelName:Ljava/lang/String;

.field private usbState:Z

.field private wirelesschargerState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/accessory/manager/ISAccessoryManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->auth_state:I

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authenticatedHall:I

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    const-string v1, "Samsung Mobile"

    iput-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/accessory/manager/SAccessoryManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    new-instance v1, Lcom/samsung/accessory/manager/SAccessoryManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$2;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    new-instance v1, Lcom/samsung/accessory/manager/SAccessoryManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$3;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$4;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/accessory/manager/SAccessoryManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$5;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWirelessAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "SAccessoryManager starting up"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    sget-boolean v0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWirelessAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "com.sec.feature.usb_authentication"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_2
    const-string v3, "com.sec.feature.nfc_authentication"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v4, v5, p2, v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v3, "com.sec.feature.wirelesscharger_authentication"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "feature check nfc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.sec.feature.nfc_authentication"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", usb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.sec.feature.usb_authentication"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "package manager error for check feature"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/accessory/manager/SAccessoryManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->auth_state:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/SAccessoryManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->processAuthMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelessChargerConnected(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/accessory/manager/SAccessoryManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/accessory/manager/SAccessoryManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/SAccessoryManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authenticatedHall:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->initUsbState()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/accessory/manager/SAccessoryManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    return-void
.end method

.method private attachUsbTypeC(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB Type C attached, attached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB State "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/16 v3, 0xc8

    const-wide/16 v4, 0x0

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(JZ)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(JZ)V

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method private getRunningSessionsLocked(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleAuthReStartRequest(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "The session does not exist! so can\'t restart the session!"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->sendIntentToReceiver(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :goto_0
    return-void
.end method

.method private handleAuthStartRequest(Landroid/os/Message;Z)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "package_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "connectivity_type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getMaxConnection(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->getRunningSessionsLocked(I)I

    move-result v5

    if-ge v5, v4, :cond_1

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->createNewSession(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    move-result-object v5

    if-eqz p2, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    invoke-virtual {v5, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setAuthenticationResultCallback(Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    invoke-virtual {v5, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setSessionCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;)V

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    iget-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_1
    new-instance v5, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    if-eqz p2, :cond_3

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    if-eqz v6, :cond_2

    invoke-interface {v6, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "handleAuthStartRequest, callback is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleAuthStopRequest(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->stopSession()V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "The session does not exist! so can\'t stop the session!"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initUsbState()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    const/16 v2, 0x400

    :try_start_0
    new-array v3, v2, [C

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v3, v0, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v0, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    nop

    sget-object v5, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service start and check pdids: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v2, [C

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v6, v5, v0, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v0, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v1, v7

    sget-object v7, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init dock state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    throw v2

    :catchall_1
    move-exception v2

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v4, "This kernel does not have ccic dock support"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "b001b7ff"

    invoke-static {v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    aget-object v5, v2, v0

    const-string v6, "04e8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v2, v4

    invoke-static {v5}, Lcom/samsung/accessory/manager/SAccessoryManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    aget-byte v6, v5, v0

    aget-byte v0, v3, v0

    if-ne v6, v0, :cond_1

    aget-byte v0, v5, v4

    aget-byte v6, v3, v4

    if-lt v0, v6, :cond_1

    aget-byte v0, v5, v4

    const/4 v6, 0x5

    aget-byte v6, v3, v6

    if-gt v0, v6, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This device is not support usb authentication usb_pdids: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iput-boolean v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    return-void
.end method

.method private processAuthMessage(Landroid/os/Message;)V
    .locals 7

    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAuthMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "check for Winner detach case"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/accessory/manager/DetachCheck;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/DetachCheck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/DetachCheck;->isAuthChipExist()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v4, v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v5, "F900, there is no authentication chip, so do detach process"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    check-cast v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6, v1, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZI)V

    :cond_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "session removed"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthResponse(Landroid/os/Message;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarted()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStopRequest(Landroid/os/Message;)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthReStartRequest(Landroid/os/Message;)V

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p1, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    nop

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendIntentToReceiver(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 4

    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendIntentToReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REPLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getRequestPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static stringToByte(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private wirelessChargerConnected(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wireless Charger Connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    iput-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onWirelessChargerConnected(JZ)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onWirelessChargerConnected(JZ)V

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump SAccessoryManager from from pid="

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
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedServices()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SAccessoryManager"

    return-object v0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 0

    return-void
.end method

.method public notifyUnverifiedCoverAttachChanged(JZ)V
    .locals 5

    const/4 v0, 0x1

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    const-string v2, "SM-F900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "check for Winner detach case"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/accessory/manager/DetachCheck;

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/accessory/manager/DetachCheck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/DetachCheck;->isAuthChipExist()Z

    move-result v2

    if-ne v2, v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "F900, there exist authentication chip, so skip detach event"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    const-string v2, "SM-F900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p3, v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    if-ne v1, v0, :cond_2

    sget-object v0, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "F900, current auth state is true, so skip authentication"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v2, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyUnverifiedCoverAttachChanged whenNanos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", attached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, v1

    check-cast v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZI)V

    :cond_4
    goto :goto_1

    :cond_5
    return-void
.end method

.method public systemReady()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->systemReady()V

    goto :goto_0

    :cond_1
    return-void
.end method

.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;,
        Lcom/android/server/DockObserver$logRecent;
    }
.end annotation


# static fields
.field private static final ACCESSORY_CONNECTED:I = 0xff

.field private static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field private static final DOCKSTATE_PROPERTY:Ljava/lang/String; = "sys.dockstate"

.field private static final DOCK_DEVICE_TYPE_CCIC:I = 0x1

.field private static final DOCK_DEVICE_TYPE_MUIC:I = 0x0

.field private static final DOCK_DEVICE_TYPE_NONE:I = -0x1

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private mActualUsbpdIds:Ljava/lang/String;

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mCcicObserver:Landroid/os/UEventObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLastUEventDevice:I

.field private final mLock:Ljava/lang/Object;

.field private mLogRecent:Lcom/android/server/DockObserver$logRecent;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mReportedUsbpdIds:Ljava/lang/String;

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private mUsbpdIds:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iput v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    new-instance v0, Lcom/android/server/DockObserver$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/DockObserver$3;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$3;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "DockObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    new-instance v0, Lcom/android/server/DockObserver$logRecent;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$logRecent;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/DockObserver;->shouldHandleOtherStateChange()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/DockObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/DockObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/DockObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/DockObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/DockObserver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleOtherStateChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/DockObserver;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/DockObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/DockObserver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method private handleDockStateChange()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v4, 0x67

    if-eq v3, v4, :cond_0

    if-eq v1, v4, :cond_0

    const-string v3, "DockObserver"

    const-string v4, "Device not provisioned, skipping dock broadcast"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-object v6, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/DockObserver$logRecent;->log(IILjava/lang/String;)V

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.sec.intent.extra.SMART_DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SMART_DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.sec.intent.extra.DOCK_ID"

    iget-object v5, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOtherStateChange()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DockObserver"

    const-string v4, "Device not provisioned, skipping dock broadcast"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-object v6, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/DockObserver$logRecent;->log(IILjava/lang/String;)V

    :cond_1
    const-class v3, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v3, :cond_a

    iget-object v5, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/DockObserver;->isTetheredVrDevice(Ljava/lang/String;)Z

    move-result v5

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v7, 0x69

    if-eq v6, v7, :cond_7

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v8, 0x70

    if-eq v6, v8, :cond_7

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v9, 0xc8

    if-ne v6, v9, :cond_2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    if-eq v1, v7, :cond_3

    if-eq v1, v8, :cond_3

    if-ne v1, v9, :cond_5

    if-eqz v5, :cond_5

    :cond_3
    iget v4, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v4, :cond_5

    const-string v4, "DockObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HMT is disconnected isTethered="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    const/16 v4, 0x1002

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v3, v4}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    goto :goto_2

    :cond_5
    if-eq v1, v7, :cond_6

    if-eq v1, v8, :cond_6

    if-ne v1, v9, :cond_9

    if-eqz v5, :cond_9

    :cond_6
    iget v4, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v6, 0x6a

    if-ne v4, v6, :cond_9

    const-string v4, "DockObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HMT is abnormal isTethered="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    goto :goto_2

    :cond_7
    :goto_1
    const-string v6, "DockObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HMT connected isTethered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_8

    const/16 v4, 0x1001

    nop

    :cond_8
    invoke-virtual {v3, v4}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    :cond_9
    :goto_2
    goto :goto_3

    :cond_a
    const-string v4, "DockObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HMT ignored.  mReportedDockState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " previousDock="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    :try_start_0
    new-array v3, v2, [C

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/dock/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v3, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    iget v6, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto/16 :goto_4

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "DockObserver"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "DockObserver"

    const-string v5, "This kernel does not have dock station support"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    iget v3, p0, Lcom/android/server/DockObserver;->mActualDockState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_0

    :try_start_4
    new-array v3, v2, [C

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v4, v3, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    nop

    new-array v5, v2, [C

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v6, v5, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    throw v1

    :catchall_3
    move-exception v1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    move-exception v1

    :try_start_9
    const-string v2, "DockObserver"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v1

    const-string v2, "DockObserver"

    const-string v3, "This kernel does not have ccic dock station support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_0
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1
.end method

.method private isDexmodeState(I)Z
    .locals 1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x72

    if-ne p1, v0, :cond_0

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

.method private isOtherState(I)Z
    .locals 1

    const/16 v0, 0x69

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->isDexmodeState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTetheredVrDevice(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "04e8:a501"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "04e8:a50f"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "04e8:a510"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isVrDevice()Z
    .locals 2

    const-string v0, "04e8:a500"

    iget-object v1, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->isTetheredVrDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setActualDockStateLocked(I)V
    .locals 4

    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iget-object v0, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    iget v2, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iget-object v3, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DockObserver$logRecent;->log(IILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v2, 0xb

    if-gt v0, v2, :cond_1

    const-string v0, "DockObserver"

    const-string v2, "Adjusting dock state value for compatibility"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    add-int/lit8 v0, v0, 0x5e

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    :cond_1
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v2, 0x66

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    :goto_0
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v0, "sys.dockstate"

    iget v2, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    :cond_5
    return-void
.end method

.method private setDockStateLocked(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "android.server:DOCK"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_2
    return-void
.end method

.method private shouldHandleOtherStateChange()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DockObserver;->isVrDevice()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-direct {p0, v1}, Lcom/android/server/DockObserver;->isOtherState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-direct {p0, v1}, Lcom/android/server/DockObserver;->isOtherState(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    monitor-exit v0

    return v2

    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

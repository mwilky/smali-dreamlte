.class public Lcom/android/server/usb/UsbHostRestrictor;
.super Ljava/lang/Object;
.source "UsbHostRestrictor.java"


# static fields
.field private static final ALLOW:I = 0x0

.field private static final CHECK_KERNEL_LOG_PRINT_DIR:Ljava/lang/String; = "/data/local/tmp/usbfwlog"

.field private static final DISALLOW:I = 0x1

.field private static final INIT:I = 0x2

.field private static final LOG:Z = true

.field private static final MPS_CODE_PATH:Ljava/lang/String; = "/efs/imei/mps_code.dat"

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field private static final SIM_SLOT_1:I = 0x0

.field private static final SIM_SLOT_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbHostRestrictor"

.field private static final USB_HOST_DISABLE_FILE_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/disable"
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private static final USB_HOST_ENABLE_PATH:Ljava/lang/String; = "/sys/class/usb_notify"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_RISTRICTION_FILE_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static final USB_RESTRICTION_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

.field private static bRestrictHostAPI:Z

.field private static isMDMBlock:Z

.field private static isSIMBlock:Z

.field private static isUPSMBlock:Z

.field private static mCurrentSysNodeValue:Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mStrWhiteList:Ljava/lang/String;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private final mUPSMReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OFF"

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->bRestrictHostAPI:Z

    const-string v0, ""

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mStrWhiteList:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$1;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$3;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$4;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$4;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$5;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$5;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkLogEnableAtKernel()V

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->handleBootCompleteBroadcast()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showToastByIntent()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->turnOnLcd()V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showToast()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showMDMToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    return p0
.end method

.method private checkBuildType()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "user"

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ENG"

    :goto_0
    goto :goto_1

    :cond_0
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "USER"

    goto :goto_0

    :cond_1
    const-string v1, "ENG"

    :goto_1
    return-object v1
.end method

.method private checkLogEnableAtKernel()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/usbfwlog"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "!@"

    invoke-static {v2}, Lcom/android/server/utils/sysfwutil/Slog;->setKernelLogPrefix(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "UsbHostRestrictor"

    const-string v3, "!@UsbHostRestrictor KERNEL_LOG_PREFIX is empty"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private checkUsbBlockingCondition(Ljava/lang/String;)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v1, "UsbHostRestrictor"

    const-string v2, "checkUsbBlockingCondition : salesCode is null"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OXA"

    :cond_1
    const-string v1, "ENG"

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "UsbHostRestrictor"

    const-string v3, "Cannot DISABLE USB at ENG BINARY"

    invoke-static {v1, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v1, "USER"

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_a

    const-string v1, "CBK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isUltraPowerSavingModeSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ON_HOST_UPSM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ON_ALL_BOTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ON_HOST_MDM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 5"

    invoke-static {v1, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const-string v1, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 6"

    invoke-static {v1, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    :goto_0
    const-string v1, "UsbHostRestrictor"

    const-string v2, "DISABLE USB for USER BINARY and Ultra Power Save Mode or MDM block"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    const-string v1, "ON_HOST_MDM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ON_ALL_BOTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 7"

    invoke-static {v1, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    :goto_1
    const-string v1, "UsbHostRestrictor"

    const-string v2, "DISABLE USB for MDM block"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v4, "ON_ALL_SIM"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "ON_HOST_UPSM"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "ON_ALL_BOTH"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "ON_HOST_MDM"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    const-string v3, "OFF"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "UsbHostRestrictor"

    const-string v4, "NOT DISABLE USB 1"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_c
    const-string v3, "UsbHostRestrictor"

    const-string v4, "NOT DISABLE USB 2"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    :goto_3
    const-string v2, "UsbHostRestrictor"

    const-string v4, "DISABLE USB for USER BINARY and CMCC MODEL and UPSM or MDM block"

    invoke-static {v2, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_e
    const-string v4, "ON_ALL_SIM"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "ON_ALL_BOTH"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "ON_HOST_MDM"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_4

    :cond_f
    const-string v3, "OFF"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "UsbHostRestrictor"

    const-string v4, "NOT DISABLE USB 3"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    const-string v3, "UsbHostRestrictor"

    const-string v4, "NOT DISABLE USB 4"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_11
    :goto_4
    const-string v2, "UsbHostRestrictor"

    const-string v4, "DISABLE USB for USER BINARY and CMCC MODEL or MDM block"

    invoke-static {v2, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_12
    const-string v1, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 8"

    invoke-static {v1, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private checkWriteValue()Ljava/lang/String;
    .locals 4

    const-string v0, "OFF"

    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWriteValue isSIMBlock["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], isUPSMBlock["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], isMDMBlock["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-ne v1, v2, :cond_0

    const-string v0, "ON_ALL_BOTH"

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-nez v1, :cond_1

    const-string v0, "ON_ALL_SIM"

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-ne v1, v2, :cond_2

    const-string v0, "ON_HOST_UPSM"

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    if-ne v1, v2, :cond_3

    const-string v0, "ON_HOST_MDM"

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    if-nez v1, :cond_4

    const-string v0, "OFF"

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getPowerManager()V
    .locals 3

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UsbHost"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    return-void
.end method

.method private getSalesCode()Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "null"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/imei/mps_code.dat"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/csc/sales_code.dat"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "UsbHostRestrictor"

    const-string/jumbo v6, "mps exists"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "UsbHostRestrictor"

    const-string/jumbo v6, "sales_code exists"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/system/csc/sales_code.dat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_1
    const-string v5, "UsbHostRestrictor"

    const-string v6, "Both dat does not exist"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    nop

    const-string v4, "UsbHostRestrictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v6, "IOException(iex): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_3
    :goto_4
    goto/16 :goto_b

    :catchall_0
    move-exception v3

    goto/16 :goto_c

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "UsbHostRestrictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :goto_6
    nop

    const-string v4, "UsbHostRestrictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_3
    move-exception v3

    :try_start_4
    const-string v4, "UsbHostRestrictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_7

    :catch_4
    move-exception v3

    goto :goto_8

    :cond_5
    :goto_7
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :goto_8
    nop

    const-string v4, "UsbHostRestrictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_5
    move-exception v3

    :try_start_6
    const-string v4, "UsbHostRestrictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not Found exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_9

    :catch_6
    move-exception v3

    goto :goto_a

    :cond_6
    :goto_9
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_4

    :goto_a
    nop

    const-string v4, "UsbHostRestrictor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :goto_b
    return-object v0

    :goto_c
    nop

    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_d

    :catch_7
    move-exception v4

    goto :goto_e

    :cond_7
    :goto_d
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_f

    :goto_e
    nop

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException(iex): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UsbHostRestrictor"

    invoke-static {v6, v5}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_8
    :goto_f
    throw v3
.end method

.method private getUsbHostDisableSysNodeWritable()Z
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writableHostSysNode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private handleBootCompleteBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->initSetUsbBlock()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSetUsbBlock()V
    .locals 6

    const/4 v0, -0x1

    const-string v1, "UsbHostRestrictor"

    const-string v2, "initSetUsbBlock STARTED"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sys.config.usbSIMblock"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const-string v3, "UsbHostRestrictor"

    const-string v4, "checkUsbBlockingCondition : salesCode is null"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OXA"

    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-nez v0, :cond_5

    const-string v3, "UsbHostRestrictor"

    const-string v4, "SIM was never inserted"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->isFactoryBinary()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "CHM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CBK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "UsbHostRestrictor"

    const-string v5, "NEED to BLOCK by NO SIM"

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    :cond_3
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "UsbHostRestrictor"

    const-string v5, "Can NOT Write Disable Sys Node 1"

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_2

    :cond_5
    if-lez v0, :cond_7

    const-string v3, "UsbHostRestrictor"

    const-string v4, "SIM has been already inserted"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v4, "UsbHostRestrictor"

    const-string v5, "Can NOT Write Disable Sys Node 2"

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_7
    if-gez v0, :cond_8

    const-string v3, "UsbHostRestrictor"

    const-string v4, "SIM COUNT value is abnormal"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return-void
.end method

.method private isFactoryBinary()Z
    .locals 3

    const-string v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportDexRestrict()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportDexRestrict ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isUsbBlocked()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Current USB BLOCK STATE is UNKNOWN!! So USB is UNBLOCKED as a default value"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readDisableSysNodefromFile()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/usb_notify/usb_control/disable"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UsbHostRestrictor"

    const-string v3, "Failed to read from DISABLE FILE"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static restrictUsbHostInterface(ZLjava/lang/String;)I
    .locals 5

    const-string v0, "UsbHostRestrictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restrictUsbHostInterface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isSupportDexRestrict()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->bRestrictHostAPI:Z

    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mStrWhiteList:Ljava/lang/String;

    const-string v0, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-static {v0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restrictUsbHostInterface() fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v2, "restrictUsbHostInterface() node error"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private showAlertDialog()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.SettingsReceiverActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmcc_block_usb"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity to show the USB BLOCK Dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showMDMToast()V
    .locals 3

    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "showMDMToast"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    :cond_0
    return-void
.end method

.method private showToast()V
    .locals 2

    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "showToast"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->showUsbBlockToastbyUPSM()V

    return-void
.end method

.method private showToastByIntent()V
    .locals 2

    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "showToastByIntent"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->showUsbBlockToastbyUPSMIntent()V

    return-void
.end method

.method private turnOnLcd()V
    .locals 3

    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "turnOnLcd :: "

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_1
    return-void
.end method

.method private writeDisableSysNodetoFile(Ljava/lang/String;)V
    .locals 4

    const-string v0, "UsbHostRestrictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write Disable Sys Node with ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->checkUsbBlockingCondition(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/class/usb_notify/usb_control/disable"

    invoke-static {v0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    goto :goto_0

    :cond_0
    const-string v0, "/sys/class/usb_notify/usb_control/disable"

    const-string v1, "OFF"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OFF"

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "UsbHostRestrictor"

    const-string v2, "Failed to write to DISABLE FILE"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "USB Host Restrictor State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mBootCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor All SIM Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Value :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Writable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mCurrentSysNodeValue :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MPSM ON/OFF :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor SUPPORT MPSM :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isUltraPowerSavingModeSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor SIM BLOCK ON/OFF :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MPSM BLOCK ON/OFF :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MDM BLOCK ON/OFF :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MDM bRestrictHostAPI :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->bRestrictHostAPI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MDM mStrWhiteList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mStrWhiteList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

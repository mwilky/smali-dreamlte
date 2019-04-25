.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$SavedLedData;,
        Lcom/android/server/lights/LightsService$SvcLEDHandler;,
        Lcom/android/server/lights/LightsService$SvcLEDReceiver;,
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field private static final ACTION_FOTA_LED_CONTROL:Ljava/lang/String; = "com.sec.fota.LED_CONTROL"

.field private static final ACTION_MULTIPLE_LEDS_CONTROL:Ljava/lang/String; = "com.android.server.LightsService.action.MULTIPLE_LEDS_CONTROL"

.field private static final ACTION_START_FTA_LED_CONTROL:Ljava/lang/String; = "com.sec.factory.START_LED_CONTROL"

.field private static final ACTION_STOP_FTA_LED_CONTROL:Ljava/lang/String; = "com.sec.factory.STOP_LED_CONTROL"

.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field static final DEBUG:Z = false

.field private static final FOTA_DEFAULT:I = 0x0

.field private static final FOTA_DOWNLOADING:I = 0x1

.field private static final FOTA_DOWNLOAD_COMPLETED:I = 0x2

.field public static final LIGHT_SEC_FLASH:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field public static final LIGHT_SEC_FLASH_FOTA:I = 0x11

.field public static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field public static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field public static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final MAX_PRIORITY_COUNT:I = 0x2

.field private static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field public static final SUPPORT_LED_INDICATOR:Z

.field private static final SVCLED_BATTERY_MASK:I = 0x71

.field private static final SVCLED_CHARGING:I = 0x10

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x40

.field private static final SVCLED_LED_SERVICE:I = 0x8

.field private static final SVCLED_LED_SERVICE_MASK:I = 0x8

.field private static final SVCLED_LOW_BATTERY:I = 0x20

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_COUNT:I = 0x7

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field public static final TAG_MHS:Ljava/lang/String; = "[MHS] "

.field private static mPrevSvcLedState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I


# instance fields
.field private final LED_LOW_POWER_PATH:Ljava/lang/String;

.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mCoverBatteryLight:Lcom/android/server/lights/Light;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverNotiLight:Lcom/android/server/lights/Light;

.field private mCoverOpened:Z

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverType:I

.field private mCriticalMode:Z

.field private mDelayForcedSvcLEDTask:I

.field private mFOTAMode:Z

.field private mFTAMode:Z

.field private mForceUpdate:Z

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mInitializedWakeLockPath:Z

.field private mIsLEDChanged:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mNewWakeLockPaths:[Ljava/lang/String;

.field private mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

.field private mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

.field private mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

.field private mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

.field private mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field private final mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field mWakeLockAcquired:Z

.field private mWakeLockPath:Ljava/lang/String;

.field private mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    const/16 v1, 0x2bc

    iput v1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    const-string v3, "/sys/power/wake_lock"

    const-string v4, "/sys/power/wake_unlock"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mFTAMode:Z

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mFOTAMode:Z

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCriticalMode:Z

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mForceUpdate:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLock:Ljava/lang/Object;

    const/16 v1, 0xe

    new-array v3, v1, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v3, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    new-instance v3, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    new-instance v3, Lcom/android/server/lights/LightsService$5;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$5;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    const-string v3, "/sys/class/sec/led/led_lowpower"

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->LED_LOW_POWER_PATH:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    new-instance v3, Lcom/android/server/lights/LightsService$1;

    const-string/jumbo v4, "mSvcLEDThread"

    invoke-direct {v3, p0, v4}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v3

    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :goto_2
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v4, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clInitAllSavedData()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$SavedLedData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mFTAMode:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mFTAMode:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mFOTAMode:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCriticalMode:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCriticalMode:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->clUpdateAllLedsLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/lights/LightsService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method static synthetic access$2200()I
    .locals 1

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/lights/LightsService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mForceUpdate:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/lights/LightsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/lights/LightsService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/lights/LightsService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/lights/LightsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clTemporaryClearAllLedsLocked()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->clFotaUpdateLocked(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/lights/LightsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/lights/LightsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/lights/LightsService;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/lights/LightsService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/lights/LightsService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return p1
.end method

.method private acquireWakeLockForLED()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_0

    const-string v0, "LightsService"

    const-string v1, "acquireWakeLockForLED: WakeLock path is not initialized"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_1
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clAllLedUpdateLocked()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mSaved:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v2, 0xd

    aget-object v3, v1, v2

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v4, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v5, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v6, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v7, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v8, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/lights/LightsService$SavedLedData;->initData()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clAllLedUpdateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private clBatteryUpdateLocked()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mSaved:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v2, 0xc

    aget-object v3, v1, v2

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v4, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v5, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v6, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v7, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v8, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/lights/LightsService$SavedLedData;->initData()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clBatteryUpdateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private clFotaUpdateLocked(I)V
    .locals 8

    const/16 v0, 0xd

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "LightsService"

    const-string v3, "[api] [MHS] FOTA_DOWNLOAD_COMPLETED"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mFOTAMode:Z

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v2, v1, v0

    const v3, 0x70707

    const/4 v4, 0x1

    const/16 v5, 0x1f4

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    goto :goto_0

    :pswitch_1
    const-string v2, "LightsService"

    const-string v3, "[api] [MHS] FOTA_DOWNLOADING"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mFOTAMode:Z

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "LightsService"

    const-string v2, "[api] [MHS] FOTA_DEFAULT"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clTemporaryClearAllLedsLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mFOTAMode:Z

    invoke-direct {p0, v1}, Lcom/android/server/lights/LightsService;->clUpdateAllLedsLocked(Z)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private clGigaLteUpdateLocked()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mSaved:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v2, 0xa

    aget-object v3, v1, v2

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v4, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v5, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v6, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v7, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v8, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/lights/LightsService$SavedLedData;->initData()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clGigaLteUpdateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private clInitAllSavedData()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/server/lights/LightsService$SavedLedData;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-array v1, v0, [Lcom/android/server/lights/LightsService$SavedLedData;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-array v1, v0, [Lcom/android/server/lights/LightsService$SavedLedData;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-array v1, v0, [Lcom/android/server/lights/LightsService$SavedLedData;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-array v1, v0, [Lcom/android/server/lights/LightsService$SavedLedData;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-instance v3, Lcom/android/server/lights/LightsService$SavedLedData;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$SavedLedData;-><init>(Lcom/android/server/lights/LightsService;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSavedGigaLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-instance v3, Lcom/android/server/lights/LightsService$SavedLedData;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$SavedLedData;-><init>(Lcom/android/server/lights/LightsService;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-instance v3, Lcom/android/server/lights/LightsService$SavedLedData;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$SavedLedData;-><init>(Lcom/android/server/lights/LightsService;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSavedBatteryData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-instance v3, Lcom/android/server/lights/LightsService$SavedLedData;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$SavedLedData;-><init>(Lcom/android/server/lights/LightsService;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSavedAllLedData:[Lcom/android/server/lights/LightsService$SavedLedData;

    new-instance v3, Lcom/android/server/lights/LightsService$SavedLedData;

    invoke-direct {v3, p0}, Lcom/android/server/lights/LightsService$SavedLedData;-><init>(Lcom/android/server/lights/LightsService;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clLteUpdateLocked()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mSaved:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v2, 0x9

    aget-object v3, v1, v2

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v4, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v5, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v6, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v7, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v8, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedLteData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/lights/LightsService$SavedLedData;->initData()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clLteUpdateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private clTemporaryClearAllLedsLocked()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v1, 0x9

    aget-object v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v1, 0xa

    aget-object v2, v0, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v1, 0xb

    aget-object v2, v0, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v1, 0xc

    aget-object v2, v0, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v1, 0xd

    aget-object v2, v0, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    return-void
.end method

.method private clUpdateAllLedsLocked(Z)V
    .locals 3

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MHS] clUpdateAllLedsLocked: forceUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mForceUpdate:Z

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clLteUpdateLocked()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clGigaLteUpdateLocked()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clWifiUpdateLocked()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clBatteryUpdateLocked()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clAllLedUpdateLocked()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mForceUpdate:Z

    return-void
.end method

.method private clWifiUpdateLocked()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mSaved:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v2, 0xb

    aget-object v3, v1, v2

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v4, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v5, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v6, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v7, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v8, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->access$4400(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSavedWifiData:[Lcom/android/server/lights/LightsService$SavedLedData;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/lights/LightsService$SavedLedData;->initData()V

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->clWifiUpdateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private clearSvcLedStateLocked(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private getVrDisplayMode()I
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private handleForcedSvcLEDTask()V
    .locals 2

    const-string v0, "LightsService"

    const-string v1, "[SvcLED] handleForcedSvcLEDTask()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method private initCoverState()V
    .locals 4

    const-string v0, "LightsService"

    const-string/jumbo v1, "initCoverState()start"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() coverstate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "LightsService"

    const-string/jumbo v2, "initCoverState() : state is null"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "LightsService"

    const-string/jumbo v1, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initializeWakeLockPath()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    goto :goto_0

    :cond_0
    const-string v0, "LightsService"

    const-string/jumbo v1, "wake_unlock path does not exists "

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "LightsService"

    const-string/jumbo v1, "wake_lock path does not exists"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private releaseWakeLockForLED()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_0

    const-string v0, "LightsService"

    const-string/jumbo v1, "releaseWakeLockForLED: WakeLock path is not initialized"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_1
    return-void
.end method

.method static native setLight_native(IIIIII)V
.end method

.method private setSvcLedLightLocked(I)V
    .locals 12

    const/4 v0, 0x1

    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v1, v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    if-eq v2, v0, :cond_1

    iget v2, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const-string v2, "/sys/class/sec/led/led_lowpower"

    iget v3, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    :goto_1
    const/4 v5, 0x7

    if-ge v2, v5, :cond_4

    sget v5, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    shr-int/2addr v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    sget v5, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    packed-switch v2, :pswitch_data_0

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto :goto_3

    :pswitch_0
    const/4 v5, 0x3

    const/16 v0, 0xe

    goto :goto_3

    :pswitch_1
    const/4 v5, 0x3

    const/16 v0, 0xd

    goto :goto_3

    :pswitch_2
    const/4 v5, 0x3

    const/16 v0, 0xa

    goto :goto_3

    :pswitch_3
    const/16 v5, 0x16

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    goto :goto_3

    :pswitch_4
    const/4 v5, 0x4

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    goto :goto_3

    :pswitch_5
    const/4 v5, 0x4

    const/16 v0, 0xc

    goto :goto_3

    :pswitch_6
    const/4 v5, 0x3

    const/16 v0, 0xb

    nop

    :goto_3
    iget-object v6, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v6, v6, v5

    sget v7, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sget v9, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sget v10, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    const/4 v11, 0x0

    move v8, v0

    invoke-static/range {v6 .. v11}, Lcom/android/server/lights/LightsService$LightImpl;->access$4200(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget v6, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    if-eq v6, v5, :cond_6

    const-string v6, "LightsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SvcLED]   setSvcLedLightLocked :: priority changed! SvcLED(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-virtual {p0, v8}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") OUT; SvcLED(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") IN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string v6, "LightsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SvcLED]  setSvcLedLightLocked :: Current SvcLED(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") maintains its priority right"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iput v5, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->releaseWakeLockForLED()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .locals 7

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    if-eqz p6, :cond_1

    const/16 v0, 0xc

    if-ne p3, v0, :cond_0

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService;->writeSvcLedData(IIIII)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x72

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz p6, :cond_4

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    invoke-virtual {p0, p3}, Lcom/android/server/lights/LightsService;->convertToBitMask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_3

    const/16 v2, 0x8

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/LightsService;->writeSvcLedData(IIIII)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    nop

    :cond_4
    :goto_0
    sget v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    :cond_5
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: SvcLEDState : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | SvcLED(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_6

    const-string v2, "On"

    goto :goto_1

    :cond_6
    const-string v2, "Off"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public convertToBitMask(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, -0x72

    return v0

    :pswitch_1
    const/16 v0, 0x40

    return v0

    :pswitch_2
    const/16 v0, 0x20

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_4
    const/16 v0, 0x10

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->systemReady()V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public systemReady()V
    .locals 5

    const-string v0, "LightsService"

    const-string v1, "[SvcLED] systemReady"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    :cond_0
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->initCoverState()V

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_0

    :cond_1
    const-string v1, "LightsService"

    const-string/jumbo v3, "initLightsService() : mCoverManager is null!!!!"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->initializeWakeLockPath()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.LightsService.action.MULTIPLE_LEDS_CONTROL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sec.factory.START_LED_CONTROL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sec.factory.STOP_LED_CONTROL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sec.fota.LED_CONTROL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    invoke-direct {v4, p0, v2}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public translateID(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string/jumbo v0, "translateID error"

    return-object v0

    :pswitch_0
    const-string v0, "SMART_GLOW"

    return-object v0

    :pswitch_1
    const-string v0, "LED_SERVICE"

    return-object v0

    :pswitch_2
    const-string v0, "COUNT"

    return-object v0

    :pswitch_3
    const-string v0, "LED_ALL"

    return-object v0

    :pswitch_4
    const-string v0, "LED_BATTERY"

    return-object v0

    :pswitch_5
    const-string v0, "LED_WIFI"

    return-object v0

    :pswitch_6
    const-string v0, "LED_GIGALTE"

    return-object v0

    :pswitch_7
    const-string v0, "LED_LTE"

    return-object v0

    :pswitch_8
    const-string v0, "WIFI"

    return-object v0

    :pswitch_9
    const-string v0, "BLUETOOTH"

    return-object v0

    :pswitch_a
    const-string v0, "ATTENTION"

    return-object v0

    :pswitch_b
    const-string v0, "NOTIFICATIONS"

    return-object v0

    :pswitch_c
    const-string v0, "BATTERY"

    return-object v0

    :pswitch_d
    const-string v0, "BUTTON"

    return-object v0

    :pswitch_e
    const-string v0, "KEYBOARD"

    return-object v0

    :pswitch_f
    const-string v0, "BACKLIGHT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public translateMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string/jumbo v0, "translateMode error"

    return-object v0

    :pswitch_0
    const-string v0, "LIGHT_SEC_FLASH_FULLY_CHARGED"

    return-object v0

    :pswitch_1
    const-string v0, "LIGHT_SEC_FLASH_LOW_BATTERY"

    return-object v0

    :pswitch_2
    const-string v0, "LIGHT_SEC_FLASH_MISSED_NOTIFICATION"

    return-object v0

    :pswitch_3
    const-string v0, "LIGHT_SEC_FLASH_CHARGING_ERROR"

    return-object v0

    :pswitch_4
    const-string v0, "LIGHT_SEC_FLASH_CHARGING"

    return-object v0

    :pswitch_5
    const-string v0, "LIGHT_FLASH_HARDWARE"

    return-object v0

    :pswitch_6
    const-string v0, "LIGHT_FLASH_TIMED"

    return-object v0

    :pswitch_7
    const-string v0, "LIGHT_FLASH_NONE"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public writeSvcLedData(IIIII)V
    .locals 1

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/2addr v0, p1

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    return-void
.end method

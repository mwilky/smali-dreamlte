.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$HealthServiceWrapper;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$HealthHalCallback;,
        Lcom/android/server/BatteryService$BatteryServiceHandler;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$Shell;,
        Lcom/android/server/BatteryService$ExtraHealthInfo;,
        Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$LedSettingsObserver;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.action.AUDIO_MODE"

.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field private static final ACTION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

.field private static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/switch/afc_disable"

.field private static final BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field private static final BATTERY_LEVEL_CHANGE_THROTTLE_MS:J = 0xea60L

.field static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_POGO:I = 0x17

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final BATT_HV_WIRELESS_STATUS_0V:I = 0x0

.field private static final BATT_HV_WIRELESS_STATUS_5V:I = 0x1

.field private static final BATT_HV_WIRELESS_STATUS_9V:I = 0x2

.field public static final CALL_END:I = 0x0

.field public static final CALL_START:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final ENG_MODE:Z

.field public static final EXTRA_VALUE_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.extra.AUDIO_MODE"

.field private static final EXTRA_WIRELESS_POWER_SHARING_EXTRA:Ljava/lang/String; = "enable"

.field private static final FEATURE_HICCUP_CONTROL:Z

.field private static final FEATURE_SAVE_BATTERY_CYCLE:Z

.field private static final FEATURE_SUPPORTED_DAILY_BOARD:Z

.field private static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field private static final FULL_CHARGING_DURATION:J = 0x2932e00L

.field private static final HEALTH_HAL_WAIT_MS:J = 0x3e8L

.field private static final HICCUP_DISABLE:Ljava/lang/String; = "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

.field private static final HICCUP_MISC_EVENT_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_misc_event"

.field private static final HICCUP_SUPPORT_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/switch/hiccup"

.field private static final INCREASE_CYCLE_COUNT_ONE_MONTH:J = 0x3cL

.field private static final LED_CHARGING_SETTINGS_URI:Ljava/lang/String; = "led_indicator_charing"

.field private static final LED_LOW_BATTERY_SETTINGS_URI:Ljava/lang/String; = "led_indicator_low_battery"

.field private static final LIGHT_SEC_FLASH_OFF:I = 0x0

.field private static final LLB_ERROR:I = 0x2

.field private static final LLB_NEED_RETRY:I = 0x3

.field private static final LLB_SUCCEED:I = 0x1

.field private static final MAX_BATTERY_LEVELS_QUEUE_SIZE:I = 0x64

.field private static final MINIMUM_INSPECT_INTENT_SYNC_DURATION:I = 0x7d0

.field public static final MSG_BATTERY_CHECK_CLEAR:I = 0x2

.field public static final MSG_BATTERY_CHECK_REQUEST:I = 0x1

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field private static final OTG_CHARGE_BLOCK_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/otg/online"

.field public static final OTG_CHARGE_BLOCK_PERMISSION:Ljava/lang/String; = "com.sec.permission.OTG_CHARGE_BLOCK"

.field private static final OVERHEAT_INTENT_INTERVAL:I = 0x1d4c0

.field private static final OVERHEAT_INTENT_TEMPERATURE:I = 0x2d

.field private static final OVER_CURRENT_THRESHOLD:I = 0x0

.field private static final PACKAGE_DAILY_BOARD:Ljava/lang/String; = "com.samsung.android.homemode"

.field private static final PACKAGE_DEVICE_CARE:Ljava/lang/String;

.field private static final PATH_ASOC_NOW:Ljava/lang/String; = "/sys/class/power_supply/battery/fg_asoc"

.field private static final PATH_BATTERY_MAX_CURRENT:Ljava/lang/String; = "/efs/FactoryApp/max_current"

.field private static final PATH_BATTERY_MAX_TEMP:Ljava/lang/String; = "/efs/FactoryApp/max_temp"

.field private static final PATH_EFS_ASOC:Ljava/lang/String; = "/efs/FactoryApp/asoc"

.field private static final PATH_LOG_BATTERY_USAGE:Ljava/lang/String; = "/efs/FactoryApp/batt_discharge_level"

.field private static final PATH_SYSFS_BATTERY_CYCLE:Ljava/lang/String; = "/sys/class/power_supply/battery/battery_cycle"

.field private static final PERMISSION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.permission.wirelesspowersharing"

.field private static final POGO_NONE:I = 0x0

.field private static final POGO_ONLY:I = 0x1

.field private static final POGO_WITH_OTHERS:I = 0x2

.field private static final PRODUCT_DEV:I = 0x0

.field private static final PROPERTY_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "persist.service.battery.wfc"

.field public static final REQUEST_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

.field public static final RESPONSE_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

.field private static final SETTING_SHOW_WIRELESS_CHARGER_MENU:Ljava/lang/String; = "show_wireless_charger_menu"

.field private static final SETTING_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "wireless_fast_charging"

.field private static final SHIP_BUILD:Z

.field private static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field private static final SYSFS_BATT_HV_WIRELESS_PAD_CTRL:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BATTERY_INFO:Ljava/lang/String; = "!@[BatteryInfo] "

.field private static final TAG_LLB:Ljava/lang/String; = "[LLB] "

.field private static final USE_FAKE_BATTERY:Z

.field private static final VZW_DEVICE_QUALITY_STATICS_INTENT:Ljava/lang/String; = "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

.field private static final WEEKLY_DIFF_EFS_PATH:Ljava/lang/String; = "/efs/FactoryApp/batt_after_manufactured"

.field private static final WEEKLY_DIFF_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_after_manufactured"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_EPEN:Ljava/lang/String; = "/sys/class/sec/sec_epen/epen_wcharging_mode"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_MUIC:Ljava/lang/String; = "/sys/class/sec/switch/wireless"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_TSP:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_BACKPACK_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,3"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_CHARGER_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,1"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_NONE_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,0"

.field private static final WIRELESS_POWER_SHARING_SYSFS_EXTERNEL_EVENT_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/ext_event"

.field private static final WIRELESS_POWER_SHARING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/wc_tx_en"

.field private static mLongBatteryRetryCnt:I


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mActivityManagerReady:Z

.field private mAdaptiveFastChargingSettingsEnable:Z

.field private mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

.field private mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCapacity:I

.field private mBatteryLed:Lcom/android/server/lights/Light;

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryMaxCurrent:J

.field private mBatteryMaxTemp:J

.field private mBatteryOverHeatIntentBroadcastTime:J

.field private mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private mBootCompleted:Z

.field private mChargeStartLevel:I

.field private mChargeStartTime:J

.field public mChargingError:Z

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field mCurrentCalendar:Ljava/util/Calendar;

.field private mDexReceiver:Landroid/content/BroadcastReceiver;

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mEnableIqi:Z

.field private final mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

.field private mFullChargingOnDockStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field private mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

.field private mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

.field private mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

.field private mIncreasingCycleCnt:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInvalidCharger:I

.field private mLastBatteryChargeType:I

.field private mLastBatteryCurrentNow:I

.field private mLastBatteryHealth:I

.field private mLastBatteryHighVoltageCharger:Z

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelChangedSentMs:J

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryOnline:I

.field private mLastBatteryPowerSharingOnline:Z

.field private mLastBatteryPresent:Z

.field private mLastBatterySWSelfDischarging:Z

.field private mLastBatterySecCurrentEvent:I

.field private mLastBatterySecEvent:I

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private final mLastExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

.field private final mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

.field private mLastPlugType:I

.field private mLastSavedBatteryLevel:J

.field private mLastSecEventWaterInConnector:Z

.field private mLastSecPlugTypeSummary:I

.field private mLastTxEventRxConnected:Z

.field private mLastTxEventTxEnabled:Z

.field private mLastWirelessBackPackChargingStatus:Z

.field private mLastWirelessChargingStatus:Z

.field private mLastWirelessPowerSharingExternelEvent:I

.field private mLastWirelessPowerSharingTxEvent:I

.field private mLastchargerPogoOnline:Z

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLedChargingSettingsEnable:Z

.field private mLedLowBatterySettingsEnable:Z

.field private mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

.field private final mLedsHandler:Lcom/android/server/BatteryService$BatteryServiceHandler;

.field private final mLedsHandlerThread:Lcom/android/server/ServiceThread;

.field mLight:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field mManufactureDate:Ljava/lang/String;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPlugType:I

.field private mPogoDockIntent:I

.field private mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

.field mRfCalDate:Ljava/lang/String;

.field private final mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

.field private final mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

.field private final mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

.field private mSavedBatteryAsoc:J

.field private mSavedBatteryMaxCurrent:J

.field private mSavedBatteryMaxTemp:J

.field private mSavedBatteryUsage:J

.field private mSavedDiffWeek:I

.field private mScreenOn:Z

.field private mSecPlugTypeSummary:I

.field private mSentBatteryMalfunctionBroadcast:Z

.field private mSentLowBatteryBroadcast:Z

.field private mSequence:I

.field private mShutdownBatteryTemperature:I

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

.field private final mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

.field private mUpdatesStopped:Z

.field private mUpsmOn:Z

.field private mWasUsedWirelessFastChargerPreviously:Z

.field private mWirelessFastChargingSettingsEnable:Z

.field private mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

.field private mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    const-string v0, "/sys/class/sec/switch/hiccup"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    const-string v0, "android.app.action.ENTER_KNOX_DESKTOP_MODE"

    sput-object v0, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    const-string v0, "android.app.action.EXIT_KNOX_DESKTOP_MODE"

    sput-object v0, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->SHIP_BUILD:Z

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    const-string v2, "Default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->ENG_MODE:Z

    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "signumlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    invoke-static {}, Lcom/android/server/BatteryService;->isSupportedDailyBoard()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    new-instance v0, Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$ExtraHealthInfo;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    new-instance v0, Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$ExtraHealthInfo;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    iput v1, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mUpsmOn:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    iput v2, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mLastSecEventWaterInConnector:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    const v3, 0x445c0

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    iput-wide v5, p0, Lcom/android/server/BatteryService;->mBatteryOverHeatIntentBroadcastTime:J

    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    iput-wide v3, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mChargingError:Z

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    new-instance v1, Lcom/android/server/BatteryService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/BatteryService$2;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/BatteryService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/BatteryService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mDexReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    new-instance v1, Lcom/android/server/BatteryService$31;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$31;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/BatteryService$32;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$32;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/BatteryService$33;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$33;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/BatteryService$34;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$34;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/BatteryService$35;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$35;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/ServiceThread;

    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLedsHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLedsHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    new-instance v1, Lcom/android/server/BatteryService$BatteryServiceHandler;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLedsHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$BatteryServiceHandler;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLedsHandler:Lcom/android/server/BatteryService$BatteryServiceHandler;

    new-instance v1, Lcom/android/server/BatteryService$Led;

    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$LedSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    new-instance v1, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    new-instance v1, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/BatteryService;->InitBatteryInfo()V

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    const-string v2, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.sec.permission.OTG_CHARGE_BLOCK"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    const-string v2, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    const-string v2, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.android.permission.wirelesspowersharing"

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    sget-object v2, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mDexReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    const-string v2, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/server/BatteryService$7;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    const-string v3, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "att.iqi.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    :cond_4
    return-void
.end method

.method private InitBatteryInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$30;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$30;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendOTGIntentLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BatteryService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/BatteryService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/BatteryService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/BatteryService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2300()I
    .locals 1

    sget v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    return v0
.end method

.method static synthetic access$2308()I
    .locals 2

    sget v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->checkLongLifeBatteryInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3900()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/BatteryService;->sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/BatteryService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$ExtraHealthInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/BatteryService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/BatteryService;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$4600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$4802(Lcom/android/server/BatteryService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide p1
.end method

.method static synthetic access$4814(Lcom/android/server/BatteryService;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$4822(Lcom/android/server/BatteryService;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$4900(Lcom/android/server/BatteryService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/BatteryService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$5100(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/android/server/BatteryService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/server/BatteryService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/android/server/BatteryService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-wide p1
.end method

.method static synthetic access$5600(Lcom/android/server/BatteryService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryMaxCurrentFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5700(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-wide v0
.end method

.method static synthetic access$5702(Lcom/android/server/BatteryService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-wide p1
.end method

.method static synthetic access$5800(Lcom/android/server/BatteryService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5900(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/BatteryService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/android/server/BatteryService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    return-wide v0
.end method

.method static synthetic access$6300(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    return-wide v0
.end method

.method static synthetic access$6400(Lcom/android/server/BatteryService;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$6500(Lcom/android/server/BatteryService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    return-wide v0
.end method

.method static synthetic access$6502(Lcom/android/server/BatteryService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    return-wide p1
.end method

.method static synthetic access$6508(Lcom/android/server/BatteryService;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    return-wide v0
.end method

.method static synthetic access$6600(Lcom/android/server/BatteryService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BatteryService;->setFullChargingOnDockStartTime()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/BatteryService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/BatteryService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLed:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$BatteryServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLedsHandler:Lcom/android/server/BatteryService$BatteryServiceHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/BatteryService;Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/BatteryService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    return p1
.end method

.method static synthetic access$7100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200()V
    .locals 0

    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/BatteryService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/android/server/BatteryService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$7800(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/BatteryService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkLongLifeBattery()V
    .locals 5

    const-string v0, "/efs/FactoryApp/batt_after_manufactured"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const-string v1, "[LLB] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ Write weeklyDiff EFS ->  Sys : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/power_supply/battery/batt_after_manufactured"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "[LLB] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@ can not change. value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :goto_0
    nop

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$11;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkLongLifeBatteryInternal()I
    .locals 13

    const-string/jumbo v0, "ril.rfcal_date"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ril.manufacturedate"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[LLB] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@ rfcal_date "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[LLB] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@ manufacture_date "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v5, v7, v8, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    iget-object v7, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    sub-int/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v10, v6

    iget-object v6, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v6, 0x2

    if-nez v7, :cond_3

    sub-int v9, v3, v10

    if-lez v9, :cond_2

    const-string v6, "[LLB] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@ same year diff_Week= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v8, "[LLB] "

    const-string v11, "!@ same year but error month!!!"

    invoke-static {v8, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    if-gez v7, :cond_4

    const-string v8, "[LLB] "

    const-string v11, "!@ error year"

    invoke-static {v8, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    add-int/lit8 v6, v7, -0x1

    const/16 v11, 0x34

    mul-int/2addr v6, v11

    sub-int/2addr v11, v10

    add-int/2addr v6, v11

    add-int v9, v6, v3

    :goto_1
    const-string v6, "/efs/FactoryApp/batt_after_manufactured"

    invoke-direct {p0, v6, v9}, Lcom/android/server/BatteryService;->checkWeeklyDiffIsValid(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "/sys/class/power_supply/battery/batt_after_manufactured"

    invoke-static {v6, v9}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    const-string v6, "/efs/FactoryApp/batt_after_manufactured"

    invoke-static {v6, v9}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    iput v9, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    :cond_5
    return v8

    :cond_6
    const-string v1, "[LLB] "

    const-string v2, "!@ mRfCalDate is null!!! manufacture_date is also null!!!  we can not check weekly diff"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private checkWeeklyDiffIsValid(Ljava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "[LLB] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path string is nul"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const-string v3, "[LLB] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is null, It looks first time, just make it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    const-string v3, "[LLB] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EFS values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Diff_week: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "[LLB] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[BatteryInfo] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : data is \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ge v2, p2, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0
.end method

.method private static copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1

    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget-object v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  unplug [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    array-length v2, p3

    if-eqz v2, :cond_1

    const-string v2, "-a"

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v6, p1

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_1
    :goto_0
    const-string v2, "Current Battery Service state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v2, :cond_2

    const-string v2, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  AC powered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  USB powered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Wireless powered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Max charging current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Max charging voltage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Charge counter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  health: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  scale: 100"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  voltage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  temperature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  technology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  batterySWSelfDischarging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v3}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3800(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  batteryMiscEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v3}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  batteryCurrentEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v3}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3300(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSecPlugTypeSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  LED Charging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  LED Low Battery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v2}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  current now: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v4}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    if-eq v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  charge counter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Adaptive Fast Charging Settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USE_FAKE_BATTERY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEC_FEATURE_BATTERY_SIMULATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWasUsedWirelessFastChargerPreviously: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWirelessFastChargingSettingsEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB CAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB MAN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB CURRENT: YEAR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LLB DIFF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_HICCUP_CONTROL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_SUPPORTED_DAILY_BOARD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEC_FEATURE_USE_WIRELESS_POWER_SHARING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p3, :cond_5

    :try_start_1
    array-length v0, p3

    if-eqz v0, :cond_5

    const-string v0, "-a"

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_5
    :goto_2
    const-string v0, "BatteryInfoBackUp"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedBatteryAsoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedBatteryMaxTemp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedBatteryMaxCurrent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSavedBatteryUsage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  FEATURE_SAVE_BATTERY_CYCLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SEC_FEATURE_PREVENT_SWELLING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 6

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const-wide v2, 0x10800000001L

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    :cond_2
    :goto_0
    const-wide v3, 0x10e00000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000004L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000005L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10e00000006L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10e00000007L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10800000008L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10500000009L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1050000000aL

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1050000000bL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1050000000cL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1090000000dL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static fileWriteInt(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fileWriteInt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catch_2
    move-exception v1

    return-void
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "fileWriteString : file not found"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fileWriteString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "fileWriteString : file not found"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :goto_0
    nop

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v2
.end method

.method private getIconLocked(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const v1, 0x10809db

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x3

    const v3, 0x10809cd

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x10809e9

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_4

    return v1

    :cond_4
    return v3
.end method

.method private static isFileSupported(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isPoweredLocked(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "returning true for isPoweredLocked"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_4

    return v1

    :cond_4
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private static isSupportedDailyBoard()Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    const-string v6, "TA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static synthetic lambda$D1kwd7L7yyqN5niz3KWkTepVmUk(Lcom/android/server/BatteryService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method static synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private logBatteryStatsLocked()V
    .locals 8

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    if-eqz v1, :cond_7

    const-string v2, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v2}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/batterystats.dump"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    sget-object v5, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    const-string v4, "BATTERY_DISCHARGE_INFO"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v2, v5}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to close dumpsys output stream"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string/jumbo v6, "failed to delete temporary dumpsys file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_5

    :catch_1
    move-exception v4

    :try_start_2
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to write dumpsys file"

    invoke-static {v5, v6, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to close dumpsys output stream"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_3
    move-exception v4

    :try_start_4
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to dump battery service"

    invoke-static {v5, v6, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to close dumpsys output stream"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_4
    return-void

    :goto_5
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v5

    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "failed to close dumpsys output stream"

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to delete temporary dumpsys file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v4

    :cond_7
    :goto_7
    return-void
.end method

.method private logOutlierLocked(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    cmp-long v6, p1, v3

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    return-void
.end method

.method private processValuesLocked(Z)V
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    sget-boolean v0, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    const/16 v5, 0x64

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput v5, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    :cond_0
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v8, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eqz v0, :cond_2

    iput v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    iput v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_4

    iput v9, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_5

    iput v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    :cond_6
    iput v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    :goto_1
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3000(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iput v6, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    goto :goto_3

    :cond_8
    :goto_2
    iput v6, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_9

    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_9
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_a

    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_a
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v0, v8

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3000(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    const/high16 v10, 0x10000

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_c
    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_d
    :goto_3
    :try_start_0
    iget-object v10, v1, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v12, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v13, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v14, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iget-object v8, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v8}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v19

    iget-object v8, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v8}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3200(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v20

    iget-object v8, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v8}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3300(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v21

    move v15, v0

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v6

    invoke-interface/range {v10 .. v21}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_e

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    cmp-long v0, v7, v5

    if-lez v0, :cond_e

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v10, v1, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    sub-long/2addr v7, v10

    const-wide/32 v10, 0x2932e00

    cmp-long v0, v7, v10

    if-ltz v0, :cond_e

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/BatteryService;->mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    if-nez p1, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v7, :cond_12

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-eq v0, v7, :cond_f

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v7, 0x32

    if-gt v0, v7, :cond_12

    :cond_f
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v0, v7, :cond_10

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v7, 0xa

    if-gt v0, v7, :cond_12

    :cond_10
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3200(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3500(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:Z

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-ne v0, v9, :cond_11

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    if-ne v0, v7, :cond_12

    :cond_11
    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3800(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatterySWSelfDischarging:Z

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    if-ne v0, v7, :cond_12

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3300(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatterySecCurrentEvent:I

    if-ne v0, v7, :cond_12

    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v0, v7, :cond_12

    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v7, :cond_2f

    :cond_12
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v8, 0x3

    const/4 v10, 0x5

    if-eq v0, v7, :cond_16

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/16 v7, 0x58a

    const/16 v11, 0x58d

    const/16 v12, 0x589

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v12}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget v12, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-wide v11, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v7, v11, v5

    if-eqz v7, :cond_13

    iget v7, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v7, v11, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v11, v13

    const/4 v2, 0x1

    const/16 v3, 0xaaa

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v4, v13

    iget v7, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v4, v13

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v9

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iput-wide v5, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    move-wide v3, v11

    :cond_13
    goto :goto_5

    :cond_14
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-wide v8, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v13, v8

    iget-wide v8, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    cmp-long v0, v8, v5

    if-eqz v0, :cond_15

    cmp-long v0, v13, v5

    if-eqz v0, :cond_15

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v12}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v0, v10}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v11, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v8, 0x58c

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v8, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v7, 0x58b

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_15
    iput-wide v5, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    :cond_16
    :goto_5
    iget v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    if-gtz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-lez v0, :cond_17

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    :cond_17
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v7, v0

    iget-wide v11, v1, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    cmp-long v0, v7, v11

    if-lez v0, :cond_18

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v7, v0

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    goto :goto_6

    :cond_18
    iget-wide v7, v1, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v11, v0

    sub-long/2addr v7, v11

    const-wide/16 v11, 0xa

    cmp-long v0, v7, v11

    if-ltz v0, :cond_19

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    :goto_6
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v7, :cond_1a

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v7, :cond_1a

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v7, :cond_1a

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v7, :cond_1b

    :cond_1a
    const/16 v0, 0xaa3

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    iget v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v7, :cond_1c

    const/16 v0, 0xaa2

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/16 v7, 0x64

    if-lt v0, v7, :cond_1c

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    cmp-long v0, v7, v5

    if-ltz v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_1d

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_1d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v11, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v7, v11

    const/4 v0, 0x1

    move v2, v0

    move-wide v3, v7

    :cond_1d
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_1e

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v7, 0x1

    if-eq v0, v7, :cond_21

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v8, :cond_21

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    :cond_1e
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_1f

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    :cond_1f
    const/4 v7, 0x0

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v8, :cond_20

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    :cond_20
    if-eqz p1, :cond_21

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v8, :cond_21

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    :cond_21
    :goto_7
    iget v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3200(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    const/16 v7, 0x64

    if-ne v0, v7, :cond_22

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    if-nez v0, :cond_22

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "enable wireless charger menu in setting"

    invoke-static {v0, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "show_wireless_charger_menu"

    const/4 v9, -0x2

    invoke-static {v0, v8, v7, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_22
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v7, -0x1

    const/high16 v8, 0x4000000

    if-eqz v0, :cond_24

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_23

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v7, :cond_24

    :cond_23
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "seq"

    iget v9, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$16;

    invoke-direct {v9, v1, v0}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_24
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_26

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_25

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v7, :cond_26

    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "seq"

    iget v9, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$17;

    invoke-direct {v9, v1, v0}, Lcom/android/server/BatteryService$17;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "seq"

    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$19;

    invoke-direct {v8, v1, v0}, Lcom/android/server/BatteryService$19;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_27
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v7, :cond_28

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "seq"

    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$20;

    invoke-direct {v8, v1, v0}, Lcom/android/server/BatteryService$20;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    :goto_9
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v0, v7, :cond_29

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-ne v0, v10, :cond_29

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " laststatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " PogoOnline : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v8}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->setFullChargingOnDockStartTime()V

    iput-wide v5, v1, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    :cond_29
    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-eq v0, v7, :cond_2a

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_2b

    :cond_2a
    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v0, v7, :cond_2c

    iget v0, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v10, :cond_2c

    :cond_2b
    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reset mFullChargingOnDockStartTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mIncreasingCycleCnt : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, v1, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendSecEventIntentLocked()V

    iget v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v0, v7, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    :cond_2d
    iget-object v0, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    if-eqz v2, :cond_2e

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2e

    invoke-direct {v1, v3, v4}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    :cond_2e
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3200(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3500(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:Z

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3800(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatterySWSelfDischarging:Z

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3300(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatterySecCurrentEvent:I

    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    :cond_2f
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_30

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V

    :cond_30
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v0, :cond_31

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_31

    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    iget-object v7, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v7}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :cond_31
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    int-to-long v7, v0

    iget-wide v9, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    cmp-long v0, v7, v9

    if-lez v0, :cond_32

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    int-to-long v7, v0

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    int-to-long v7, v0

    iget-wide v9, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    cmp-long v0, v7, v9

    if-lez v0, :cond_33

    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    int-to-long v7, v0

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-eq v0, v7, :cond_35

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_34

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "notify wireless on"

    invoke-static {v0, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const/4 v7, 0x1

    invoke-virtual {v1, v0, v5, v6, v7}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string v0, "/sys/class/sec/switch/wireless"

    invoke-virtual {v1, v0, v5, v6, v7}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v5, "set_wirelesscharger_mode,1"

    invoke-direct {v1, v0, v5}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v13, 0x0

    goto :goto_a

    :cond_34
    const/4 v7, 0x1

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "notify wireless off"

    invoke-static {v0, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const/4 v13, 0x0

    invoke-virtual {v1, v0, v5, v6, v13}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string v0, "/sys/class/sec/switch/wireless"

    invoke-virtual {v1, v0, v5, v6, v13}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v5, "set_wirelesscharger_mode,0"

    invoke-direct {v1, v0, v5}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_a
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    goto :goto_b

    :cond_35
    const/4 v7, 0x1

    const/4 v13, 0x0

    :goto_b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    const/4 v5, 0x2

    and-int/2addr v0, v5

    if-eqz v0, :cond_36

    move v13, v7

    nop

    :cond_36
    move v0, v13

    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    if-eq v5, v0, :cond_38

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v5, :cond_37

    if-eqz v0, :cond_37

    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notify wireless backpack on"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-string v6, "3"

    invoke-direct {v1, v5, v6}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v5, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v6, "set_wirelesscharger_mode,3"

    invoke-direct {v1, v5, v6}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_37
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    :cond_38
    return-void
.end method

.method private readBatteryAsocFromEfsLocked()J
    .locals 5

    const-string v0, "/efs/FactoryApp/asoc"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "/sys/class/power_supply/battery/fg_asoc"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const-string v1, "/efs/FactoryApp/asoc"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    return-wide v2

    :cond_0
    const-string v1, "/efs/FactoryApp/asoc"

    const-wide/16 v2, 0x64

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    return-wide v2

    :cond_1
    const-string v1, "/efs/FactoryApp/asoc"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private readBatteryInfo(Ljava/lang/String;)J
    .locals 7

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@[BatteryInfo] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : data is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[BatteryInfo] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : data is \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v1
.end method

.method private readBatteryMaxCurrentFromEfsLocked()J
    .locals 5

    const-string v0, "/efs/FactoryApp/max_current"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string v2, "/efs/FactoryApp/max_current"

    const-wide/16 v3, -0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    return-wide v3

    :cond_0
    return-wide v0
.end method

.method private readBatteryMaxTempFromEfsLocked()J
    .locals 5

    const-string v0, "/efs/FactoryApp/max_temp"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string v2, "/efs/FactoryApp/max_temp"

    const-wide/16 v3, -0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    return-wide v3

    :cond_0
    return-wide v0
.end method

.method private readBatteryUsageFromEfsLocked()J
    .locals 5

    const-string v0, "/efs/FactoryApp/batt_discharge_level"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    const-wide/16 v3, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    return-wide v3

    :cond_0
    return-wide v0
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    nop

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[BatteryInfo] readFromFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "!@[BatteryInfo] IOException in readFromFile"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "!@[BatteryInfo] Exception in readFromFile"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 8

    const-string/jumbo v0, "led_indicator_charing"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    const-string/jumbo v0, "led_indicator_low_battery"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Led Charging Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Led Low Battery Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "led_indicator_charing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v0, "led_indicator_low_battery"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v0, :cond_6

    const-string v0, "adaptive_fast_charging"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@AdaptiveFastCharging Settings = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/sec/switch/afc_disable"

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    if-eq v4, v2, :cond_4

    :cond_3
    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    if-nez v4, :cond_5

    :cond_4
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@ need to change AdaptiveFastCharging Settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p0, v4}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)Z

    :cond_5
    const-string v4, "adaptive_fast_charging"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-virtual {p1, v4, v3, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_6
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "show_wireless_charger_menu"

    invoke-static {p1, v0, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    const-string/jumbo v0, "wireless_fast_charging"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@WirelessFastCharging Settings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    const-string/jumbo v0, "wireless_fast_charging"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_9
    return-void
.end method

.method private registerHealthCallback()V
    .locals 8

    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    new-instance v0, Lcom/android/server/BatteryService$HealthHalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    new-instance v2, Lcom/android/server/BatteryService$12;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;)V

    new-instance v3, Lcom/android/server/BatteryService$13;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    nop

    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "health: Waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms and received the update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "health: cannot register callback. (RemoteException)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    throw v0
.end method

.method private saveBatteryInfo(Ljava/lang/String;J)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private sendBatteryChangedIntentLocked()V
    .locals 13

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v7}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    :goto_1
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    goto :goto_2

    :cond_2
    iput v8, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    :goto_2
    iget v7, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    if-eq v3, v7, :cond_5

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v7, :cond_3

    const-string v7, "device_provisioned"

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "kids_home_mode"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    :cond_3
    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    const-string v7, "android.intent.extra.DOCK_STATE"

    iget v8, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "pogo_plugged"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$23;

    invoke-direct {v8, p0, v1}, Lcom/android/server/BatteryService$23;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "device_provisioned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "kids_home_mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v8, "BatteryService : SendIntentLocked() - pogo"

    const-wide/16 v9, 0xa

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-direct {p0, v7}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v7

    const-string/jumbo v8, "seq"

    iget v11, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "status"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "health"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "present"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "level"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "battery_low"

    iget-boolean v11, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "scale"

    const/16 v11, 0x64

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "icon-small"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "plugged"

    iget v11, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "voltage"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "temperature"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "technology"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "invalid_charger"

    iget v11, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "max_charging_current"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "max_charging_voltage"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "charge_counter"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "online"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v11}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3200(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "charge_type"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v11}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "power_sharing"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v11}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3500(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "hv_charger"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v11}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "capacity"

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "current_now"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v11}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "pogo_plugged"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "self_discharging"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v11}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3800(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "misc_event"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v11}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v8, Lcom/android/server/power/PowerManagerUtil$Sales;->CHINA:Z

    if-eqz v8, :cond_6

    const-string v8, "current_event"

    iget-object v11, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v11}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3300(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending ACTION_BATTERY_CHANGED. scale:100, info:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-virtual {v12}, Landroid/hardware/health/V1_0/HealthInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "online:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3200(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", current avg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", charge type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", POGO powered:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", power sharing:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3500(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", high voltage charger:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3600(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", capacity:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", batterySWSelfDischarging:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3800(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", misc_event:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", current_event:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3300(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", current_now:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v12}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;

    invoke-direct {v11, v0}, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v8, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v8, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v11, "BatteryService : sendIntentLocked()"

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    return-void
.end method

.method private sendBatteryLevelChangedIntentLocked()V
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string/jumbo v3, "seq"

    iget v4, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "status"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "health"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "present"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "level"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "battery_low"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "plugged"

    iget v5, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "voltage"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v4, v1, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v1

    :goto_0
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private static sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcastToExplicitPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendEnqueuedBatteryLevelChangedEvents()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BATTERY_STATS"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendOTGIntentLocked()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$26;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$26;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendSecEventIntentLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastSecEventWaterInConnector:Z

    const/high16 v2, 0x24000000

    if-eq v1, v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "water"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$24;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/BatteryService$24;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastSecEventWaterInConnector:Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v1}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v1

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-eq v1, v3, :cond_4

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "misc_event"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v3}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$3100(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "sec_plug_type"

    iget v3, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$25;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$25;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private sendWirelessPowerSharingIntentLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$4400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    const/high16 v4, 0x10000000

    if-eq v3, v0, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "enabled"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v5, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$27;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/BatteryService$27;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v3}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$4400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    if-eq v2, v1, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "connected"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/BatteryService$28;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/server/BatteryService$28;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v2}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$4400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v2

    iget v3, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    if-eq v2, v3, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "tx_event"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v5}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$4400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$29;

    invoke-direct {v4, p0, v2}, Lcom/android/server/BatteryService$29;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v3}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$4400(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    :cond_4
    return-void
.end method

.method private setFullChargingOnDockStartTime()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullChargingOnDockStartTime start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setWirelessFastCharging(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private setWirelessPowerSharingExternelEventInternal(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWirelessPowerSharingExternelEventInternal packageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    not-int v2, p1

    and-int/2addr v1, v2

    or-int/2addr v1, p2

    iget v2, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    if-eq v1, v2, :cond_0

    const-string v2, "/sys/class/power_supply/battery/ext_event"

    invoke-static {v2, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    iput v1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

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

.method private shouldSendBatteryLowLocked()Z
    .locals 6

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_3

    if-nez v3, :cond_2

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_3

    :cond_2
    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2700(Lcom/android/server/BatteryService$ExtraHealthInfo;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "Emergency mode is on so doesn\'t shutdown"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.sys.shutdown"

    const-string v1, "LBSD"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$14;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$14;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$15;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method private static traceEnd()V
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private update(Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;)V
    .locals 3

    const-string v0, "ExtHealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v1, p1}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2900(Lcom/android/server/BatteryService$ExtraHealthInfo;Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, p1, Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;->defaultHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;

    invoke-static {v1, p1}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2900(Lcom/android/server/BatteryService$ExtraHealthInfo;Lvendor/samsung/hardware/exthealth/V1_0/ExtHealthInfo;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateBatteryWarningLevelLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "skipping processValuesLocked since mBatteryProps not yet initialized"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private writeToFile(Ljava/lang/String;J)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    nop

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[BatteryInfo] writeToFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const-string v2, "/efs/FactoryApp/asoc"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a0

    const/16 v3, 0x3e8

    const/16 v4, 0x3ef

    invoke-static {p1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "!@[BatteryInfo] IOException in writeToFile"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "!@[BatteryInfo] Exception in writeToFile"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public dumpServiceList()V
    .locals 8

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "!@ dumpServiceList"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "service list"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "Failure exec: adb shell service list"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onBootPhase(I)V
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x226

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    new-instance v0, Lcom/android/server/BatteryService$8;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "low_power_trigger_level"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->registerContentObserver(Landroid/content/ContentResolver;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$9;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "persist.sys.shutdown_received"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "persist.sys.shutdown_received"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$10;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;)V

    const-wide/32 v3, 0xc350

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .locals 11

    if-nez p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x32165859    # -4.90009824E8f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_3

    const v2, 0x1bc62

    if-eq v1, v2, :cond_2

    const v2, 0x6761d4f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "set"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "unplug"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v4

    :goto_1
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v4, :cond_5

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto/16 :goto_b

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.DEVICE_POWER"

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v3, "No property specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    const-string v3, "No value specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_7
    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    :cond_8
    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string/jumbo v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x8

    goto :goto_3

    :sswitch_1
    const-string v3, "counter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x6

    goto :goto_3

    :sswitch_2
    const-string/jumbo v3, "level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_3
    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x7

    goto :goto_3

    :sswitch_4
    const-string/jumbo v9, "usb"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_3

    :sswitch_5
    const-string v3, "ac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    goto :goto_3

    :sswitch_6
    const-string/jumbo v3, "present"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v6

    goto :goto_3

    :sswitch_7
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    goto :goto_3

    :sswitch_8
    const-string/jumbo v3, "wireless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    goto :goto_3

    :cond_9
    :goto_2
    move v3, v4

    :goto_3
    packed-switch v3, :pswitch_data_1

    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_9

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    goto/16 :goto_9

    :pswitch_4
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    goto/16 :goto_9

    :pswitch_5
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    goto :goto_9

    :pswitch_6
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    goto :goto_9

    :pswitch_7
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_a

    move v9, v5

    goto :goto_4

    :cond_a
    move v9, v6

    :goto_4
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    goto :goto_9

    :pswitch_8
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_b

    move v9, v5

    goto :goto_5

    :cond_b
    move v9, v6

    :goto_5
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    goto :goto_9

    :pswitch_9
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_c

    move v9, v5

    goto :goto_6

    :cond_c
    move v9, v6

    :goto_6
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    goto :goto_9

    :pswitch_a
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_d

    move v9, v5

    goto :goto_7

    :cond_d
    move v9, v6

    :goto_7
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    goto :goto_9

    :goto_8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown set option: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    :catchall_1
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_e
    :goto_a
    nop

    goto :goto_b

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    :cond_f
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    :goto_b
    return v6

    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3b9b7862 -> :sswitch_8
        -0x3532300e -> :sswitch_7
        -0x12f88745 -> :sswitch_6
        0xc22 -> :sswitch_5
        0x1c584 -> :sswitch_4
        0x3643d4 -> :sswitch_3
        0x6219b84 -> :sswitch_2
        0x391755fc -> :sswitch_1
        0x74cff1f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const-string v0, "battery"

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    const-string v0, "batteryproperties"

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/BatteryService;->checkLongLifeBattery()V

    return-void
.end method

.method parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method setAdaptiveFastCharging(Z)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "/sys/class/sec/switch/afc_disable"

    xor-int/lit8 v2, p1, 0x1

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "success to set AFC sysfs as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "fail to set AFC sysfs"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method setHiccupDisable()Z
    .locals 2

    const-string v0, "/sys/class/sec/switch/hiccup"

    const-string v1, "DISABLE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setOTGEnableDisable(Z)Z
    .locals 3

    const-string v0, "/sys/class/power_supply/otg/online"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method setWirelessPowerSharing(Z)Z
    .locals 3

    const-string v0, "/sys/class/power_supply/battery/wc_tx_en"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method writeToFile(Ljava/lang/String;JZ)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p4, :cond_1

    const-string v2, "1"

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "0"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    nop

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :goto_2
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v3
.end method

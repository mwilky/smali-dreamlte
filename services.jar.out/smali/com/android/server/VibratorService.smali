.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$SecFeatureObserver;,
        Lcom/android/server/VibratorService$FeatureAppMute;,
        Lcom/android/server/VibratorService$FeatureAllMute;,
        Lcom/android/server/VibratorService$FeatureSetting;,
        Lcom/android/server/VibratorService$SecFeature;,
        Lcom/android/server/VibratorService$VibratorHandler;,
        Lcom/android/server/VibratorService$VibratorThread;,
        Lcom/android/server/VibratorService$VibratorShellCommand;,
        Lcom/android/server/VibratorService$AbortLogInfo;,
        Lcom/android/server/VibratorService$MuteLogInfo;,
        Lcom/android/server/VibratorService$AbortVibration;,
        Lcom/android/server/VibratorService$MuteCallInfo;,
        Lcom/android/server/VibratorService$MuteNotificationInfo;,
        Lcom/android/server/VibratorService$MuteInfo;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$PatternInfo;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$ScaleLevel;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_START:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_START"

.field private static final ACTION_CAMERA_STOP:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_STOP"

.field private static final ACTION_FLIP_FOLDER_STATE_CHANGED:Ljava/lang/String; = "com.samsung.flipfolder.OPEN"

.field private static final ACTION_GOOD_CATCH_URI:Ljava/lang/String; = "com.samsung.android.app.goodcatch.GOOD_CATCH_URI"

.field private static final DEBUG:Z = false

.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final EXTRA_FLIP_FOLDER_STATE_CHANGED:Ljava/lang/String; = "flipOpen"

.field private static final EXTRA_KEEP_SCREEN_OFF:Ljava/lang/String; = "reason"

.field private static final EXTRA_ONOFF_SETTING_URI:Ljava/lang/String; = "ONOFF_SETTING_URI"

.field private static final EXTRA_VIBRATION_OFF_APP_LIST_URI:Ljava/lang/String; = "VIBRATION_OFF_APP_LIST_URI"

.field private static final FOLDER_CLOSE:Ljava/lang/String; = "FOLDER_CLOSE"

.field private static final FOLDER_OPEN:Ljava/lang/String; = "FOLDER_OPEN"

.field private static final FREQUENCY_ALERT:I = 0x0

.field private static final FREQUENCY_F0:I = 0x4

.field private static final FREQUENCY_HIGH:I = 0x3

.field private static final FREQUENCY_LOW:I = 0x1

.field private static final FREQUENCY_MID:I = 0x2

.field private static final GOODCATCH_FUNCTION_VIBRATION:Ljava/lang/String; = "vibration"

.field private static final GOODCATCH_MODULE:Ljava/lang/String; = "VibratorService"

.field private static final HAPTIC_ENGINE_DATA_UNIT_SIZE:I = 0x4

.field private static final LOG_INFOS_LIMIT:I = 0xf

.field private static final MAX_HAPTIC_FEEDBACK_DURATION:J = 0x1388L

.field private static final MOTOR_COIN_DC:I = 0x1

.field private static final MOTOR_COIN_DC_INDEX:I = 0x4

.field private static final MOTOR_COIN_DC_PMIC:I = 0x3

.field private static final MOTOR_LINEAR_0832:I = 0x2

.field private static final MOTOR_LINEAR_0832RC:I = 0x6

.field private static final MOTOR_LINEAR_1040:I = 0x7

.field private static final MOTOR_LINEAR_INDEX:I = 0x5

.field private static final MOTOR_NONE:I = 0x0

.field private static final MSG_CREATE_OBSERVER:I = 0x2

.field private static final MSG_UPDATE_APP_MUTE:I = 0x1

.field private static final MSG_UPDATE_SETTING:I = 0x0

.field private static final MUTE_INFO_DELIMITER:Ljava/lang/String; = ";"

.field private static final PKG_ACT_ALWAYS:Ljava/lang/String;

.field private static final REPEAT_DEFAULT:I = -0x2

.field private static final SAFE_DEBUG:Z

.field private static final SCALE_HIGH:I = 0x1

.field private static final SCALE_HIGH_GAMMA:F = 0.5f

.field private static final SCALE_LOW:I = -0x1

.field private static final SCALE_LOW_GAMMA:F = 1.5f

.field private static final SCALE_LOW_MAX_AMPLITUDE:I = 0xc0

.field private static final SCALE_NONE:I = 0x0

.field private static final SCALE_NONE_GAMMA:F = 1.0f

.field private static final SCALE_VERY_HIGH:I = 0x2

.field private static final SCALE_VERY_HIGH_GAMMA:F = 0.25f

.field private static final SCALE_VERY_LOW:I = -0x2

.field private static final SCALE_VERY_LOW_GAMMA:F = 2.0f

.field private static final SCALE_VERY_LOW_MAX_AMPLITUDE:I = 0xa8

.field private static final SET_FREQUNCY_PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_FORCE:I = 0x3

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static final TYPE_URI:[Ljava/lang/String;

.field private static final VIB_DEBUG:Z = true

.field private static sMuteLogInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$MuteLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sMutedInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/server/VibratorService$MuteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LEVEL_TO_FORCE_MAGNITUDE:[I

.field private LEVEL_TO_MAGNITUDE:[I

.field private LEVEL_TO_TOUCH_MAGNITUDE:[I

.field private final mAbortLogInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$AbortLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActAlwaysPkgs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitude:I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mCameraOn:Z

.field private mCheckExecutable:I

.field private mCheckExecutablePkg:Ljava/lang/String;

.field private mCirrusNumWaves:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureAllMute:Lcom/android/server/VibratorService$FeatureAllMute;

.field private mFeatureAppMute:Lcom/android/server/VibratorService$FeatureAppMute;

.field private mFeatureSetting:Lcom/android/server/VibratorService$FeatureSetting;

.field private mForceMagnitude:I

.field private mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mGoodCatchVibrationOn:Z

.field private final mH:Landroid/os/Handler;

.field private mHMTMount:Z

.field private mHMTMountCount:I

.field private mHapticFeedbackIntensity:I

.field private mHasVibrator:Z

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEnableIntensity:Z

.field private mIsExistEventNode:Z

.field private mIsExistMotorTypeNode:Z

.field private mIsForceTouchIntensitySupported:Z

.field private mIsFrequencySupported:Z

.field private mIsGearVrTetheredDocked:Z

.field private mIsHapticEngineSupported:Z

.field private mIsHapticSupported:Z

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mMaxMagnitude:I

.field private mMinMagnitude:I

.field private mMotorType:I

.field private mMotorTypeLegacy:I

.field private mNotiMagnitude:I

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mNotificationIntensity:I

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousNoTouchVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private final mScaleLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$ScaleLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mSecFeatureObserver:Lcom/android/server/VibratorService$SecFeatureObserver;

.field private mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportsAmplitudeControl:Z

.field private mTempMagnitude:I

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTimeFormat:Ljava/text/SimpleDateFormat;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitude:I

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mUseMax:Z

.field private mVibePatternHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/VibratorService$PatternInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorHandler:Lcom/android/server/VibratorService$VibratorHandler;

.field private mVibratorThread:Lcom/android/server/VibratorService$VibratorThread;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    sget-object v0, Landroid/view/accessibility/A11yRune;->VIB_COMMON_STRING_DNDEXCEPTIONPACKAGE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/VibratorService;->PKG_ACT_ALWAYS:Ljava/lang/String;

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    const-string v2, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    const-string v3, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    return-void

    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/VibratorService;->mCurVibUid:I

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/VibratorService;->mTimeFormat:Ljava/text/SimpleDateFormat;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsExistEventNode:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsExistMotorTypeNode:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    const-string v4, "Max"

    sget-object v5, Landroid/view/accessibility/A11yRune;->VIB_COMMON_STRING_VIBSERVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/VibratorService;->mUseMax:Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/server/VibratorService;->mActAlwaysPkgs:Ljava/util/HashSet;

    const/16 v4, 0x270f

    iput v4, v0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iput v4, v0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    iput v4, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v4, v0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    iput v4, v0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    iput v4, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    iput v2, v0, Lcom/android/server/VibratorService;->mMotorType:I

    iput v2, v0, Lcom/android/server/VibratorService;->mMotorTypeLegacy:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    iput v3, v0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    const-string v4, ""

    iput-object v4, v0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mCameraOn:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mHMTMount:Z

    iput v3, v0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    iput v3, v0, Lcom/android/server/VibratorService;->mCirrusNumWaves:I

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mGoodCatchVibrationOn:Z

    new-instance v4, Lcom/android/server/VibratorService$1;

    invoke-direct {v4, v0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v4, v0, Lcom/android/server/VibratorService;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    new-instance v4, Lcom/android/server/VibratorService$6;

    invoke-direct {v4, v0}, Lcom/android/server/VibratorService$6;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v4, v0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    new-instance v4, Lcom/android/server/VibratorService$7;

    invoke-direct {v4, v0}, Lcom/android/server/VibratorService$7;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v4, v0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput v2, v0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/VibratorService;->mSecFeatureObserver:Lcom/android/server/VibratorService$SecFeatureObserver;

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    iput-object v1, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string v5, "*vibrator*"

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, v0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v5, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, v0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const-string v5, "batterystats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10e00ae

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    iget-object v5, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10e004a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sput-object v5, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v7, 0x10700d5

    invoke-direct {v0, v7}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v7

    sget-object v8, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v8, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v8

    const v9, 0x1070090

    invoke-direct {v0, v9}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v9

    const v10, 0x1070070

    invoke-direct {v0, v10}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v10

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    iget-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v11, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v11, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v12, 0x2

    invoke-virtual {v11, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v13, 0x5

    invoke-virtual {v11, v13, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    iget-object v11, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v14, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v15, 0x40000000    # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v14, v15, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    const/4 v13, -0x2

    invoke-virtual {v11, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v11, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v14, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v15, 0x3fc00000    # 1.5f

    const/16 v13, 0xc0

    invoke-direct {v14, v15, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v11, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-direct {v11, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v2, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-direct {v11, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v2, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v2, v0, Lcom/android/server/VibratorService;->mUseMax:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/VibratorService;->PKG_ACT_ALWAYS:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v11, v3

    :goto_0
    array-length v13, v2

    if-ge v11, v13, :cond_0

    iget-object v13, v0, Lcom/android/server/VibratorService;->mActAlwaysPkgs:Ljava/util/HashSet;

    aget-object v14, v2, v11

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "VibratorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ro.product.first_api_level : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Landroid/view/accessibility/A11yRune;->VIB_COMMON_INT_FIRST_API_LEVEL:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", ro.build.version.sdk : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Landroid/view/accessibility/A11yRune;->VIB_COMMON_INT_CURRENT_API_LEVEL:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", upgrade p-os model : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_COMMON_BOOL_UPGRADE_P()Z

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x10700c0

    const/4 v13, 0x4

    invoke-direct {v0, v6, v2, v11, v13}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const v11, 0x10700c1

    invoke-direct {v0, v12, v2, v11, v13}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const v11, 0x10700c2

    const/4 v14, 0x3

    invoke-direct {v0, v14, v2, v11, v12}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const v11, 0x10700c3

    invoke-direct {v0, v13, v2, v11, v14}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const v11, 0x10700c4

    const/4 v15, 0x5

    invoke-direct {v0, v15, v2, v11, v6}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/4 v11, 0x6

    const v15, 0x10700c5

    invoke-direct {v0, v11, v2, v15, v13}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const v11, 0x10700c6

    const/4 v15, 0x7

    invoke-direct {v0, v15, v2, v11, v12}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v11, 0x8

    const v6, 0x10700c7

    invoke-direct {v0, v11, v2, v6, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0x9

    const v11, 0x10700c8

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0xa

    const v11, 0x10700c9

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0xb

    const v11, 0x10700ca

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0xc

    const v11, 0x10700cb

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0xd

    const v11, 0x10700cc

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0xe

    const v11, 0x10700cd

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0xf

    const v11, 0x10700ce

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0x10

    const v11, 0x10700cf

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0x11

    const v11, 0x10700d0

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0x12

    const v11, 0x10700d1

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0x13

    const v11, 0x10700d2

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0x14

    const v11, 0x10700d3

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    const/16 v6, 0x15

    const v11, 0x10700d4

    invoke-direct {v0, v6, v2, v11, v3}, Lcom/android/server/VibratorService;->createPatternInfo(ILandroid/content/res/Resources;II)V

    invoke-static {}, Lcom/android/server/VibratorService;->getVibratorMotorType()I

    move-result v6

    iput v6, v0, Lcom/android/server/VibratorService;->mMotorTypeLegacy:I

    sget-boolean v6, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "VibratorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMotorTypeLegacy: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/VibratorService;->mMotorTypeLegacy:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/server/VibratorService;->motorTypeNodeExist()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsExistMotorTypeNode:Z

    sget-boolean v3, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mIsExistMotorTypeNode: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/server/VibratorService;->mIsExistMotorTypeNode:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorFrequencyExist()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    sget-boolean v3, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "f : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorEngineExist()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    sget-boolean v3, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "e : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorForceTouchIntensityExist()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    sget-boolean v3, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "f.t.i : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorEventNodeExist()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsExistEventNode:Z

    sget-boolean v3, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mIsExistEventNode: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/server/VibratorService;->mIsExistEventNode:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v3, v0, Lcom/android/server/VibratorService;->mIsExistMotorTypeNode:Z

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/server/VibratorService;->getMotorIndex()I

    move-result v3

    iput v3, v0, Lcom/android/server/VibratorService;->mMotorType:I

    const-string v3, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mMotorType:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget v3, v0, Lcom/android/server/VibratorService;->mMotorTypeLegacy:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid mMotorTypeLegacy:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/VibratorService;->mMotorTypeLegacy:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x5

    iput v3, v0, Lcom/android/server/VibratorService;->mMotorType:I

    goto :goto_1

    :pswitch_1
    iput v13, v0, Lcom/android/server/VibratorService;->mMotorType:I

    goto :goto_1

    :pswitch_2
    iput v14, v0, Lcom/android/server/VibratorService;->mMotorType:I

    goto :goto_1

    :pswitch_3
    iget-boolean v3, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v3, :cond_9

    iput v15, v0, Lcom/android/server/VibratorService;->mMotorType:I

    goto :goto_1

    :cond_9
    iput v12, v0, Lcom/android/server/VibratorService;->mMotorType:I

    goto :goto_1

    :pswitch_4
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/server/VibratorService;->mMotorType:I

    goto :goto_1

    :pswitch_5
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/VibratorService;->mMotorType:I

    nop

    :goto_1
    const-string v3, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mMotorType is set to "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v3, v0, Lcom/android/server/VibratorService;->mMotorType:I

    const v6, 0x10700bc

    const v11, 0x10700ba

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_6
    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10700bb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10700bd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto :goto_3

    :pswitch_7
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/view/accessibility/A11yRune;->SET_VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC(Z)V

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetNumWaves()I

    move-result v3

    iput v3, v0, Lcom/android/server/VibratorService;->mCirrusNumWaves:I

    goto :goto_3

    :pswitch_8
    goto :goto_3

    :pswitch_9
    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10700bf

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto :goto_3

    :pswitch_a
    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    goto :goto_3

    :pswitch_b
    goto :goto_3

    :pswitch_c
    nop

    :goto_3
    iget-boolean v3, v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    iget-object v11, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    if-lt v3, v12, :cond_11

    if-ge v11, v12, :cond_a

    goto/16 :goto_8

    :cond_a
    iget-object v6, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v6, v6, v11

    iput v6, v0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iget-object v6, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v6, v6, v3

    iput v6, v0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    iget-object v6, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v6, v6, v3

    iput v6, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iget-object v6, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v6, v6, v3

    iput v6, v0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    iget-object v6, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    const/4 v13, 0x1

    aget v6, v6, v13

    iput v6, v0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v6, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v15, 0x0

    invoke-direct {v6, v0, v15}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v6, v0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    new-instance v6, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v6, v0, v13}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v6, v0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    new-instance v6, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v6, v0, v12}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v6, v0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    iget-object v6, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v13, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    const/4 v15, -0x2

    invoke-static {v6, v13, v11, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-le v6, v11, :cond_b

    move v13, v6

    goto :goto_4

    :cond_b
    iget-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v13, v13, v6

    :goto_4
    iput v13, v0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iget-object v13, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/4 v14, -0x2

    invoke-static {v13, v15, v3, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-le v6, v3, :cond_c

    move v13, v6

    goto :goto_5

    :cond_c
    iget-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v13, v13, v6

    :goto_5
    iput v13, v0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    iget-object v13, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    aget-object v14, v14, v12

    const/4 v15, -0x2

    invoke-static {v13, v14, v3, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-le v6, v3, :cond_d

    move v13, v6

    goto :goto_6

    :cond_d
    iget-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v13, v13, v6

    :goto_6
    iput v13, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iget-boolean v13, v0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v13, :cond_10

    iget-object v13, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10700be

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    new-instance v13, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v14, 0x3

    invoke-direct {v13, v0, v14}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v13, v0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    iget-object v13, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v13, v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v14, v14, v13

    iput v14, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    if-ge v13, v12, :cond_e

    const-string v12, "VibratorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v12, v0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    const/4 v15, -0x2

    invoke-static {v12, v14, v13, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-le v6, v13, :cond_f

    move v12, v6

    goto :goto_7

    :cond_f
    iget-object v12, v0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v12, v12, v6

    :goto_7
    iput v12, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    iget-boolean v12, v0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    if-eqz v12, :cond_10

    iget v12, v0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    int-to-long v14, v12

    invoke-static {v14, v15}, Lcom/android/server/VibratorService;->vibratorForceTouchIntensity(J)V

    :cond_10
    iget v12, v0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-direct {v0, v12}, Lcom/android/server/VibratorService;->setIntensity(I)V

    goto :goto_9

    :cond_11
    :goto_8
    const-string v6, "VibratorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "magnitudeMaxLevel : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", touchMagnitudeMaxLevel : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/android/server/VibratorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mGoodCatchVibrationOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/VibratorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/VibratorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$VibrateThread;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;JIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService;->doVibratorOn(JIIIII)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/VibratorService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/VibratorService;JIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService;->doVibratorOnByIndex(JIIIII)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/VibratorService;JIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/VibratorService;JII[IIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/server/VibratorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mCameraOn:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/VibratorService;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/VibratorService;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/VibratorService;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$4300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/VibratorService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/VibratorService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return p1
.end method

.method static synthetic access$4902(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/VibratorService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return p1
.end method

.method static synthetic access$5400()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$5500(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/VibratorService;->addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibratorHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibratorHandler:Lcom/android/server/VibratorService$VibratorHandler;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$VibratorHandler;)Lcom/android/server/VibratorService$VibratorHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService;->mVibratorHandler:Lcom/android/server/VibratorService$VibratorHandler;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFeatureSetting:Lcom/android/server/VibratorService$FeatureSetting;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAppMute;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFeatureAppMute:Lcom/android/server/VibratorService$FeatureAppMute;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->createObserver()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAllMute;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFeatureAllMute:Lcom/android/server/VibratorService$FeatureAllMute;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/VibratorService;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mActAlwaysPkgs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/os/Handler;IIILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reloadContentObserver()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsExistEventNode:Z

    return v0
.end method

.method private addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addToAbortLogInfos(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$MuteInfo;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/android/server/VibratorService$MuteInfo;->access$5700(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/VibratorService$MuteInfo;->access$5700(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    invoke-static {v3}, Lcom/android/server/VibratorService$MuteInfo;->access$5800(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/VibratorService$AbortVibration;

    invoke-static {v6}, Lcom/android/server/VibratorService$AbortVibration;->access$5900(Lcom/android/server/VibratorService$AbortVibration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    invoke-static {v6}, Lcom/android/server/VibratorService$AbortVibration;->access$6000(Lcom/android/server/VibratorService$AbortVibration;)V

    :cond_2
    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    new-instance v6, Lcom/android/server/VibratorService$AbortVibration;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/VibratorService$AbortVibration;-><init>(Lcom/android/server/VibratorService$1;)V

    invoke-static {v6, p2}, Lcom/android/server/VibratorService$AbortVibration;->access$6200(Lcom/android/server/VibratorService$AbortVibration;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/VibratorService$AbortVibration;->access$6000(Lcom/android/server/VibratorService$AbortVibration;)V

    invoke-static {v3, v6}, Lcom/android/server/VibratorService$MuteInfo;->access$6300(Lcom/android/server/VibratorService$MuteInfo;Lcom/android/server/VibratorService$AbortVibration;)V

    :cond_4
    goto :goto_0

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :goto_2
    return-void
.end method

.method private addToAbortLogInfos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/VibratorService$AbortLogInfo;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/server/VibratorService$AbortLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private static addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V
    .locals 10

    sget-object v0, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    new-instance v3, Lcom/android/server/VibratorService$MuteLogInfo;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    move-object v5, v1

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/VibratorService$MuteLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    const-string v2, "/"

    iget-object v3, v1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->getCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, v0, Lcom/android/server/VibratorService;->mTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v5, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v8, v1, Lcom/android/server/VibratorService$Vibration;->startTime:J

    iget-object v10, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v11, v1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget v12, v1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v13, v1, Lcom/android/server/VibratorService$Vibration;->uid:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v18

    iget-boolean v6, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    const/16 v25, -0x1

    if-eqz v6, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    move/from16 v19, v6

    goto :goto_0

    :cond_2
    move/from16 v19, v25

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v20

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v22

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v24

    move-object v7, v5

    move-object/from16 v23, v3

    invoke-direct/range {v7 .. v24}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIII[IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Vibrator$SemMagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v4

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v4, v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v4, v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    iget v6, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v5, v6, :cond_3

    iget-object v5, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_3
    iget-object v5, v0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    new-instance v6, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v8, v1, Lcom/android/server/VibratorService$Vibration;->startTime:J

    iget-object v10, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v11, v1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget v12, v1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v13, v1, Lcom/android/server/VibratorService$Vibration;->uid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v18

    iget-boolean v7, v0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v7, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    move/from16 v19, v7

    goto :goto_1

    :cond_4
    move/from16 v19, v25

    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v20

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v22

    invoke-static/range {p1 .. p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v24

    move-object v7, v6

    move-object/from16 v23, v3

    invoke-direct/range {v7 .. v24}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIII[IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-boolean v5, v0, Lcom/android/server/VibratorService;->mGoodCatchVibrationOn:Z

    if-eqz v5, :cond_5

    iget-object v6, v0, Lcom/android/server/VibratorService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v7, "vibration"

    iget-object v8, v1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ""

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .locals 0

    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private createObserver()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mSecFeatureObserver:Lcom/android/server/VibratorService$SecFeatureObserver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFeatureSetting:Lcom/android/server/VibratorService$FeatureSetting;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$FeatureSetting;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFeatureAppMute:Lcom/android/server/VibratorService$FeatureAppMute;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$FeatureAppMute;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/VibratorService$SecFeatureObserver;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$SecFeatureObserver;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSecFeatureObserver:Lcom/android/server/VibratorService$SecFeatureObserver;

    :cond_0
    return-void
.end method

.method private createPatternInfo(ILandroid/content/res/Resources;II)V
    .locals 4

    new-instance v0, Lcom/android/server/VibratorService$PatternInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/VibratorService$PatternInfo;-><init>(Lcom/android/server/VibratorService$1;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/VibratorService;->initPattern(Landroid/content/res/Resources;II)[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService$PatternInfo;->access$3802(Lcom/android/server/VibratorService$PatternInfo;[J)[J

    invoke-static {v0, p4}, Lcom/android/server/VibratorService$PatternInfo;->access$3902(Lcom/android/server/VibratorService$PatternInfo;I)I

    invoke-direct {p0, p2, p3}, Lcom/android/server/VibratorService;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService$PatternInfo;->access$4002(Lcom/android/server/VibratorService$PatternInfo;[I)[I

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVibePatternHash.put("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pattern), mVibePatternHash.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private createVibratorThread()V
    .locals 1

    new-instance v0, Lcom/android/server/VibratorService$VibratorThread;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$VibratorThread;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mVibratorThread:Lcom/android/server/VibratorService$VibratorThread;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibratorThread:Lcom/android/server/VibratorService$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibratorThread;->start()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->waitForVibratorHandlerCreation()V

    return-void
.end method

.method private doCancelVibrateLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const-string/jumbo v0, "vibration"

    const-wide/32 v1, 0x800000

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo v0, "doCancelVibrateLocked"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    const-string/jumbo v0, "doVibratorOff"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "VibratorService"

    const-string v5, "Turning vibrator off"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorOn(JIII)V
    .locals 7

    const-string/jumbo v0, "doVibratorOn"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    :try_start_1
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_0
    :goto_0
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6, p1, p2, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorOn(JIIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->isDisableVibratorForVr()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratorOn() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms, mag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", f : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v5, :cond_2

    move v3, p6

    nop

    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not working because HMTMount is TRUE."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratorOn() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms, mag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", f : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v5, :cond_4

    move v3, p6

    nop

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x0

    int-to-long v4, p5

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/VibratorService;->vibratorEngineByIndex(JJ)V

    :cond_5
    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->setFrequency(I)V

    invoke-direct {p0, p5}, Lcom/android/server/VibratorService;->setIntensity(I)V

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doVibratorOn(JIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto/16 :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->isDisableVibratorForVr()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratorOn() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms, amplitude :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", f : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v5, :cond_2

    move v3, p7

    nop

    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not working because HMTMount is TRUE."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratorOn() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms, amplitude :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", f : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v5, :cond_4

    move v5, p7

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v4, 0x0

    int-to-long v6, p6

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/VibratorService;->vibratorEngineByIndex(JJ)V

    :cond_5
    invoke-direct {p0, p7}, Lcom/android/server/VibratorService;->setFrequency(I)V

    if-ne p3, v3, :cond_6

    invoke-direct {p0, p6}, Lcom/android/server/VibratorService;->setIntensity(I)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    :goto_2
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

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

.method private doVibratorOn(JII[IIII)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->isDisableVibratorForVr()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibratorOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms, mag :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not working because HMTMount is TRUE."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibratorOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms, mag :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-le p8, v2, :cond_3

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    :cond_3
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2, p6, p8}, Lcom/android/server/VibratorService;->vibratorEngine([III)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doVibratorOnByIndex(JIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0xc368

    const v3, 0xc368

    sub-int v3, p6, v3

    add-int/lit8 v3, v3, 0x9

    if-eqz v1, :cond_1

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6, p1, p2, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    goto/16 :goto_1

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doVibratorOnByIndex() , mag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", repeat : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not working because HMTMount is TRUE."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doVibratorOnByIndex() , mag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", repeat : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-le p7, v4, :cond_3

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    :cond_3
    if-le p7, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v5, p5, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", 10, 0~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cp_trigger_string:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v5, p5

    invoke-static {v4, v5, v6}, Lcom/android/server/VibratorService;->vibratorEngineByString(Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    int-to-long v4, v3

    int-to-long v6, p5

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/VibratorService;->vibratorEngineByIndex(JJ)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string/jumbo v0, "doVibratorPrebakedEffectLocked"

    const-wide/32 v11, 0x800000

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v10, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v13, v0

    iget-object v1, v9, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v9, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v14, 0x0

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v1

    cmp-long v3, v1, v14

    if-lez v3, :cond_0

    iget v3, v10, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v9, v3, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v1

    :cond_0
    :try_start_3
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_1

    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v14

    :cond_1
    :try_start_4
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v16, v1

    if-nez v16, :cond_2

    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v14

    :cond_2
    :try_start_5
    new-instance v17, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v10, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget v5, v10, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v6, v10, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v10, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v1, v17

    move-object v2, v9

    move-object/from16 v4, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v17

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {v9, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v14

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    :cond_0
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getCaller()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Vibrator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getColorfulData(I)[I
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$PatternInfo;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->access$4000(Lcom/android/server/VibratorService$PatternInfo;)[I

    move-result-object v2

    return-object v2

    :cond_0
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCommonPattern(), IndexOutOfBoundsException occured, type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    return-object v2

    nop

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private getColorfulPattern([J)[J
    .locals 11

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    aget-wide v5, p1, v4

    cmp-long v5, v5, v1

    if-gez v5, :cond_0

    return-object p1

    :cond_0
    const/4 v5, 0x0

    new-array v3, v3, [J

    move v6, v5

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    int-to-long v7, v6

    aget-wide v9, p1, v5

    add-long/2addr v7, v9

    long-to-int v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    aput-wide v1, v3, v4

    int-to-long v1, v6

    const/4 v4, 0x1

    aput-wide v1, v3, v4

    return-object v3
.end method

.method private getCommonPattern(I)[J
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$PatternInfo;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/VibratorService$PatternInfo;->access$3800(Lcom/android/server/VibratorService$PatternInfo;)[J

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCommonPattern(), index out of bound, mVibePatternHash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    :goto_0
    return-object v2

    nop

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getCommonPatternFrequency(I)I
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    sub-int v1, p1, v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-nez v3, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$PatternInfo;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/server/VibratorService$PatternInfo;->access$3900(Lcom/android/server/VibratorService$PatternInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCommonPatternFrequency(), index out of bound, mVibePatternHash:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method private getCustomPattern([I)[J
    .locals 11

    array-length v0, p1

    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    new-array v1, v2, [J

    fill-array-data v1, :array_0

    return-object v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    div-int/2addr v1, v3

    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v4, v1, [J

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    aput-wide v7, v4, v5

    aget v2, p1, v2

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x1

    :cond_1
    nop

    :goto_0
    move v2, v3

    if-ge v2, v0, :cond_5

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_4

    if-eqz v6, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    if-eqz v3, :cond_2

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    if-nez v3, :cond_3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    :cond_3
    :goto_1
    aget-wide v7, v4, v5

    aget v3, p1, v2

    int-to-long v9, v3

    add-long/2addr v7, v9

    aput-wide v7, v4, v5

    :cond_4
    add-int/lit8 v3, v2, 0x4

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v5, 0x1

    new-array v3, v2, [J

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_6

    aget-wide v8, v4, v7

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    return-object v3

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method static getIntArray(Landroid/content/res/Resources;I)[I
    .locals 7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget v5, v0, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    add-int/lit8 v1, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v1, :cond_3

    return-object v2

    :cond_3
    array-length v2, v0

    sub-int/2addr v2, v1

    new-array v4, v2, [I

    nop

    :goto_2
    if-ge v3, v2, :cond_4

    add-int v5, v3, v1

    aget v5, v0, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v4
.end method

.method static getLongArray(Landroid/content/res/Resources;I)[J
    .locals 6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-array v1, v3, [J

    nop

    :goto_2
    if-ge v2, v3, :cond_3

    aget v4, v0, v2

    int-to-long v4, v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getMagnitude(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/os/Vibrator$SemMagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    sget-object v1, Lcom/android/server/VibratorService$8;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    return v2

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    :pswitch_1
    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    return v1

    :pswitch_2
    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v1

    :pswitch_3
    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/VibratorService$MuteCallInfo;->access$4200()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :pswitch_4
    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_2
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$4100()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v2

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mCameraOn:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    iget v2, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_3
    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :pswitch_5
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mUseMax:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/VibratorService;->mActAlwaysPkgs:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v1

    :cond_4
    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$4100()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->addAbortedVibration(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v2

    :cond_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v1

    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    :pswitch_6
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMillisecondsFromColorfulData([I)J
    .locals 6

    const-wide/16 v0, 0x0

    array-length v2, p1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method static native getMotorIndex()I
.end method

.method private static getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationService()Landroid/app/INotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mNotificationManager:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mNotificationManager:Landroid/app/INotificationManager;

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mNotificationManager:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static native getVibratorMotorType()I
.end method

.method private hasColorfulData(I[I)Z
    .locals 2

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v1, p2, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initEngineData(Landroid/content/res/Resources;I)[I
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getIntArray(Landroid/content/res/Resources;I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    return-object v1

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private initPattern(Landroid/content/res/Resources;II)[J
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->getLongArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    return-object v1

    :cond_0
    return-object v0

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private initSupportMute()V
    .locals 1

    new-instance v0, Lcom/android/server/VibratorService$FeatureSetting;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$FeatureSetting;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mFeatureSetting:Lcom/android/server/VibratorService$FeatureSetting;

    new-instance v0, Lcom/android/server/VibratorService$FeatureAllMute;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$FeatureAllMute;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mFeatureAllMute:Lcom/android/server/VibratorService$FeatureAllMute;

    new-instance v0, Lcom/android/server/VibratorService$FeatureAppMute;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$FeatureAppMute;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mFeatureAppMute:Lcom/android/server/VibratorService$FeatureAppMute;

    invoke-direct {p0}, Lcom/android/server/VibratorService;->createVibratorThread()V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFeatureSetting:Lcom/android/server/VibratorService$FeatureSetting;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$FeatureSetting;->addGoodCatchFilter()V

    return-void
.end method

.method private static intensityToEffectStrength(I)I
    .locals 4

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unexpected vibration intensity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAll0([J)Z
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "VibratorService"

    const-string/jumbo v2, "isAll0() is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method private isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private isColorfulDataFormat([I)Z
    .locals 7

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v0, v2, :cond_3

    div-int/lit8 v4, v1, 0x4

    mul-int/2addr v4, v2

    if-eq v4, v1, :cond_0

    goto :goto_1

    :cond_0
    aget v2, p1, v3

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isColorfulDataFormat() - wrong format(2) : data["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_4

    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isColorfulDataFormat() - wrong format(1) : data["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return v3
.end method

.method private isDisableVibratorForVr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isExecutablePattern([JILjava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "VibratorService"

    const-string/jumbo v2, "isExecutablePattern() - pattern is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    array-length v1, p1

    if-lt p2, v1, :cond_1

    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isExecutablePattern() - length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", repeat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    aget-wide v2, p1, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_2

    return v3

    :cond_2
    div-int/lit8 v2, p2, 0x2

    mul-int/lit8 v2, v2, 0x2

    if-ne v2, p2, :cond_3

    div-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    if-eq v2, v1, :cond_4

    :cond_3
    div-int/lit8 v2, p2, 0x2

    mul-int/lit8 v2, v2, 0x2

    if-eq v2, p2, :cond_5

    div-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    if-eq v2, v1, :cond_5

    :cond_4
    add-int/lit8 v2, v1, -0x1

    aget-wide v6, p1, v2

    cmp-long v2, v6, v4

    if-lez v2, :cond_5

    return v3

    :cond_5
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    add-int v6, v2, p2

    add-int/2addr v6, v3

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_6

    aget-wide v8, p1, v6

    aget-wide v10, p1, v7

    add-long/2addr v8, v10

    cmp-long v8, v8, v4

    if-lez v8, :cond_6

    return v3

    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_7
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This pattern is not executable. repeat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_8

    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pattern["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p1, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return v0
.end method

.method private isNotification(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private linkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method static native motorTypeNodeExist()Z
.end method

.method private noteVibratorOffLocked()V
    .locals 2

    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    :cond_0
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private reloadContentObserver()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v0, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_6

    if-ge v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-le v4, v2, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v5, v5, v4

    :goto_0
    iput v5, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v5, v7, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-le v4, v0, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v4

    :goto_1
    iput v5, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v5, v7, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-le v4, v0, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v4

    :goto_2
    iput v5, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v0

    iput v5, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v1

    iput v5, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/VibratorService;->mForceMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v5}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    iget-object v5, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v5, v5

    sub-int/2addr v5, v1

    iget-object v1, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    if-ge v5, v3, :cond_4

    const-string v1, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v3, v3, v7

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-le v1, v5, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v3, v3, v1

    :goto_3
    iput v3, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    iget v3, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/android/server/VibratorService;->vibratorForceTouchIntensity(J)V

    goto :goto_5

    :cond_6
    :goto_4
    const-string v1, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "magnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", touchMagnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_5
    return-void
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 3

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    iget-object v2, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private reportFinishVibrationLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const-string/jumbo v0, "reportFinishVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private semColorfulVibrate(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[I)V
    .locals 25

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->getRepeat()I

    move-result v10

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitude()I

    move-result v0

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v8

    if-gez v0, :cond_0

    invoke-direct {v15, v8, v14}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    move v9, v0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semColorfulVibrate - package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", usageHint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v9, :cond_1

    iget-object v1, v15, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v15, v13}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-nez v12, :cond_2

    const-string v0, "VibratorService"

    const-string/jumbo v1, "semColorfulVibrate() : data is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {v15, v12}, Lcom/android/server/VibratorService;->isColorfulDataFormat([I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-lez v10, :cond_4

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semColorfulVibrate() : repeat("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is wrong."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-nez v13, :cond_5

    const-string v0, "VibratorService"

    const-string/jumbo v1, "semColorfulVibrate() : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-direct {v15, v12}, Lcom/android/server/VibratorService;->getMillisecondsFromColorfulData([I)J

    move-result-wide v18

    const/4 v0, -0x1

    if-ne v11, v0, :cond_6

    invoke-direct {v15, v12}, Lcom/android/server/VibratorService;->getCustomPattern([I)[J

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-direct {v15, v11}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/server/VibratorService;->getColorfulPattern([J)[J

    move-result-object v1

    :goto_0
    move-object v6, v1

    array-length v1, v6

    const/4 v5, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    aget-wide v3, v6, v5

    const-wide/16 v16, 0x0

    cmp-long v1, v3, v16

    if-gez v1, :cond_7

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported.(color)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    if-le v10, v0, :cond_8

    invoke-direct {v15, v6, v10, v14}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-boolean v0, v15, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object v1, v0

    move-object v2, v15

    move-object v3, v13

    move-object/from16 v4, p5

    move v5, v7

    move-object/from16 v20, v6

    move/from16 v6, p1

    move-object v7, v14

    move-object/from16 v21, v8

    move/from16 v22, v9

    move-wide/from16 v8, v18

    move/from16 v23, v10

    move-object/from16 v10, v20

    move/from16 v24, v11

    move/from16 v11, v23

    move/from16 v12, v22

    move/from16 v13, v16

    move/from16 v14, v24

    move-object/from16 v15, v21

    move-object/from16 v16, p6

    invoke-direct/range {v1 .. v17}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V

    goto :goto_1

    :cond_9
    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    const-wide/16 v8, -0x1

    new-array v10, v2, [J

    fill-array-data v10, :array_0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v11, v23

    move/from16 v12, v22

    move-object/from16 v15, v21

    invoke-direct/range {v1 .. v17}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V

    :goto_1
    move-object v1, v0

    move-object/from16 v2, p3

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-object/from16 v5, p0

    :try_start_2
    iget-object v6, v5, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct {v5, v2}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz v23, :cond_a

    iget-object v0, v5, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    goto :goto_2

    :cond_a
    invoke-direct {v5, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    :goto_2
    invoke-direct {v5, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v0

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
    .end array-data
.end method

.method private semIndexVibrate(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;)V
    .locals 27

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v18

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->getRepeat()I

    move-result v12

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitude()I

    move-result v0

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v11

    if-gez v0, :cond_0

    invoke-direct {v15, v11, v14}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    move v10, v0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIndexVibrate - package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", usageHint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v10, :cond_1

    iget-object v1, v15, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v15, v13}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-lez v12, :cond_2

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIndexVibrate() : repeat("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is wrong."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez v13, :cond_3

    const-string v0, "VibratorService"

    const-string/jumbo v1, "semIndexVibrate() : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-wide/16 v19, 0x1388

    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v1, v0

    move-object v2, v15

    move-object v3, v13

    move-object/from16 v4, p5

    move v5, v8

    move/from16 v6, p1

    move-object v7, v14

    move-wide/from16 v8, v19

    move/from16 v23, v10

    move-object/from16 v10, v16

    move-object/from16 v24, v11

    move v11, v12

    move/from16 v25, v12

    move/from16 v12, v23

    move/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v15, v24

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    invoke-direct/range {v1 .. v17}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V

    move-object v1, v0

    const/4 v0, 0x0

    move-object/from16 v2, p3

    :try_start_1
    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-object/from16 v5, p0

    :try_start_2
    iget-object v6, v5, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct {v5, v2}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {v5, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {v5, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v0

    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIILjava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private setFrequency(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorFrequency(J)V

    :cond_0
    return-void
.end method

.method private setIntensity(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorIntensity(J)V

    :cond_0
    return-void
.end method

.method private shouldVibrateForRingtone()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_when_ringing"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method

.method private startNextVibrationLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const-string/jumbo v0, "startVibrationInnerLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService;->doVibratorOnByIndex(JIIIII)V

    goto/16 :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    if-gez v0, :cond_1

    nop

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1800(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v8

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/VibratorService;->doVibratorOn(JII[IIII)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v8, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService;->doVibratorOn(JIIIII)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    move-object v6, v0

    check-cast v6, Landroid/os/VibrationEffect$Waveform;

    new-instance v0, Lcom/android/server/VibratorService$VibrateThread;

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v8, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;Landroid/os/VibrationEffect$Waveform;IIII)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    goto :goto_0

    :cond_6
    const-string v0, "VibratorService"

    const-string v3, "Unknown vibration type, ignoring"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const-string/jumbo v0, "startVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "VibratorService"

    const-string v4, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    if-gez v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v4, 0x2

    const-wide/16 v5, 0x3e8

    if-ne v3, v4, :cond_4

    const-string v4, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Would be an error: vibrate from uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    if-gez v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    :cond_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_4
    :try_start_3
    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v4}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2000(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Would not be allowed : vibrate from uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    if-gez v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    :cond_5
    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_6
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$2100(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vibrate_input_devices"

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move v3, v5

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v5

    :goto_1
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v3, v5, :cond_1

    const/4 v1, 0x1

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v5, :cond_3

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v5, p0, v6}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_2

    :cond_2
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v5, :cond_3

    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v5

    nop

    :goto_3
    array-length v6, v5

    if-ge v2, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v0

    return v4

    :cond_7
    monitor-exit v0

    return v1

    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateLowPowerModeLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrationIntensityLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "haptic_feedback_intensity"

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_vibration_intensity"

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return-void
.end method

.method private updateVibrators()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private verifyIncomingUid(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "VibratorService"

    const-string/jumbo v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "VibratorService"

    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private vibrateCommonPatternMagnitude(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;)V
    .locals 10

    invoke-virtual {p5}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->semIndexVibrate(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->getColorfulData(I)[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService;->hasColorfulData(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/VibratorService;->semColorfulVibrate(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[I)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not supported.(common)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/VibratorService;->vibratePatternMagnitude(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[J)V

    return-void
.end method

.method private vibratePatternMagnitude(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[J)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->getType()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->getRepeat()I

    move-result v10

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitude()I

    move-result v0

    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationEffect$SemHaptic;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v8

    if-gez v0, :cond_0

    invoke-direct {v15, v8, v14}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    move v9, v0

    if-eqz v12, :cond_5

    array-length v0, v12

    if-eqz v0, :cond_5

    invoke-direct {v15, v12}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v0

    if-nez v0, :cond_5

    array-length v0, v12

    if-ge v10, v0, :cond_5

    if-nez v13, :cond_1

    move-object/from16 v21, v8

    move/from16 v22, v9

    move v7, v10

    move/from16 v24, v11

    move-object v2, v13

    move-object v5, v15

    goto/16 :goto_3

    :cond_1
    const/4 v0, -0x1

    if-le v10, v0, :cond_2

    if-ne v11, v0, :cond_2

    invoke-direct {v15, v12, v10, v14}, Lcom/android/server/VibratorService;->isExecutablePattern([JILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibratePatternMagnitude - package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_3

    iget-object v1, v15, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v15, v13}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    const-wide/16 v16, -0x1

    invoke-direct {v15, v11}, Lcom/android/server/VibratorService;->getCommonPatternFrequency(I)I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v0

    move-object v2, v15

    move-object v3, v13

    move-object/from16 v4, p5

    move/from16 v5, p4

    move/from16 v6, p1

    move-object v7, v14

    move-object/from16 v21, v8

    move/from16 v22, v9

    move-wide/from16 v8, v16

    move/from16 v23, v10

    move-object v10, v12

    move/from16 v24, v11

    move/from16 v11, v23

    move/from16 v12, v22

    move/from16 v13, v18

    move/from16 v14, v24

    move-object/from16 v15, v21

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    invoke-direct/range {v1 .. v17}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$1;)V

    move-object v1, v0

    const/4 v0, 0x0

    move-object/from16 v2, p3

    :try_start_1
    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-object/from16 v5, p0

    :try_start_2
    iget-object v6, v5, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-direct {v5, v2}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v7, v23

    if-ltz v7, :cond_4

    :try_start_4
    iget-object v0, v5, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    goto :goto_0

    :cond_4
    invoke-direct {v5, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    :goto_0
    invoke-direct {v5, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    move/from16 v7, v23

    :goto_1
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move/from16 v7, v23

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    move-exception v0

    move/from16 v7, v23

    move-object/from16 v5, p0

    move-object v3, v0

    return-void

    :cond_5
    move-object/from16 v21, v8

    move/from16 v22, v9

    move v7, v10

    move/from16 v24, v11

    move-object v2, v13

    move-object v5, v15

    :goto_3
    const-string v0, "VibratorService"

    const-string/jumbo v1, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p6

    if-eqz v1, :cond_6

    const-string v0, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibratePatternMagnitude() - pattern.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", repeat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v0, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibratePatternMagnitude() - token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static native vibratorEngine([III)V
.end method

.method static native vibratorEngineByIndex(JJ)V
.end method

.method static native vibratorEngineByString(Ljava/lang/String;J)V
.end method

.method static native vibratorEngineExist()Z
.end method

.method static native vibratorEventNodeExist()Z
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorForceTouchIntensity(J)V
.end method

.method static native vibratorForceTouchIntensityExist()Z
.end method

.method static native vibratorFrequency(J)V
.end method

.method static native vibratorFrequencyExist()Z
.end method

.method static native vibratorGetNumWaves()I
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorIntensity(J)V
.end method

.method static native vibratorIntensityExist()Z
.end method

.method static native vibratorNotifyEvent(Ljava/lang/String;)V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method

.method private waitForVibratorHandlerCreation()V
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibratorHandler:Lcom/android/server/VibratorService$VibratorHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "VibratorService"

    const-string v2, "Interrupted while waiting on vibrator handler."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Vibrator Service:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Previous vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "Extra vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousNoTouchVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "Mute:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/VibratorService;->sMuteLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$MuteLogInfo;

    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/VibratorService$MuteLogInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v1, "Abort:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAbortLogInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$AbortLogInfo;

    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/VibratorService$AbortLogInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Current Info:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowPowerMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mForceMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMinM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHMTMount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHMTMountCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mHMTMountCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGearVrTetheredDocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsGearVrTetheredDocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHasVibrator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnableInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsFrequencySupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedHI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedFTI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCheckExe = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService;->mCheckExecutable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCheckPac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCheckExecutablePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_SET_MAX_M = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mUseMax:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .locals 1

    const-string v0, "VibratorService"

    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxMagnitude()I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    return v0
.end method

.method public getMotorType()I
    .locals 3

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(legacy)getMotorType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mMotorTypeLegacy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mMotorTypeLegacy:I

    return v0
.end method

.method public hasAmplitudeControl()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasVibrator()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasVibrator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsEnableIntensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsHSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onVibrationFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readFromFile(J)I
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/block/param"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v2, "VibratorService"

    const-string v4, "It\'s not Factory Binary"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VibratorService"

    const-string v4, "/dev/block/param is not found"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/block/param"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x4

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v2, 0x3

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get frequency : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    nop

    nop

    return v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v3
.end method

.method public resetMagnitude()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semGetSupportedVibrationType()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/VibratorService;->mMotorType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x0

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public semIsForceTouchSupported()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsForceTouchSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsForceTouchIntensitySupported:Z

    return v0
.end method

.method public semIsHapticEngineIndexSupported()Z
    .locals 1

    invoke-static {}, Landroid/view/accessibility/A11yRune;->VIB_MOTOR_BOOL_SUPPORT_CIRRUS_HAPTIC()Z

    move-result v0

    return v0
.end method

.method public semIsHapticEngineSupported()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsHapticEngineSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticEngineSupported:Z

    return v0
.end method

.method public semIsHapticSupported()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsHapticSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsHapticSupported:Z

    return v0
.end method

.method public semSetVibrationMute(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string v1, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    sget-object v1, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/VibratorService;->addToMuteLogInfos(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$4102(Z)Z

    new-instance v3, Lcom/android/server/VibratorService$MuteNotificationInfo;

    invoke-direct {v3, p1, p4}, Lcom/android/server/VibratorService$MuteNotificationInfo;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v4, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-static {p1, p4}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :try_start_1
    invoke-interface {p4, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    monitor-exit v1

    return-object v0

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v4}, Lcom/android/server/VibratorService$MuteCallInfo;->access$4202(Z)Z

    new-instance v3, Lcom/android/server/VibratorService$MuteCallInfo;

    invoke-direct {v3, p1, p4}, Lcom/android/server/VibratorService$MuteCallInfo;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v4, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-static {p1, p4}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_3

    :try_start_3
    invoke-interface {p4, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    monitor-exit v1

    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1

    return-object v0

    :cond_4
    sget-object v3, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-static {p1, p4}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$MuteInfo;

    if-nez v3, :cond_5

    monitor-exit v1

    return-object v0

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-static {p1, p4}, Lcom/android/server/VibratorService;->getMuteInfoKey(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_6

    :try_start_5
    invoke-interface {p4, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_6
    monitor-exit v1

    return-object v0

    :cond_6
    :goto_2
    sget-object v0, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/android/server/VibratorService;->sMutedInfos:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/VibratorService$MuteInfo;

    invoke-static {v7}, Lcom/android/server/VibratorService$MuteInfo;->access$5700(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v8}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v8}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v5, 0x1

    :cond_8
    :goto_4
    goto :goto_3

    :cond_9
    if-nez v4, :cond_a

    invoke-static {v2}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$4102(Z)Z

    :cond_a
    if-nez v5, :cond_b

    invoke-static {v2}, Lcom/android/server/VibratorService$MuteCallInfo;->access$4202(Z)Z

    :cond_b
    invoke-static {v3}, Lcom/android/server/VibratorService$MuteInfo;->access$5800(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/VibratorService$AbortVibration;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/android/server/VibratorService$AbortVibration;->access$5900(Lcom/android/server/VibratorService$AbortVibration;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/VibratorService$AbortVibration;->access$6400(Lcom/android/server/VibratorService$AbortVibration;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    monitor-exit v1

    return-object v6

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnitude(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/VibratorService;->mMaxMagnitude:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .locals 7

    const-string v0, "VibratorService#systemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/VibratorService$2;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vibrate_input_devices"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "haptic_feedback_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "notification_vibration_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/VibratorService$4;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.flipfolder.OPEN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/android/server/VibratorService$5;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    goto :goto_0

    :cond_0
    const-string v3, "VibratorService"

    const-string v4, "HMT VibratorService failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    const-string/jumbo v0, "vibrate"

    const-wide/32 v8, 0x800000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    if-nez v14, :cond_0

    const-string v0, "VibratorService"

    const-string/jumbo v1, "token must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-nez v0, :cond_1

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->getNotificationService()Landroid/app/INotificationManager;

    move-result-object v0

    move-object v1, v0

    invoke-direct {v10, v13}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v15, p1

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v15, p1

    :try_start_3
    invoke-interface {v1, v11, v15}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibrator Cancel, notifications are disabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v10, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-virtual {v10, v14}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_4
    :goto_1
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v15, p1

    :goto_2
    :try_start_7
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call NotificationManager : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitude()I

    move-result v0

    if-gez v0, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$SemMagnitudeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1, v11}, Lcom/android/server/VibratorService;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    goto :goto_4

    :cond_5
    move v1, v0

    :goto_4
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate - package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/VibrationEffect;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    iget-object v2, v10, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {v10, v14}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    :cond_6
    iget-object v7, v10, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    instance-of v0, v12, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_7

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_7

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_7

    move-object v0, v12

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    iget-object v1, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$OneShot;

    iget-object v2, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    if-ne v2, v3, :cond_7

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_7
    :try_start_c
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_8

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_8

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_8
    const/4 v0, -0x2

    :try_start_d
    instance-of v1, v12, Landroid/os/VibrationEffect$SemHaptic;

    if-eqz v1, :cond_9

    move-object v6, v12

    check-cast v6, Landroid/os/VibrationEffect$SemHaptic;

    move-object v1, v10

    move v2, v15

    move-object v3, v11

    move-object v4, v14

    move v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibrateCommonPatternMagnitude(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;)V

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_9
    :try_start_e
    instance-of v1, v12, Landroid/os/VibrationEffect$Waveform;

    if-eqz v1, :cond_a

    move-object v1, v12

    check-cast v1, Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v2

    move v0, v2

    :cond_a
    move/from16 v16, v0

    new-instance v0, Lcom/android/server/VibratorService$Vibration;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const/16 v17, 0x0

    move-object v1, v0

    move-object v2, v10

    move-object v3, v14

    move-object v4, v12

    move v5, v13

    move v6, v15

    move-object/from16 v18, v7

    move-object v7, v11

    move-wide v11, v8

    move/from16 v8, v16

    move-object/from16 v9, v17

    :try_start_f
    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;ILcom/android/server/VibratorService$1;)V

    move-object v1, v0

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    iget-object v4, v10, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-direct {v10, v14}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    if-ltz v16, :cond_b

    iget-object v0, v10, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    goto :goto_5

    :cond_b
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    :goto_5
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v18
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_2
    move-exception v0

    :try_start_14
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_4
    move-exception v0

    move-object/from16 v18, v7

    move-wide v11, v8

    :goto_6
    monitor-exit v18
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    throw v0

    :catchall_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    goto :goto_7

    :cond_c
    move/from16 v15, p1

    move-wide v11, v8

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_8

    :catchall_8
    move-exception v0

    move/from16 v15, p1

    :goto_7
    move-wide v11, v8

    :goto_8
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 14

    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    if-nez p6, :cond_0

    const-string v0, "VibratorService"

    const-string/jumbo v1, "token must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {v8, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    invoke-static/range {p9 .. p9}, Landroid/os/VibrationEffect$SemMagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move-object/from16 v9, p9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    :goto_0
    nop

    move/from16 v10, p4

    move/from16 v11, p8

    invoke-static {v11, v10, v0}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v12

    move/from16 v13, p7

    invoke-virtual {v12, v13}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    move-object v6, v12

    check-cast v6, Landroid/os/VibrationEffect$SemHaptic;

    move-object v1, v8

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/VibratorService;->vibratePatternMagnitude(ILjava/lang/String;Landroid/os/IBinder;ILandroid/os/VibrationEffect$SemHaptic;[J)V

    return-void

    :cond_1
    move/from16 v10, p4

    move/from16 v13, p7

    move/from16 v11, p8

    move-object/from16 v9, p9

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToFile(JI)Z
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/block/param"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "VibratorService"

    const-string v4, "It\'s not Factory Binary"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VibratorService"

    const-string v4, "/dev/block/param is not found"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/block/param"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x4

    new-array v2, v2, [B

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x2

    aput-byte v4, v2, v6

    shr-int/lit8 v4, p3, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v7, 0x3

    aput-byte v4, v2, v7

    aget-byte v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    aget-byte v4, v2, v5

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    aget-byte v4, v2, v6

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    aget-byte v4, v2, v7

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    nop

    return v5

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v3
.end method

.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final APP_MANAGER_NAME:Ljava/lang/String;

.field private final BLUE_LIGHT_FILTER:Ljava/lang/String;

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EBOOK_NAMES:[Ljava/lang/String;

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field private final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_RGB_DEBOUNCE:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field private exitHomeDelay:I

.field private exitHomeDelayTime:J

.field private exitMenuDelay:I

.field private exitMenuDelayTime:J

.field private foregroundDelayTime:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBlueFilterEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mDuration:I

.field private mEBookScenarioIntented:Z

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mEnvironmentDisplayColorServiceEnable:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForegroundThreadWork:Z

.field private mGreyScaleModeEnabled:Z

.field private mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPowerSavingEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mSensorEnabled:Z

.field private mSensorHubSupportInterrupt:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumLux:J

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseEnvironmentDisplayColorConfig:Z

.field private mValidZone:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    const/16 v0, 0xff

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    const/high16 v2, 0x437f0000    # 255.0f

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_FOREGROUND_APP:I

    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RESCAN_FOREGROUND_APP:I

    const/4 v4, 0x2

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    const/4 v5, 0x3

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    const/4 v5, 0x4

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_EBOOK_MODE:I

    const/4 v5, 0x5

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_VIDEO_MODE:I

    const/4 v6, 0x6

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    const/4 v6, 0x7

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_VIDEO_MODE:I

    const/16 v6, 0x8

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    const/16 v6, 0x9

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RGB_DEBOUNCE:I

    const/high16 v6, 0x41a00000    # 20.0f

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    const v6, 0x989680

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    const/16 v6, 0x14

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    const/16 v6, 0x24

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    const-wide/16 v7, 0x2710

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    const-wide/16 v7, 0xfa

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    const-wide/16 v7, 0x12c

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    const-wide/16 v9, 0x1f4

    iput-wide v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->VIDEO_MODE_DEBOUNCE_MILLIS:J

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    const-wide/16 v9, 0x2bc

    iput-wide v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MULTI_SCREEN_DEBOUNCE_MILLIS:J

    const-wide/16 v11, 0x3e8

    iput-wide v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    const-string/jumbo v11, "screen_mode_automatic_setting"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v11, "screen_mode_setting"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v11, "blue_light_filter"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BLUE_LIGHT_FILTER:Ljava/lang/String;

    const-string v11, "1"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    const-string v11, "8"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    const-string v11, "9"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    const-string v11, "/sys/class/mdnie/mdnie/sensorRGB"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    const-string v11, "/sys/class/mdnie/mdnie/scenario"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    const-string v11, "/sys/class/sensors/light_sensor/raw_data"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    const-string v11, "com.sec.android.app.SecSetupWizard"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    const-string v11, "com.android.systemui"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->APP_MANAGER_NAME:Ljava/lang/String;

    const-string v11, "com.sec.android.app.sbrowser"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    const-string v11, "com.google.android.apps.books"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    const-string v11, "com.sec.android.app.sbrowser"

    const-string v12, "com.android.chrome"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    const-string v12, "com.zgz.supervideo"

    const-string v13, "com.kmplayer"

    const-string v14, "com.pg.gom"

    const-string v15, "com.gretech.gomplayer"

    const-string v16, "com.mxtech.videoplayer"

    const-string v17, "com.nhn.android.naverplayer"

    const-string v18, "com.inisoft.mediaplayer"

    const-string v19, "com.google.android.youtube"

    const-string v20, "com.google.android.videos"

    filled-new-array/range {v12 .. v20}, [Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    const/4 v11, 0x0

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mGreyScaleModeEnabled:Z

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenMode:I

    const/4 v12, -0x1

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    const/4 v12, 0x0

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    const v12, 0x3d8f5c29    # 0.07f

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    const/16 v12, 0x23

    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v12, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;

    invoke-direct {v12, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v12, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;

    invoke-direct {v12, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v12, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;

    invoke-direct {v12, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    new-instance v12, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;

    invoke-direct {v12, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    move-object/from16 v12, p1

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/HandlerThread;

    const-string v14, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    new-instance v13, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v1, v14}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1120079

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    iput-boolean v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iget-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x112007a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    iput-boolean v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    const-string v13, "AdaptiveDisplayColorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mUseEnvironmentDisplayColorConfig : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", mUseEnvironmentDisplayColorConfig : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-direct {v13, v1, v14}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Lcom/samsung/android/cover/CoverManager;

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v14, "lcd_curtain"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v13, v14, v2, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v14, "high_contrast"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v13, v14, v2, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v14, "color_blind"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v13, v14, v2, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "psm_switch"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v13, v14, v2, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "ultra_powersaving_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v13, v14, v2, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "screen_mode_automatic_setting"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v13, v14, v2, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v14, "blue_light_filter"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v13, v14, v2, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.intent.action.SCREEN_ON"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.intent.action.USER_PRESENT"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;)V

    invoke-virtual {v15, v0, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-eqz v11, :cond_1

    const-string v0, "com.sec.feature.sensorhub"

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.feature.scontext_lite"

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "scontext"

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    :cond_1
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v15, v6}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    :cond_2
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x107003b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v5, v0, v2

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    aget v5, v0, v3

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    aget v5, v0, v4

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    aget v6, v5, v2

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    aget v6, v5, v3

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    aget v4, v5, v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e000c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    if-eqz v4, :cond_3

    int-to-long v2, v4

    iput-wide v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    :cond_3
    iget-object v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    if-eqz v2, :cond_4

    int-to-long v6, v2

    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e000b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput-wide v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    if-eqz v3, :cond_5

    int-to-long v6, v3

    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    :cond_5
    iget-object v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x24

    new-array v7, v7, [F

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/4 v7, 0x0

    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_6

    iget-object v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v9, v6, v7

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    const/4 v7, 0x0

    iput v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    iget v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    const/16 v8, 0xff

    add-int/2addr v7, v8

    iput v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    iget v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/2addr v7, v8

    iput v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    iget v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/2addr v7, v8

    iput v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "failed to registerProcessObserver"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic access$1110(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIII)V

    return-void
.end method

.method static synthetic access$1802(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    return p1
.end method

.method static synthetic access$1902(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    return p1
.end method

.method static synthetic access$2102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    return p1
.end method

.method static synthetic access$2302(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setEbookMode()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setVideoMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateVideoMode()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private animateScrRGB()V
    .locals 12

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/16 v2, 0x14

    const/16 v3, 0xff

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    if-lez v1, :cond_4

    if-gt v1, v3, :cond_4

    if-lez v2, :cond_4

    if-gt v2, v3, :cond_4

    if-lez v4, :cond_4

    if-gt v4, v3, :cond_4

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v4, v3, :cond_4

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v1, v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v6, v6

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    float-to-int v6, v1

    add-int/2addr v2, v6

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int/2addr v6, v7

    int-to-float v4, v6

    div-float/2addr v4, v5

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    float-to-int v7, v4

    add-int/2addr v1, v7

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int/2addr v7, v8

    int-to-float v6, v7

    div-float/2addr v6, v5

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v5, v5

    mul-float/2addr v6, v5

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    float-to-int v5, v6

    add-int/2addr v4, v5

    if-lez v2, :cond_3

    if-gt v2, v3, :cond_3

    if-lez v1, :cond_3

    if-gt v1, v3, :cond_3

    if-lez v4, :cond_3

    if-gt v4, v3, :cond_3

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v4, v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v8

    invoke-virtual {v3, v5, v10, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private enableRgbSensor(Z)V
    .locals 8

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "StatFs returns null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "AdaptiveDisplayColorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRgbSensor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x3

    const/16 v3, 0x2c

    if-eqz p1, :cond_4

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    iput v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    invoke-direct {v2, v5, v6}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;-><init>(FI)V

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v5, v6, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5, v6, v2, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_3
    :goto_0
    goto :goto_1

    :cond_4
    const/16 v4, 0xff

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v4, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v2, v4, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_6
    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    return-void
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AdaptiveDisplayColorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    :try_start_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "AdaptiveDisplayColorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileWriteString : file not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    nop

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private getRgbFromLightSensor()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    :goto_0
    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_0

    aput-byte v6, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    nop

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v5, v2

    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v6, "AdaptiveDisplayColorService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "AdaptiveDisplayColorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    const-string v6, "AdaptiveDisplayColorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    return-object v4

    :goto_3
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    const-string v7, "AdaptiveDisplayColorService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw v2
.end method

.method private handleRgbSensorEvent(IIII)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_0
    if-lez v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x2c

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorValue(IIII)V

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_3
    return-void
.end method

.method private handleRgbSensorValue(IIII)V
    .locals 8

    add-int v0, p1, p2

    add-int/2addr v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p1

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v1, p2

    int-to-float v5, v0

    div-float/2addr v1, v5

    int-to-float v2, p3

    int-to-float v5, v0

    div-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v5

    const/4 v5, 0x2

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    if-lez v3, :cond_2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    int-to-long v6, p4

    iput-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    :goto_1
    return-void
.end method

.method private initRgbAverage()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    return-void
.end method

.method private isInBoundary()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private max_num(II)I
    .locals 0

    if-lt p1, p2, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method private min_num(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;II)V
    .locals 10

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v2

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v5, v0

    move v0, v2

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    if-eqz v3, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v1, :cond_17

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v1, :cond_8

    :cond_7
    move v2, v0

    nop

    :cond_8
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v1, :cond_9

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v7, v0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_7

    :cond_a
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v6, :cond_c

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v6

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_4

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v6

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_17

    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_7

    :cond_c
    if-eqz v4, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-nez v1, :cond_17

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v7, 0x1f4

    add-long/2addr v7, v0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_7

    :cond_d
    if-eqz v5, :cond_11

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v1, :cond_17

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v1, :cond_f

    :cond_e
    move v2, v0

    nop

    :cond_f
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v1, :cond_10

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v7, v0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_7

    :cond_11
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-eqz v0, :cond_12

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v7, v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_5

    :cond_12
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_14

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v6

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_5

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v6

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_14
    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_17

    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_7

    :cond_15
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_17

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_16

    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    nop

    :cond_17
    :goto_7
    return-void
.end method

.method private receive_multi_window_on_intent()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private receive_screen_off_intent()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_1
    return-void
.end method

.method private receive_screen_on_intent()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0, v0}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private sendForcedRGB(IIII)V
    .locals 3

    add-int v0, p1, p2

    add-int/2addr v0, p3

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    int-to-long v1, p4

    iput-wide v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method private sendRgbAverage()V
    .locals 54

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move/from16 v17, v2

    iget-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const/16 v18, 0x0

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v19, 0x1

    if-lez v0, :cond_0

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    goto :goto_0

    :cond_0
    move/from16 v0, v19

    :goto_0
    move/from16 v20, v0

    move/from16 v21, v3

    move/from16 v3, v20

    int-to-long v11, v3

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v22, v4

    int-to-float v4, v3

    div-float v4, v0, v4

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v23, v5

    int-to-float v5, v3

    div-float v5, v0, v5

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v24, v6

    int-to-float v6, v3

    div-float v6, v0, v6

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v25, v7

    move/from16 v26, v8

    iget-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    div-long/2addr v7, v11

    const-string v0, "AdaptiveDisplayColorService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AvgR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", AvgG : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", AvgB : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", avg lux : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    :try_start_0
    const-string v0, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v1, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v27, v0

    move-object/from16 v13, v27

    if-eqz v13, :cond_1

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v14, " "

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v28, v3

    const/4 v14, 0x0

    :try_start_2
    aget-object v3, v0, v14

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    aget-object v3, v0, v19

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    const/4 v3, 0x2

    aget-object v14, v0, v3

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move/from16 v31, v9

    move/from16 v32, v10

    move-wide/from16 v34, v11

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v18, v13

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v28, v3

    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move/from16 v31, v9

    move/from16 v32, v10

    move-wide/from16 v34, v11

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v18, v13

    goto :goto_3

    :cond_1
    move/from16 v28, v3

    :goto_1
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_3

    const/16 v3, 0xff

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    goto :goto_4

    :catchall_2
    move-exception v0

    move/from16 v28, v3

    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move/from16 v31, v9

    move/from16 v32, v10

    move-wide/from16 v34, v11

    move-object/from16 v13, v18

    :goto_2
    goto/16 :goto_d

    :catch_2
    move-exception v0

    move/from16 v28, v3

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_2

    const/16 v3, 0xff

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_2
    move-object/from16 v13, v18

    :cond_3
    :goto_4
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    goto :goto_5

    :cond_4
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    :goto_5
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    :cond_5
    move-wide v14, v7

    const/4 v0, -0x1

    const-wide/16 v29, 0x4

    cmp-long v3, v14, v29

    if-ltz v3, :cond_10

    const-wide/16 v29, 0x3e8

    cmp-long v3, v14, v29

    if-gtz v3, :cond_10

    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v31, v9

    move/from16 v32, v10

    float-to-double v9, v3

    const-wide v29, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v9, v29

    if-ltz v3, :cond_f

    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    float-to-double v9, v3

    cmpg-double v3, v9, v29

    if-ltz v3, :cond_f

    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    float-to-double v9, v3

    cmpg-double v3, v9, v29

    if-gez v3, :cond_6

    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move-wide/from16 v34, v11

    move-object/from16 v36, v13

    goto/16 :goto_a

    :cond_6
    :goto_6
    const-wide/16 v9, 0x0

    cmp-long v3, v14, v9

    if-eqz v3, :cond_7

    shr-long v14, v14, v19

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v3, :cond_9

    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move-wide/from16 v34, v11

    move-object/from16 v36, v13

    goto/16 :goto_b

    :cond_9
    :goto_7
    if-eqz v2, :cond_a

    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    iget v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    iget v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    goto :goto_8

    :cond_a
    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v9, 0xff

    sub-int/2addr v3, v9

    iget v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    sub-int/2addr v10, v9

    move/from16 v33, v3

    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    sub-int/2addr v3, v9

    move v9, v10

    move v10, v3

    move/from16 v3, v33

    :goto_8
    const v16, 0x4b189680    # 1.0E7f

    move-wide/from16 v34, v11

    mul-float v11, v4, v16

    float-to-int v11, v11

    iget v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    div-int/2addr v11, v12

    mul-float v12, v5, v16

    float-to-int v12, v12

    move-object/from16 v36, v13

    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    div-int/2addr v12, v13

    mul-float v13, v6, v16

    float-to-int v13, v13

    move-wide/from16 v37, v14

    iget v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    div-int/2addr v13, v14

    invoke-direct {v1, v11, v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    invoke-direct {v1, v14, v13}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    const/16 v16, 0x4

    const/16 v18, 0x8

    if-ne v14, v11, :cond_b

    const/16 v17, 0xff

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v20, 0x0

    aget v15, v15, v20

    mul-float/2addr v15, v4

    mul-float/2addr v15, v4

    move/from16 v39, v11

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget v11, v11, v19

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    add-float/2addr v15, v11

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x2

    aget v11, v11, v19

    mul-float/2addr v11, v4

    add-float/2addr v15, v11

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x3

    aget v11, v11, v19

    mul-float/2addr v11, v5

    add-float/2addr v15, v11

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget v11, v11, v16

    mul-float/2addr v11, v4

    mul-float/2addr v11, v5

    add-float/2addr v15, v11

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x5

    aget v11, v11, v19

    add-float/2addr v15, v11

    move/from16 v40, v12

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v12, v15, v11

    float-to-int v11, v12

    move/from16 v41, v15

    const/4 v12, 0x0

    invoke-direct {v1, v11, v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v15

    const/16 v12, 0xff

    invoke-direct {v1, v15, v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v11

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/4 v15, 0x6

    aget v12, v12, v15

    mul-float/2addr v12, v4

    mul-float/2addr v12, v4

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x7

    aget v15, v15, v19

    mul-float/2addr v15, v6

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget v15, v15, v18

    mul-float/2addr v15, v4

    add-float/2addr v12, v15

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x9

    aget v15, v15, v19

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0xa

    aget v15, v15, v19

    mul-float/2addr v15, v4

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0xb

    aget v15, v15, v19

    add-float/2addr v12, v15

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v15, v12

    float-to-int v15, v15

    move/from16 v42, v11

    move/from16 v43, v12

    const/4 v11, 0x0

    invoke-direct {v1, v15, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v12

    const/16 v11, 0xff

    invoke-direct {v1, v12, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v12

    move/from16 v46, v4

    goto/16 :goto_9

    :cond_b
    move/from16 v39, v11

    move/from16 v40, v12

    if-ne v14, v13, :cond_c

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v12, 0xc

    aget v11, v11, v12

    mul-float/2addr v11, v4

    mul-float/2addr v11, v4

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0xd

    aget v12, v12, v15

    mul-float/2addr v12, v6

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0xe

    aget v12, v12, v15

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0xf

    aget v12, v12, v15

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x10

    aget v12, v12, v15

    mul-float/2addr v12, v4

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x11

    aget v12, v12, v15

    add-float/2addr v11, v12

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v15, v11, v12

    float-to-int v12, v15

    move/from16 v44, v11

    const/4 v15, 0x0

    invoke-direct {v1, v12, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v11

    const/16 v15, 0xff

    invoke-direct {v1, v11, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v17

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v12, 0x12

    aget v11, v11, v12

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x13

    aget v12, v12, v15

    mul-float/2addr v12, v6

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x14

    aget v12, v12, v15

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x15

    aget v12, v12, v15

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x16

    aget v12, v12, v15

    mul-float/2addr v12, v5

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x17

    aget v12, v12, v15

    add-float/2addr v12, v11

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v15, v12, v11

    float-to-int v11, v15

    move/from16 v45, v12

    const/4 v15, 0x0

    invoke-direct {v1, v11, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v12

    const/16 v15, 0xff

    invoke-direct {v1, v12, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v11

    const/16 v12, 0xff

    move/from16 v46, v4

    move/from16 v42, v11

    move/from16 v43, v45

    goto/16 :goto_9

    :cond_c
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v12, 0x18

    aget v11, v11, v12

    mul-float/2addr v11, v4

    mul-float/2addr v11, v4

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x19

    aget v12, v12, v15

    mul-float/2addr v12, v5

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x1a

    aget v12, v12, v15

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x1b

    aget v12, v12, v15

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x1c

    aget v12, v12, v15

    mul-float/2addr v12, v4

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x1d

    aget v12, v12, v15

    add-float/2addr v11, v12

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v15, v11, v12

    float-to-int v12, v15

    move/from16 v46, v4

    const/4 v15, 0x0

    invoke-direct {v1, v12, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v4

    const/16 v15, 0xff

    invoke-direct {v1, v4, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v17

    const/16 v4, 0xff

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x1e

    aget v12, v12, v15

    mul-float/2addr v12, v5

    mul-float/2addr v12, v5

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x1f

    aget v15, v15, v19

    mul-float/2addr v15, v6

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x20

    aget v15, v15, v19

    mul-float/2addr v15, v5

    add-float/2addr v12, v15

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x21

    aget v15, v15, v19

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x22

    aget v15, v15, v19

    mul-float/2addr v15, v5

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v19, 0x23

    aget v15, v15, v19

    add-float/2addr v12, v15

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v15, v12, v11

    float-to-int v11, v15

    move/from16 v47, v4

    const/4 v15, 0x0

    invoke-direct {v1, v11, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v4

    const/16 v15, 0xff

    invoke-direct {v1, v4, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v4

    move/from16 v43, v12

    move/from16 v42, v47

    move v12, v4

    :goto_9
    add-int v4, v17, v3

    add-int v11, v42, v9

    add-int v15, v12, v10

    const-wide/16 v19, 0x190

    cmp-long v19, v7, v19

    if-gez v19, :cond_e

    move/from16 v48, v3

    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v3, :cond_d

    rsub-int/lit8 v3, v0, 0x8

    move/from16 v49, v5

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    mul-int/2addr v3, v5

    mul-int v5, v0, v4

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x8

    move/from16 v50, v6

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v6

    const/16 v5, 0xff

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    rsub-int/lit8 v6, v0, 0x8

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    mul-int/2addr v6, v5

    mul-int v5, v0, v11

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x8

    move/from16 v51, v3

    const/4 v5, 0x0

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    const/16 v5, 0xff

    invoke-direct {v1, v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    rsub-int/lit8 v6, v0, 0x8

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    mul-int/2addr v6, v5

    mul-int v5, v0, v15

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x8

    const/4 v5, 0x0

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v12

    const/16 v5, 0xff

    invoke-direct {v1, v12, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v24, v11

    move v9, v3

    move v10, v5

    move/from16 v3, v51

    goto/16 :goto_c

    :cond_d
    move/from16 v49, v5

    move/from16 v50, v6

    rsub-int/lit8 v3, v0, 0x8

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    mul-int/2addr v3, v5

    mul-int v5, v0, v4

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x8

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v6

    const/16 v5, 0xff

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    rsub-int/lit8 v6, v0, 0x8

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    mul-int/2addr v6, v5

    mul-int v5, v0, v11

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x8

    move/from16 v52, v3

    const/4 v5, 0x0

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    const/16 v5, 0xff

    invoke-direct {v1, v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    rsub-int/lit8 v6, v0, 0x8

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    mul-int/2addr v6, v5

    mul-int v5, v0, v15

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x8

    const/4 v5, 0x0

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v12

    const/16 v5, 0xff

    invoke-direct {v1, v12, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v24, v11

    move v9, v3

    move v10, v5

    move/from16 v3, v52

    goto :goto_c

    :cond_e
    move/from16 v48, v3

    move/from16 v49, v5

    move/from16 v50, v6

    move v3, v4

    move v5, v11

    move v6, v15

    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v24, v11

    move v9, v5

    move v10, v6

    goto :goto_c

    :cond_f
    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move-wide/from16 v34, v11

    move-object/from16 v36, v13

    goto :goto_a

    :cond_10
    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move/from16 v31, v9

    move/from16 v32, v10

    move-wide/from16 v34, v11

    move-object/from16 v36, v13

    :goto_a
    if-eqz v2, :cond_11

    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    iget v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    iget v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    :goto_b
    move-wide/from16 v37, v14

    move/from16 v4, v23

    move/from16 v15, v25

    move/from16 v48, v26

    goto :goto_c

    :cond_11
    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    iget v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    iget v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    goto :goto_b

    :goto_c
    if-eqz v3, :cond_14

    if-eqz v9, :cond_14

    if-eqz v10, :cond_14

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iput v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iput v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    const/4 v5, 0x0

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    iget-boolean v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v5, :cond_12

    const-string v5, "AdaptiveDisplayColorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "scrR : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", scrG : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", scrB : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v5, :cond_13

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v9, v5, :cond_13

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v10, v5, :cond_14

    :cond_13
    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    :cond_14
    return-void

    :catchall_3
    move-exception v0

    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v50, v6

    move/from16 v31, v9

    move/from16 v32, v10

    move-wide/from16 v34, v11

    move-object/from16 v13, v18

    :goto_d
    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v3, :cond_15

    const/16 v3, 0xff

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_15
    throw v0
.end method

.method private setAverageValue(IIII)V
    .locals 11

    add-int v0, p1, p2

    add-int/2addr v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p1

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v1, p2

    int-to-float v5, v0

    div-float/2addr v1, v5

    int-to-float v2, p3

    int-to-float v5, v0

    div-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v5

    const/4 v5, 0x2

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iget-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    int-to-long v8, p4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v3, v7, :cond_2

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v9, 0x2710

    add-long/2addr v9, v7

    invoke-virtual {v3, v5, v9, v10}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method private setBrowserMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private setEbookMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private setVideoMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private setting_is_changed()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    const-string/jumbo v1, "psm_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    const-string/jumbo v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    const-string v1, "blue_light_filter"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move v3, v2

    :goto_8
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_9
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    invoke-interface {v1, v3, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_9
    goto :goto_a

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v1, :cond_d

    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_d
    :goto_a
    return-void
.end method

.method private terminateScrRGB()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private terminateVideoMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private updateScreen()V
    .locals 5

    :try_start_0
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to updateScreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

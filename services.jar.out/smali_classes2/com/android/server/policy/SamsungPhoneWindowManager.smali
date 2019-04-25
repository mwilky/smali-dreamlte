.class public Lcom/android/server/policy/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SamsungWindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;
    }
.end annotation


# static fields
.field private static final ACTION_RESOLUTION_CHANGED:Ljava/lang/String; = "com.samsung.ssrm.RESOLUTION_CHANGED"

.field static final ADD_PASS:I = 0x4

.field static final ADD_WAKEUP:I = 0x10

.field private static final BIXBY_ENABLED_ON_DEX:Ljava/lang/String; = "bixby_enabled"

.field private static final BIXBY_KEY_EVENT:Ljava/lang/String; = "KEYEVENT"

.field private static final BIXBY_KEY_FW_VERSION:Ljava/lang/String; = "BIXBY_KEY_FW_VERSION"

.field private static final BIXBY_RESULT_BY_POWER:Ljava/lang/String; = "RESULT_BY_POWER"

.field static final CAR_MODE_BAR_BOTTOM:I = 0x2

.field static final CAR_MODE_BAR_LEFT:I = 0x0

.field static final CAR_MODE_BAR_RIGHT:I = 0x1

.field static final CONSUME:I = 0x2

.field private static final CRITICAL_LOW_BATTERY_THRESHOLD:I = 0x5

.field static final DEBUG:Z = false

.field private static final DESKTOP_SYSTEMUI_PKG:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final DESKTOP_SYSTEMUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.samsung.desktopsystemui.screenshot.TakeScreenshotService"

.field private static final DIRECT_ACCESS_CLASS:Ljava/lang/String; = "com.samsung.accessibility.advanced.directaccess.DirectAccessService"

.field private static final DIRECT_ACCESS_COMPONENT:Landroid/content/ComponentName;

.field private static final DIRECT_ACCESS_PACKAGE:Ljava/lang/String; = "com.samsung.accessibility"

.field static final DOUBLE_TAP_TIMEOUT:I = 0xaa

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field static final FORWARD:I = 0x1

.field private static final INTENT_ACTION_START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"

.field private static final INTENT_PERMISSION_START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.permisson.START_DOCK_OR_HOME"

.field private static final QUICK_ACCESS_AOD_DOUBLE_TAP:I = 0xb

.field private static final QUICK_ACCESS_AOD_LONG_PRESS:I = 0xa

.field private static final QUICK_ACCESS_AOD_PRESS:I = 0x9

.field static final QUICK_ACCESS_CONSUMED:Z = false

.field private static final QUICK_ACCESS_FINGER_ICON_SHOW:I = 0x8

.field private static final QUICK_ACCESS_FINGER_ON_DISPLAY:I = 0xf

.field private static final QUICK_ACCESS_FORCE_PRESS:I = 0x5

.field private static final QUICK_ACCESS_FORCE_PRESS_SLEEP:I = 0xc

.field private static final QUICK_ACCESS_FORCE_RELEASE:I = 0x6

.field private static final QUICK_ACCESS_FORCE_RELEASE_SLEEP:I = 0xd

.field private static final QUICK_ACCESS_FORCE_RELEASE_SLEEP_NO_NEED_HAPTIC:I = 0xe

.field static final QUICK_ACCESS_NOT_CONSUMED:Z = true

.field private static final QUICK_ACCESS_SAMSUNG_PAY:I = 0x4

.field static final REMOVE_PASS:I = 0x8

.field static final REMOVE_WAKEUP:I = 0x20

.field static final SAFE_DEBUG:Z

.field static final SAMSUNG_PAY_LAUNCH_ACTION:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field private static final SCREENSHOT_DIRECTION_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_DIRECTION_SWEEP_LEFT:I = 0x2

.field private static final SCREENSHOT_DIRECTION_SWEEP_RIGHT:I = 0x3

.field private static final SCREENSHOT_DISPLAY_BOTH:I = 0x3

.field private static final SCREENSHOT_DISPLAY_DESKTOP:I = 0x2

.field private static final SCREENSHOT_DISPLAY_MAIN:I = 0x0

.field private static final SCREENSHOT_DISPLAY_SUB:I = 0x4

.field private static final SCREENSHOT_HELP_GUIDE:Ljava/lang/String; = "show_screenshot_help_guide"

.field private static final SCREENSHOT_ORIGIN_BIXBY:I = 0x5

.field private static final SCREENSHOT_ORIGIN_KEY:I = 0x1

.field private static final SCREENSHOT_ORIGIN_KNOX_DESKTOP:I = 0x4

.field private static final SCREENSHOT_ORIGIN_PALM:I = 0x2

.field private static final SCREENSHOT_ORIGIN_QUICK_PANEL:I = 0x3

.field private static final SCREENSHOT_TYPE_FULLSCREEN:I = 0x1

.field private static final SCREENSHOT_TYPE_PARTIAL:I = 0x2

.field private static final SCREENSHOT_TYPE_WINDOW:I = 0x64

.field static final SETTINGS_NAME_MOBILE_KEYBOARD:Ljava/lang/String; = "mobile_keyboard"

.field private static final START_BIXBY_SERVICE_POWER_KEY:Ljava/lang/String; = "2"

.field private static final SYSTEMUI_PKG:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEMUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field private static final TAG:Ljava/lang/String; = "SamsungPhoneWindowManager"

.field private static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field static final UNDECIDED_VALUE:I = -0x1

.field private static final USERKEY_LONGPRESS:I = 0x1f4

.field private static final USERKEY_TIMEOUT:I = 0xaa

.field private static mCameraId:Ljava/lang/String;

.field private static mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static mCurrentUser:I

.field private static mHasQwertyKeyboard:Z

.field static final mTmpCarModeFrame:Landroid/graphics/Rect;

.field private static sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;


# instance fields
.field private final ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String;

.field private final ACTION_PANIC_CALL:Ljava/lang/String;

.field private final BATTERY_CONVERSING_MODE:I

.field private final BIXBY_RESULT_DEFAULT:I

.field private final BIXBY_RESULT_FAIL:I

.field private final BIXBY_RESULT_SUCCESS:I

.field private final BIXBY_SERVICE_DVFS_BOOSTER_TIMEOUT:I

.field private final DEX_CALL_METHOD_GET:Ljava/lang/String;

.field private final DEX_CONTENT_URI:Landroid/net/Uri;

.field private final DISPATCHING:I

.field private final DISPATCHING_UNKNOWN:I

.field final DOUBLE_TAP_HOME_KEY_DISABLED:I

.field final DOUBLE_TAP_HOME_KEY_ENABLED:I

.field final DOUBLE_TAP_POWER_KEY_DISABLED:I

.field final DOUBLE_TAP_POWER_KEY_ENABLED:I

.field private final DUAL_LCD:I

.field private final EMERGENCY_MODE:I

.field private final EXTRAS_PANIC_CALL:Ljava/lang/String;

.field private final EXTRA_ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String;

.field public final EXTRA_VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String;

.field public final EXTRA_VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String;

.field private final FORCE_USER_TIMEOUT:I

.field private final INTENT_BIXBY_CAPTURE:Ljava/lang/String;

.field private final INTENT_DESKTOP_CAPTURE:Ljava/lang/String;

.field private final INTENT_QUICK_PANEL_CAPTURE:Ljava/lang/String;

.field private final INTENT_SWEEP_FULL_SCREEN:Ljava/lang/String;

.field private final INTENT_SWEEP_LEFT:Ljava/lang/String;

.field private final INTENT_SWEEP_RIGHT:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field private final MHS_POWERKEY_SHORTPRESS_INTENT:Ljava/lang/String;

.field private final MHS_RESETKEY_SHORTPRESS_INTENT:Ljava/lang/String;

.field final MULTI_PRESS_POWER_CURTAIN_MODE:I

.field final MULTI_PRESS_POWER_LAUNCH_CAMERA:I

.field final MULTI_PRESS_POWER_LAUNCH_FOTA_UPDATE:I

.field final MULTI_PRESS_POWER_ONE_TOUCH_REPORT_MODE:I

.field final MULTI_PRESS_POWER_PANIC_MODE:I

.field final MULTI_PRESS_POWER_SOS_MESSAGE_MODE:I

.field private final NEED_SENSOR:I

.field private final NORMAL:I

.field private final NOT_FOLDER:I

.field private final NO_CONDITION:I

.field private final NO_DISPATCHING:I

.field private final NO_NEED_SENSOR:I

.field private final PERMISSION_PANIC_CALL:Ljava/lang/String;

.field private final SCREEN_OFF_MEMO_CLASS_NAME:Ljava/lang/String;

.field private final SCREEN_OFF_MEMO_PACKAGE_NAME:Ljava/lang/String;

.field private final SINGLE_LCD:I

.field private final SNOTE_CLASS_NAME:Ljava/lang/String;

.field private final SNOTE_PACKAGE_NAME:Ljava/lang/String;

.field private final TRACKING_ID:Ljava/lang/String;

.field private final ULTRA_POWER_SAVING_MODE:I

.field private final VOICE_CALL_HOMEKEY_ANSWER:Ljava/lang/String;

.field public final VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String;

.field private final VOICE_CALL_POWERKEY_ENDCALL:Ljava/lang/String;

.field private final VOICE_CALL_POWERKEY_SIELNCE:Ljava/lang/String;

.field public final VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String;

.field private bIsTorchOn:Z

.field private mActiveKeyCurTime:J

.field private final mActiveKeyPress:Ljava/lang/Runnable;

.field private mActiveKeyTriggered:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAudioManager:Landroid/media/AudioManager;

.field private mBackKeyConsumed:Z

.field private final mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBixbyComponent:Landroid/content/ComponentName;

.field private mBixbyEnabledOnDEX:Z

.field private mBixbyMsg:Ljava/lang/String;

.field mBixbyToast:Landroid/widget/Toast;

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mCarModeBarHorizontalPosition:I

.field private mCarModeBarPosition:I

.field private mCarModeBlockingSystemKey:Z

.field private mCarModeEnabled:Z

.field private mCarModeNotSupportBixby:Z

.field private mCarModeSize:I

.field private final mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

.field private mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

.field mContext:Landroid/content/Context;

.field private mContextLoggingThread:Ljava/lang/Thread;

.field mConventionalModeBarSizeChecked:Z

.field mConventionalModeBarSizeOfTopWindow:I

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field mDoubleTapEnabled:Z

.field mDoubleTapLaunchBehavior:I

.field mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

.field mDoubleTapLaunchIntent:Landroid/content/Intent;

.field mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mFactoryResetChordLongPressRunning:Ljava/lang/Runnable;

.field mFactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

.field mFakeFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mFifthPressOnPowerBehavior:I

.field mFifthTapLaunchIntent:Landroid/content/Intent;

.field private mFingerPrintIntent:Landroid/content/Intent;

.field private mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field private mFlipFolderOpenedIntent:Landroid/content/Intent;

.field private mFolderCloseSound:Ljava/lang/String;

.field private mFolderOpenSound:Ljava/lang/String;

.field private mFolderSoundEnable:Z

.field private mFolderTypeFeature:I

.field mForceStatusBarFromSViewCover:Z

.field private mForceTouchScreenNotYetOn:Z

.field private mGameToolsOverlayWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mGameToolsWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mGestureHintEnabled:Z

.field private mGestureNavBarEnabled:Z

.field mGestureNavBarHeight:I

.field mHandler:Landroid/os/Handler;

.field private mHasFakeMenuKeyBack:Z

.field private mHasFakeMenuKeyRecent:Z

.field private mHasSPenFeature:Z

.field mHiddenWindowsByCover:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mInputMethod:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mIsAdaptiveBrightnessValue:Z

.field mIsAvailableDoubleTapLaunch:Z

.field mIsAvailableOneTouchReport:Z

.field mIsAvailableSVoice:Z

.field mIsDirectAccessEnabled:Z

.field private mIsDoublePressedUserKey:Z

.field mIsEasyModeEnabled:Z

.field private mIsGearVrDocked:Z

.field private mIsGearVrMounted:Z

.field private mIsGearVrTetheredDocked:Z

.field mIsInteractionControlEnabled:Z

.field mIsInteractionControlTurnedOn:Z

.field private mIsLowBattery:Z

.field private mIsMobileKeyboardEnabled:Z

.field private mIsPackageEnabledForUserKey:Z

.field private mIsQDSetting:Z

.field private mIsRingingOrOffhook:Z

.field private mIsSBikeModeOn:Z

.field mIsSafetyAssuranceEnabled:Z

.field private mIsStartBixbyServicePowerKey:Z

.field mIsSupportCover:Z

.field private mIsTorchSetForUserKey:Z

.field private mIsWakekey:Z

.field mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field mLastClearCoverState:Z

.field mLastCoverAppCovered:Z

.field private mLastFocus:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private mLockTaskModeState:I

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMobileKeyboardAlertToast:Landroid/widget/Toast;

.field private mMobileKeyboardHeight:I

.field mMultiTapKeyPolicy:Lcom/android/server/policy/MultiTapKeyManager;

.field private mNavBarForceImmersiveBtnVisible:Z

.field mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

.field private mNavBarHideEnabled:Z

.field mNavBarHidePolicy:Lcom/android/server/policy/NavBarHidePolicyManager;

.field private mNavBarHideSettingEnabled:Z

.field private mNeedTriggerQD:Z

.field mNetworkSelectionLongPress:Z

.field private final mNotifyCPFolderType:Ljava/lang/Runnable;

.field private mOneHandOpEnabled:I

.field private mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

.field private mOneHandOpTriggeredType:I

.field mOutdoorModeSetting:Z

.field private mOverlappedFreeformWithLetterbox:Z

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPenDetachSoundId:I

.field private mPenInsertSoundId:I

.field private mPenInsertedIntent:Landroid/content/Intent;

.field private mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field private mPenNotifyVibrationChecked:Z

.field private mPenSoundStreamId:I

.field private mPenSounds:Landroid/media/SoundPool;

.field private mPenState:I

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field private mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mProKioskReEnableVolumeUpKey:Z

.field mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

.field mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

.field mReducedAnimationEnabled:Z

.field mRequestedToApplyAodPolicy:Z

.field private mResetKeyConsumed:Z

.field private mResetKeyTriggered:Z

.field private mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field mSVoiceIntent:Landroid/content/Intent;

.field private mSafeModeReason:Ljava/lang/String;

.field mSamsungPayHandlerWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

.field final mScreenshotLock:Ljava/lang/Object;

.field mSecondLcdLastRotation:I

.field mSecondLcdUserRotationMode:I

.field mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

.field private mShouldHideTransientNavBar:Z

.field private mShouldKeepTransientNavBarShowing:Z

.field mShowingSViewCover:Z

.field private mSideSyncSourcePresentationActivated:Z

.field private mSpenUspLevel:I

.field private mStandAloneTaskBarHeight:I

.field private mSupportedCpuFreqTable:[I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final mTmpRectForCustomFrame:Landroid/graphics/Rect;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mTorchlightEnabled:Z

.field private mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchableAreaChanged:Z

.field mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field private mUm:Landroid/os/UserManager;

.field private mUnrestrictedScreenHeight:I

.field private mUnrestrictedScreenWidth:I

.field private mUserKeyLongPressed:Z

.field private mUserRotationUpdateCompleted:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/Vibrator;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeDownLongPress:Ljava/lang/Runnable;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mWakeAndUnlockRunning:Ljava/lang/Runnable;

.field private mWakeAndUnlockTriggered:Z

.field mWakeUpReasonFingerprintRunning:Ljava/lang/Runnable;

.field private mWakeUpReasonFingerprintTriggered:Z

.field private mWakingUpReason:I

.field mWallpaperTargetMayChage:Z

.field private mWasGestureNavBarEnabled:Z

.field private mWatchLaunching:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private pService:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.accessibility"

    const-string v2, "com.samsung.accessibility.advanced.directaccess.DirectAccessService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DIRECT_ACCESS_COMPONENT:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasQwertyKeyboard:Z

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sput v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentUser:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMobileKeyboardEnabled:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpRectForCustomFrame:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRequestedToApplyAodPolicy:Z

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$1;)V

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserRotationUpdateCompleted:Z

    const/16 v3, 0x65

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MULTI_PRESS_POWER_CURTAIN_MODE:I

    const/16 v3, 0x66

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MULTI_PRESS_POWER_SOS_MESSAGE_MODE:I

    const/16 v3, 0x67

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MULTI_PRESS_POWER_LAUNCH_CAMERA:I

    const/16 v3, 0x68

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MULTI_PRESS_POWER_PANIC_MODE:I

    const/16 v3, 0x69

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MULTI_PRESS_POWER_ONE_TOUCH_REPORT_MODE:I

    const/16 v3, 0xc9

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MULTI_PRESS_POWER_LAUNCH_FOTA_UPDATE:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DOUBLE_TAP_POWER_KEY_DISABLED:I

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DOUBLE_TAP_POWER_KEY_ENABLED:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DOUBLE_TAP_HOME_KEY_DISABLED:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DOUBLE_TAP_HOME_KEY_ENABLED:I

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableSVoice:Z

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableDoubleTapLaunch:Z

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableOneTouchReport:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlTurnedOn:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrTetheredDocked:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrMounted:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportCover:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastClearCoverState:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSBikeModeOn:Z

    new-instance v5, Lcom/android/server/policy/SamsungPhoneWindowManager$1;

    invoke-direct {v5, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$1;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/server/policy/SamsungPhoneWindowManager$2;

    invoke-direct {v5, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$2;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/server/policy/SamsungPhoneWindowManager$3;

    invoke-direct {v5, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$3;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOverlappedFreeformWithLetterbox:Z

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReducedAnimationEnabled:Z

    new-instance v5, Lcom/android/server/policy/SamsungPhoneWindowManager$6;

    invoke-direct {v5, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$6;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DISPATCHING:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->NO_DISPATCHING:I

    const/4 v6, -0x2

    iput v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DISPATCHING_UNKNOWN:I

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTouchableAreaChanged:Z

    iput v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    const-string v4, "com.samsung.android.motion.SWEEP_LEFT"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->INTENT_SWEEP_LEFT:Ljava/lang/String;

    const-string v4, "com.samsung.android.motion.SWEEP_RIGHT"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->INTENT_SWEEP_RIGHT:Ljava/lang/String;

    const-string v4, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->INTENT_SWEEP_FULL_SCREEN:Ljava/lang/String;

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$7;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$7;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.samsung.android.capture.QuickPanelCapture"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->INTENT_QUICK_PANEL_CAPTURE:Ljava/lang/String;

    const-string v4, "com.samsung.android.capture.BixbyCapture"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->INTENT_BIXBY_CAPTURE:Ljava/lang/String;

    const-string v4, "com.samsung.android.capture.DesktopCapture"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->INTENT_DESKTOP_CAPTURE:Ljava/lang/String;

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$8;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$8;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$12;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$12;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "panic_call"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->EXTRAS_PANIC_CALL:Ljava/lang/String;

    const-string v4, "com.samsung.android.action.PANIC_CALL"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->ACTION_PANIC_CALL:Ljava/lang/String;

    const-string v4, "com.samsung.android.permission.PANIC_CALL"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->PERMISSION_PANIC_CALL:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mResetKeyTriggered:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mResetKeyConsumed:Z

    new-instance v4, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$r3Z63QUXWJIRA6s6C97gI1HSXQY;

    invoke-direct {v4, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$r3Z63QUXWJIRA6s6C97gI1HSXQY;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFactoryResetChordLongPressRunning:Ljava/lang/Runnable;

    const-string v4, "com.sec.factory.MHS_RESETKEY_SHORTPRESS"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MHS_RESETKEY_SHORTPRESS_INTENT:Ljava/lang/String;

    const-string v4, "com.sec.factory.MHS_POWERKEY_SHORTPRESS"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MHS_POWERKEY_SHORTPRESS_INTENT:Ljava/lang/String;

    const-string v4, "4F4-399-995755"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->TRACKING_ID:Ljava/lang/String;

    const-string v4, "ADPD"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String;

    const-string v4, "PowerKey DoubleClick"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->EXTRA_ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String;

    const-string v4, "VCPE"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->VOICE_CALL_POWERKEY_ENDCALL:Ljava/lang/String;

    const-string v4, "VCPS"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->VOICE_CALL_POWERKEY_SIELNCE:Ljava/lang/String;

    const-string v4, "VCHA"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->VOICE_CALL_HOMEKEY_ANSWER:Ljava/lang/String;

    const-string v4, "VCHK"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String;

    const-string v4, "HomeKey Click"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->EXTRA_VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String;

    const-string v4, "VCRK"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String;

    const-string v4, "RecentKey Click"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->EXTRA_VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeChecked:Z

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeOfTopWindow:I

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->NO_CONDITION:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->NEED_SENSOR:I

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->NO_NEED_SENSOR:I

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$18;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$18;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    const-string v4, "com.samsung.android.snote"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SNOTE_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.samsung.android.snote.control.ui.quickmemo.service.InstantMemo_Service"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SNOTE_CLASS_NAME:Ljava/lang/String;

    const-string v4, "com.samsung.android.app.notes"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SCREEN_OFF_MEMO_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SCREEN_OFF_MEMO_CLASS_NAME:Ljava/lang/String;

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasSPenFeature:Z

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSpenUspLevel:I

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->NOT_FOLDER:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SINGLE_LCD:I

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DUAL_LCD:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    const-string v4, "UNKNOWN"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    const-string v4, "UNKNOWN"

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$gvFaUjXHZC3Z5_xinGgNDGM-ttw;

    invoke-direct {v4, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$gvFaUjXHZC3Z5_xinGgNDGM-ttw;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$20;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$20;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNotifyCPFolderType:Ljava/lang/Runnable;

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsLowBattery:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$21;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$21;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$YB-EO_omr6TnUaQo6c3UMG34l5g;

    invoke-direct {v4, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$YB-EO_omr6TnUaQo6c3UMG34l5g;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$vS4eyoZMM3VIB2slBuuZxNb5-T0;

    invoke-direct {v4, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$vS4eyoZMM3VIB2slBuuZxNb5-T0;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$22;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$22;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    new-instance v4, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$iuXqHcPiTFweL9-7yyxJw2mfeO4;

    invoke-direct {v4, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$iuXqHcPiTFweL9-7yyxJw2mfeO4;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->NORMAL:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->EMERGENCY_MODE:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->ULTRA_POWER_SAVING_MODE:I

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->BATTERY_CONVERSING_MODE:I

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    new-instance v3, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$DWQyixgJOuxm7_6BKYobIqjO1vA;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$DWQyixgJOuxm7_6BKYobIqjO1vA;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$23;

    invoke-direct {v3, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$23;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$8g63jatdVXyOx00qnf5PSFbRu-s;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$8g63jatdVXyOx00qnf5PSFbRu-s;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    new-instance v3, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$3tzdxNLtP6ABQ73aLD1ctvM-CYI;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$3tzdxNLtP6ABQ73aLD1ctvM-CYI;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintTriggered:Z

    new-instance v3, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$GIBWFLs-lvLpjMxwamManqIJ2MI;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$GIBWFLs-lvLpjMxwamManqIJ2MI;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintRunning:Ljava/lang/Runnable;

    const-string v3, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DEX_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "getSettings"

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DEX_CALL_METHOD_GET:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    const/16 v3, 0x146a

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->FORCE_USER_TIMEOUT:I

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$26;

    invoke-direct {v3, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$26;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActivated:Z

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyToast:Landroid/widget/Toast;

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsStartBixbyServicePowerKey:Z

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->BIXBY_RESULT_DEFAULT:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->BIXBY_RESULT_FAIL:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->BIXBY_RESULT_SUCCESS:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->BIXBY_SERVICE_DVFS_BOOSTER_TIMEOUT:I

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object v0, p2

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->setSamsungPolicy(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    invoke-direct {v0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    :cond_0
    new-instance v0, Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-direct {v0}, Lcom/android/server/policy/OneHandOpPolicyManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v0, Lcom/android/server/policy/SystemKeyManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/SystemKeyManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    new-instance v0, Lcom/android/server/policy/MultiTapKeyManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/policy/MultiTapKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiTapKeyPolicy:Lcom/android/server/policy/MultiTapKeyManager;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/policy/TspStateManager;

    invoke-direct {v0}, Lcom/android/server/policy/TspStateManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    :cond_1
    return-void
.end method

.method private TorchModeFlashSet(I)V
    .locals 7

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Torch Time Out ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez p1, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v5, p1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "1"

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "0"

    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :goto_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    :cond_3
    :goto_5
    throw v2
.end method

.method static synthetic access$100(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasSPenFeature:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->requestTraversalForCoverView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardAlertToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyCpFolderTypeChange()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrTetheredDocked:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrMounted:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/policy/SamsungPhoneWindowManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSpenInboxModel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/SamsungPhoneWindowManager;)Lcom/android/server/policy/OneHandOpPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I

    return p1
.end method

.method static synthetic access$800()Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic access$900()Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method private boostHome(Z)V
    .locals 5

    const/16 v0, 0x64

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCpuFreqTable:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "sHomeBooster is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private broadcastHardKeyIntent(Landroid/view/KeyEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyIntentState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :cond_0
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private canApplyAllUnrestricted(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_1

    const/16 v0, 0x966

    if-eq p1, v0, :cond_0

    const/16 v0, 0x96c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x96e

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8b3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x988
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private canApplyOverscan(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x833 -> :sswitch_0
        0x8e1 -> :sswitch_0
        0x8e2 -> :sswitch_0
        0x961 -> :sswitch_0
        0x964 -> :sswitch_0
        0x967 -> :sswitch_0
        0x968 -> :sswitch_0
        0x969 -> :sswitch_0
        0x96a -> :sswitch_0
        0x974 -> :sswitch_0
        0x97f -> :sswitch_0
        0xa28 -> :sswitch_0
        0xa29 -> :sswitch_0
    .end sparse-switch
.end method

.method private canApplyStableFullscreen(II)Z
    .locals 1

    const/16 v0, 0x97e

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private canApplyUnrestricted(I)Z
    .locals 1

    const/16 v0, 0x7d9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x82f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8b2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x965

    if-eq p1, v0, :cond_0

    const/16 v0, 0x96b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x96f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private canBeForceHiddenByViewCoverLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 7

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :sswitch_1
    return v3

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_3
    if-ne v0, v2, :cond_4

    return v3

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v5

    if-ge v4, v5, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d4 -> :sswitch_1
        0x7d5 -> :sswitch_1
        0x7d9 -> :sswitch_0
        0x7dd -> :sswitch_1
        0x7e3 -> :sswitch_1
        0x7e4 -> :sswitch_1
        0x833 -> :sswitch_1
    .end sparse-switch
.end method

.method private canBeForceShownByViewCoverLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedViewCover()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_0
    if-eq v0, v2, :cond_3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v1, v3, :cond_2

    const/16 v3, 0x833

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :cond_2
    :pswitch_0
    return v2

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x7e4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkBixbyToast(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/16 v2, 0x600

    invoke-virtual {v0, v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040139

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040136

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKidsModeRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040137

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeNotSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040133

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040138

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040134

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x104013a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040499

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private checkLaunchSetting()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "active_key_on_lockscreen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkTriggerQD(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    return v0
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DEX_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Failed to get settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p3
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getKeyCombinationTime(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCombinationManager;->getKeyCombinationTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getPersonaService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->pService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->pService:Lcom/android/server/pm/PersonaManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->pService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUm:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method private getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    const-string/jumbo v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private handleTorchKey()V
    .locals 2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsLowBattery:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "No Torch light, becuase Factory mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleTorchKeyForUserKey()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "service.camera.running"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    return v0
.end method

.method private handleUserKey(Z)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    :cond_0
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v5

    :cond_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBatteryConversingModeSupported()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-boolean v9, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "SamsungPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "now mode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "flag"

    const/16 v11, 0x800

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v10, -0x1

    if-ne v5, v10, :cond_3

    const-string v6, "enabled"

    invoke-virtual {v9, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    if-ne v5, v6, :cond_4

    const-string v6, "enabled"

    invoke-virtual {v9, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v8

    :cond_5
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "long_press_app"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBatteryConversingModeSupported()Z

    move-result v9

    if-eqz v9, :cond_7

    if-ne v5, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "short_press_app_battery_conserve"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "short_press_app"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "double_press_app"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_9

    const/16 v6, 0x2f

    :try_start_0
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v1, v6

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    goto :goto_2

    :catch_0
    move-exception v6

    const-string v9, "SamsungPhoneWindowManager"

    const-string v10, "Invalid user key app defined"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    nop

    :goto_3
    sget-boolean v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " longPress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v3, :cond_e

    const-string/jumbo v6, "torch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "torch"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_b
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_d

    if-ne v6, v8, :cond_c

    goto :goto_4

    :cond_c
    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    goto :goto_5

    :cond_d
    :goto_4
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    :goto_5
    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    goto :goto_6

    :cond_e
    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    :goto_6
    const-string/jumbo v6, "torch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string/jumbo v6, "torch"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKeyForUserKey()Z

    move-result v0

    goto :goto_7

    :cond_f
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    goto :goto_7

    :cond_10
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBatteryConversingModeSupported()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v6

    if-nez v6, :cond_11

    iget-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    if-nez v6, :cond_11

    iget-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    if-eqz v6, :cond_11

    if-eqz v3, :cond_11

    if-eqz v4, :cond_11

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v7, 0x0

    const-string v8, "SamsungPhoneWindowManager"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    :cond_11
    :goto_7
    return v0
.end method

.method private initCameraManager()V
    .locals 4

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    :cond_0
    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCameraId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_1
    goto :goto_3

    :goto_2
    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    throw v1

    :cond_2
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "camera service is not availabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private initHomeBooster()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "HOME_BOOSTER"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCpuFreqTable:[I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCpuFreqTable:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    return-void
.end method

.method private injectionKeyEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$17;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isAdaptiveBrightnessSupported()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADAPTIVE_BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0x100

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAdaptiveBrightnessValue:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOutdoorModeSetting:Z

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private isBackKeyConsumed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private isBatteryConversingModeSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-nez v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "emergencyManager instance is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBatteryConversingModeSupported()Z

    move-result v0

    return v0
.end method

.method private isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActivated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :pswitch_0
    return v1

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const-string v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDefaultLauncher :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v7, v8

    nop

    :cond_1
    return v7
.end method

.method private isGearVrHomeKeyBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->isHomeKeyBlocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isGearVrInputDevice(Landroid/view/InputDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/vr/GearVrManagerInternal;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isGearVrSupportRecents()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->getVrRecentsMode()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "kioskmode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private isKidsModeRunning()Z
    .locals 7

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.kidshome"

    const-string v2, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static isMirrorLinkEnabled()Z
    .locals 2

    const-string v0, "1"

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRecentAppStart()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressMode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startCustomApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRecentsAllowed(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRingingOrOffhook()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method private isScreenOffOnLongPressHome()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSpenInboxModel()Z
    .locals 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSpenUspLevel:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "spen inbox model"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isStubPTTApp()Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.bell.ptt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2
.end method

.method private isSupportActiveDouble()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_press_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSupportAndAttachedViewCover()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportCover:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isUserKeyLongPressed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private isUsingSound()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsVoiceCallActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isVzwSetupRunning()Z
    .locals 2

    const-string/jumbo v0, "persist.sys.setupwizard"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isVzwSetupWizardRunning(Z)Z
    .locals 2

    const-string/jumbo v0, "persist.sys.vzw_setup_running"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$new$10(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$11(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    return-void
.end method

.method public static synthetic lambda$new$12(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "WakeAndUnlock not triggered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->cancelWakeAndUnlockPendingAction()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$13(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintTriggered:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "WakeUpReasonFingerprint not triggered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintTriggered:Z

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->cancelWakeUpReasonFingerprintPendingAction()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mResetKeyTriggered:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Start Factory Reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mResetKeyTriggered:Z

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->cancelFactoryResetPendingChordAction()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$6(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUsingSound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$7(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 2

    const/16 v0, 0x7530

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method public static synthetic lambda$new$8(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public static synthetic lambda$new$9(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 5

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "runnable start for activekey wakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKeyForUserKey()Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBatteryConversingModeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    const-string v2, "SamsungPhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$updateSettings$0(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method private synthetic lambda$updateSettings$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method public static synthetic lambda$updateSettings$2(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyMobileKeyboardCoverChanged(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateSettings$3()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method private synthetic lambda$updateSystemUiVisibilityLw$4(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSystemUiVisibilityLw: mNavBarForceImmersiveBtnVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setForceImmersiveBtnVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private launchCalendarIfPossible(I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchCalendarIfPossible: bootCompleted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDeviceProvisioned="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isKeyguardLocked()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isFactoryMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isAutomaticTestMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private launchFingerPrint()V
    .locals 3

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "launch fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private launchPremiumWatch(Z)V
    .locals 4

    :try_start_0
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Premium watch on"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.intent.action.START_WATCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Fail to launch premium watch"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private notifyCpFolderTypeChange()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_2

    const/16 v0, 0x1000

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephony;->setTransmitPowerWithFlag(IZ)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephony;->setTransmitPowerWithFlag(IZ)Z

    :goto_0
    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify cp folder type lid state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "RemoteException occurs in setTransmitPowerWithFlag"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_2
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Notify cp folder type failed, mPhoneService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private performHomeBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$9;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private playPenSound(I)V
    .locals 9

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playPenSound, soundId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSoundStreamId:I

    return-void
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to start media exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private playSoundEffect()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x66

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V

    goto :goto_0

    :cond_0
    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private processSViewCoverSetHiddenResultLw(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private processTorchlight(IZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerDesktopModeManager(Landroid/content/Context;)V
    .locals 2

    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$24;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$24;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_0
    return-void
.end method

.method private registerGearVrStateListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$25;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$25;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    goto :goto_0

    :cond_0
    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "registerGearVrStateListener failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerSystemUIReceiver()V
    .locals 3

    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$11;

    invoke-direct {v2, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$11;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestTraversalForCoverView()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private rotationForSecondLcdOrientationLw(II)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2nd LCD, rotationForSecondLcdOrientationLw(orient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "); user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "USER_ROTATION_LOCKED"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sensorRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    const/16 v2, 0xe

    const/4 v3, -0x1

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    move v3, v2

    :goto_1
    goto :goto_4

    :cond_1
    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    const/16 v5, 0xa

    const/16 v6, 0xd

    const/4 v7, 0x2

    if-nez v2, :cond_2

    if-eq p1, v7, :cond_5

    if-eq p1, v3, :cond_5

    const/16 v2, 0xb

    if-eq p1, v2, :cond_5

    const/16 v2, 0xc

    if-eq p1, v2, :cond_5

    if-eq p1, v6, :cond_5

    :cond_2
    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    if-eq p1, v5, :cond_5

    const/4 v2, 0x6

    if-eq p1, v2, :cond_5

    const/4 v2, 0x7

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v4, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    move v3, v2

    goto :goto_1

    :cond_4
    goto :goto_4

    :cond_5
    :goto_2
    if-ne v1, v7, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v2, v4, :cond_7

    if-eq p1, v5, :cond_7

    if-ne p1, v6, :cond_6

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    move v3, v2

    goto :goto_1

    :cond_7
    :goto_3
    move v3, v1

    goto :goto_1

    :goto_4
    move v2, v3

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System key send to sidesync.source keycode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.sidesync30"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private setNavBarHeightForRotationDefault(III)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput p1, v2, v3

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput p2, v2, v3

    aput p2, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput p3, v6, v7

    aput p3, v4, v5

    aput p3, v2, v3

    aput p3, v0, v1

    return-void
.end method

.method private setShowScreenshotHelpGuide()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_screenshot_help_guide"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private shouldPassEventForPTT(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldPassEventForPTT Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.bell.ptt"

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStubPTTApp()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldShowScreenshotHelpGuide()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_screenshot_help_guide"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private showBixbyToast(IZIZ)V
    .locals 4

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->checkBixbyToast(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$27;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$27;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showNavBarWhileGesture()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.showNavBarWhileGesture"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "cannot check metadata"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method private startBixbyService(Landroid/view/KeyEvent;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "KEYEVENT"

    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "BIXBY_KEY_FW_VERSION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_START_BIXBY_SERVICE_POWER_KEY:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsStartBixbyServicePowerKey:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v2, "RESULT_BY_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBixbyService resultByPower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " keyCombinationTriggered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    nop

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->boostHome(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private startCustomApp()Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-nez v1, :cond_0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "mKnoxCustomSystemManager null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressMode()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-ne v1, v3, :cond_2

    invoke-direct {p0, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v3, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Foreground taskName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_0

    :cond_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v9, "SamsungPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "starting custom app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_5

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v10}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    nop

    return v3

    :cond_6
    :goto_1
    const-string v3, "SamsungPhoneWindowManager"

    const-string v7, "appToStart null"

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startCustomApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private startGearVrRecents()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->startVrRecents()V

    :cond_0
    return-void
.end method

.method private triggerPanicCall()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.PANIC_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "panic_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permission.PANIC_CALL"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Panic Call triggered."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateGestureNavBar()V
    .locals 3

    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureNavBarEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWasGestureNavBarEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->showNavBarWhileGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWasGestureNavBarEnabled:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWasGestureNavBarEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureNavBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWasGestureNavBarEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public IsSBikeModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSBikeModeOn:Z

    return v0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMobileKeyboardEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "show_button_background"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 3

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSystemUiVisibilityLw: vis=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShouldKeepTransientNavBarShowing:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShouldHideTransientNavBar:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShouldHideTransientNavBar:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const v2, -0x20000001

    and-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const v0, -0x8000001

    and-int/2addr p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public applyForceHidePolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/MultiPhoneWindowManager;->shouldBeHiddenByMultiWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowInternal:Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;->forceHideFloatingMultiWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isForceHideByViewCover()Z

    move-result v0

    const/high16 v2, 0x100000

    const/high16 v3, 0x80000

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canBeForceHiddenByViewCoverLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v9, 0x7d0

    invoke-virtual {v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v8

    if-lt v7, v8, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    if-eqz v5, :cond_5

    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    move v8, v1

    goto :goto_3

    :cond_5
    move v8, v4

    :goto_3
    if-eqz v8, :cond_6

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isSurfaceShowingLw()Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_6
    invoke-interface {p1, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Policy hide by cover (case1), win="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_9

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    :cond_b
    goto :goto_4

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canBeForceShownByViewCoverLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy show by cover (case2), win="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy hide cover (case3), win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy show cover (case4-1), mHiddenWindowsByCover="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6, v5}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-interface {v5, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v6

    if-eqz v6, :cond_11

    sget-boolean v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_11

    const-string v6, "SamsungPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Policy show cover (case4-2), w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v2

    if-nez v6, :cond_12

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_13

    :cond_12
    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    :cond_13
    goto :goto_5

    :cond_14
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return v4
.end method

.method public applyForceUserActivityTimeoutWin(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const-wide/16 v1, 0x146a

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v3, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_0
    return-void
.end method

.method public applyFrameInLayoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x96c

    if-eq v3, v4, :cond_0

    const/16 v4, 0x96e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x97f

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    and-int/lit16 v2, v2, -0x201

    goto :goto_0

    :cond_0
    :pswitch_0
    nop

    :cond_1
    :goto_0
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    and-int/lit16 v4, v2, 0x600

    if-eqz v4, :cond_7

    :cond_3
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canApplyUnrestricted(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canApplyOverscan(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canApplyAllUnrestricted(II)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_6
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v4, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canApplyStableFullscreen(II)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p6, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8b3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->applyForceUserActivityTimeoutWin(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_6

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    move v0, v7

    goto :goto_4

    :cond_2
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v7, v2, :cond_4

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    move v0, v7

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v7, v4, :cond_6

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    if-ge v7, v8, :cond_5

    move v7, v4

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_3
    move v0, v7

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->setOverlappedFreeformWithNaviBar(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_8

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_8
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v0, v5, :cond_9

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x10000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_5

    :cond_9
    move v0, v3

    :goto_5
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedViewCover()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v5, :cond_a

    move v5, v4

    goto :goto_6

    :cond_a
    move v5, v3

    :goto_6
    if-nez v0, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    :cond_c
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedViewCover()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v6, v6, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v6, :cond_13

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_13

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v6

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v7, v4, :cond_d

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x63

    if-gt v7, v8, :cond_d

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-nez v7, :cond_e

    :cond_d
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    if-eqz v6, :cond_f

    :cond_e
    move v7, v4

    goto :goto_7

    :cond_f
    move v7, v3

    :goto_7
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    if-eqz v7, :cond_13

    if-ne v6, v4, :cond_10

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    if-ne v6, v2, :cond_11

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_8
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_13

    const-string v9, "SamsungPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Hide sview cover :  SViewCoverWindow = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_18

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v5

    invoke-interface {v0, v5}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getDisplayCutoutLw(I)Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v5

    if-ne v5, v1, :cond_18

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v6, v2, :cond_15

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v6

    if-ge v2, v6, :cond_14

    move v3, v4

    nop

    :cond_14
    move v5, v3

    goto :goto_9

    :cond_15
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v4, :cond_17

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v6}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getDefaultDisplayHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v2, v6, :cond_16

    move v3, v4

    nop

    :cond_16
    move v5, v3

    :cond_17
    :goto_9
    if-eqz v5, :cond_18

    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOverlappedFreeformWithLetterbox:Z

    :cond_18
    return-void
.end method

.method public beginLayoutForDefaultDisplayLw(Lcom/android/server/wm/DisplayFrames;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMobileKeyboardEnabled()Z

    move-result v12

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v15, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    if-eq v15, v14, :cond_1

    if-eq v15, v13, :cond_0

    iget v15, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    move v13, v15

    :goto_0
    move/from16 v15, v17

    goto :goto_1

    :cond_0
    iget v15, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    nop

    move/from16 v13, v16

    goto :goto_1

    :cond_1
    iget v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    nop

    move/from16 v13, v16

    goto :goto_0

    :goto_1
    iput v15, v2, Landroid/graphics/Rect;->left:I

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v14, v12, v13}, Landroid/graphics/Rect;->inset(IIII)V

    invoke-virtual {v7, v15, v14, v12, v13}, Landroid/graphics/Rect;->inset(IIII)V

    iget v14, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v18, v2

    iget v2, v7, Landroid/graphics/Rect;->right:I

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v14, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v14, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v14, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v14, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v14, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v8, v15, v0, v12, v13}, Landroid/graphics/Rect;->inset(IIII)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v19, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    move/from16 v20, v2

    add-int v2, v14, v0

    move/from16 v21, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int v0, v0, v16

    invoke-virtual {v8, v14, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v11, v15, v0, v12, v13}, Landroid/graphics/Rect;->inset(IIII)V

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v22, v3

    add-int v3, v14, v0

    move-object/from16 v23, v4

    iget v4, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    invoke-virtual {v9, v14, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int v3, v14, v0

    iget v4, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    invoke-virtual {v10, v14, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int v3, v14, v0

    iget v4, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    invoke-virtual {v11, v14, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_8

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v3, v4, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_3
    iget v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v4, v12

    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v4, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v4, v12

    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v4, v12}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    iget v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    iput v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    goto :goto_5

    :cond_5
    iget v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    if-nez v2, :cond_6

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v4, v12}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    iget v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    iput v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    nop

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    iput v12, v3, Landroid/graphics/Rect;->bottom:I

    iput v12, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :pswitch_1
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iput v12, v4, Landroid/graphics/Rect;->right:I

    iput v12, v3, Landroid/graphics/Rect;->right:I

    iput v12, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :pswitch_2
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v4, Landroid/graphics/Rect;->left:I

    iput v12, v3, Landroid/graphics/Rect;->left:I

    iput v12, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    nop

    :cond_7
    :goto_6
    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    sget-object v25, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v26, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v27, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v28, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v29, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v31, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    const/16 v32, 0x0

    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v34, 0x0

    move-object/from16 v24, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    invoke-interface/range {v24 .. v34}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    goto :goto_7

    :cond_8
    move-object/from16 v1, p1

    :goto_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_DEFAULT_LIGHT:Z

    if-eqz v2, :cond_9

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnrestrictedScreenHeight:I

    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeChecked:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MultiPhoneWindowManager;->setOverlappedFreeformWithNaviBar(Z)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOverlappedFreeformWithLetterbox:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeChecked:Z

    if-nez v0, :cond_2

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeOfTopWindow:I

    :cond_2
    return-void
.end method

.method public boostFolding(Z)V
    .locals 5

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boostFolding: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "folding"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "unfolding"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "PWM_ROTATION"

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_1
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "sFoldingBooster.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "HINT_PWM_ROTATION.acquire is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public boostWakeUp()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "DEVICE_WAKEUP"

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "sWakeUpBooster.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "HINT_DEVICE_WAKEUP.acquire is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callAccessibilityScreenCurtain()V
    .locals 2

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "callAccessibilityScreenCurtain() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v0, :cond_0

    const-string v0, "ADPD"

    const-string v1, "PowerKey DoubleClick"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManager;->semToggleDarkScreenMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public callAccessibilityTalkbackMode()V
    .locals 2

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "callAccessibilityTalkbackMode() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public callOneTouchReport()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v4, "tel"

    const-string v5, "114"

    invoke-static {v4, v5, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v4, "tel"

    const-string v5, "112"

    invoke-static {v4, v5, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v2

    :goto_0
    const-string/jumbo v2, "startFlag"

    const-string v3, "002"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "OneTouchReport started"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    const v0, 0xc36a

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_2

    :cond_1
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "OneTouchReport was disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method canBeForceHiddenByAod(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7e7

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v3, 0x96a

    invoke-virtual {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    :cond_1
    :pswitch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x8de
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method cancelFactoryResetPendingChordAction()V
    .locals 2

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "cancelFactoryResetPendingChordAction"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFactoryResetChordLongPressRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "factory reset wake lock release"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method cancelWakeAndUnlockPendingAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method cancelWakeUpReasonFingerprintPendingAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x96b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public clearConventionalModeBarSize()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeOfTopWindow:I

    return-void
.end method

.method public computeConventionalModeBarSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    invoke-virtual {p1, v4, v4, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    invoke-virtual {p1, v1, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    invoke-virtual {p1, v4, v4, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    nop

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeChecked:Z

    if-nez v2, :cond_3

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeOfTopWindow:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeChecked:Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- Samsung Window Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeModeReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isOneHandOpEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOneHandOpTriggeredType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OneHandOpPolicyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsInteractionControlTurnedOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsInteractionControlEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoubleTapLaunchBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoubleTapEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsAvailableDoubleTapLaunch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableDoubleTapLaunch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAvailableSVoice="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableSVoice:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIFTH_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v0, :cond_0

    const-string v0, " mIsAvailableOneTouchReport="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableOneTouchReport:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsDirectAccessEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDirectAccessEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsMobileKeyboardEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMobileKeyboardEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMobileKeyboardHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isCarModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarModeSize="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFakeFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SMART_EDGE_ZONE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInputMethod="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSupportCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHideSViewCoverWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHiddenWindowsByCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindowsByCover:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MANAGE_AOD_POLICY:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPolicy.mAodShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRequestedToApplyAodPolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRequestedToApplyAodPolicy:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasFakeMenuKeyRecent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasFakeMenuKeyBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSideSyncSourcePresentationActivated="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActivated:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBixbyComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeUpReasonFingerprintTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mWakeAndUnlockTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_START_BIXBY_SERVICE_POWER_KEY:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsStartBixbyServicePowerKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsStartBixbyServicePowerKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mSupportLongPressPowerWhenNonInteractive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakingUpReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsGearVrDocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsGearVrTetheredDocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrTetheredDocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsGearVrMounted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrMounted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public finishPostLayoutPolicyLw(I)I
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MANAGE_AOD_POLICY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isForceHideByViewCover()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRequestedToApplyAodPolicy:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateGestureNavBar()V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x4

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedViewCover()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishPostLayoutPolicyLw: mHideSViewCoverWindowState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTphoneRelaxMode()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-eqz v3, :cond_4

    invoke-interface {v2, v1}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v3

    move v0, v3

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->processSViewCoverSetHiddenResultLw(I)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v3

    move v0, v3

    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_6

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->processSViewCoverSetHiddenResultLw(I)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 p1, p1, 0x1

    :cond_7
    :goto_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->dismissKeyguardByPendingRequest()V

    :cond_8
    return p1
.end method

.method public finishScreenTurningOn()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SMART_EDGE_ZONE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAdaptiveBrightnessSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$16;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$16;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastFocus:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SMART_EDGE_ZONE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCarModeBarSurfaceLayer()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getImageViewForCustomStartingWindow(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSystemUiVisibility(I)V

    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCustomImageForView, CustomStartingWindow for image, duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "setCustomImageForView, CustomStartingWindow just show original starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavBarHidePolicy(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarHidePolicy:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/NavBarHidePolicyManager;->getPolicy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMobileKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-ge p2, p3, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr p3, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge p2, p3, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr p3, v0

    :cond_1
    return p3
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMobileKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-le p2, p3, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr p2, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p2, p3, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr p2, v0

    :cond_1
    return p2
.end method

.method public getOverlappedFreeformWithLetterbox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOverlappedFreeformWithLetterbox:Z

    return v0
.end method

.method public getRotationLockOrientation()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserRotationUpdateCompleted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_rotation"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public getStandAloneTaskBarHeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mStandAloneTaskBarHeight:I

    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public handleLongPressOnHome()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenOffOnLongPressHome()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v2, "Home longpress block in KNOX"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungPhoneWindowManager"

    const-string v2, "Home longpress block in ProKiosk Mode"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VZW_SETUP_WIZARD:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVzwSetupRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SamsungPhoneWindowManager"

    const-string v2, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Home longpress block in Ringing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Home longpress block in VoIPRinging"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Home longpress block in emergency & upsm mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInteractionControlEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Home longpress blocked by Interaction control"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Home longpress block in UserSetup not complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public handleLongPressOnRecent(I)V
    .locals 9

    nop

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRecentAppStart()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Recent longpress used in Lock task mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Unable to reach activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    const/4 v5, 0x1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_split_screen_view_shortcut"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    move v1, v6

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_snap_window_shortcut"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    move v2, v6

    goto :goto_3

    :catch_1
    move-exception v6

    :goto_3
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    iget-object v6, v6, Lcom/android/server/policy/MultiDisplayPolicyManager;->mMultiDisplayInternal:Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;

    invoke-interface {v6, p1}, Lcom/android/server/policy/IMultiDisplayPolicy$MultiDisplayManagerInternalFuncs;->isDexDisplayActivated(I)Z

    move-result v4

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v4, :cond_9

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move v3, v5

    nop

    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5, v3}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    :cond_9
    return-void
.end method

.method public ignorePowerKeyInEncrypting()Z
    .locals 7

    const-string/jumbo v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, v2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing progress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-lez v1, :cond_0

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Ignore Power Off Key!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    return v2
.end method

.method public init()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->init(Landroid/content/Context;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/OneHandOpPolicyManager;->init(Landroid/content/Context;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportCover:Z

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportCover:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_3
    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$4;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_4
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->registerRecevier()V

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->initIntent()V

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->initHomeBooster()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/TspStateManager;->init(Landroid/content/Context;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasSPenFeature:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSpenUspLevel:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasQwertyKeyboard:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.folder_type"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    goto :goto_3

    :cond_7
    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    goto :goto_3

    :cond_8
    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$1;)V

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ULTRA_POWER_SAVING_MODE:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    :cond_b
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    const-string v0, "com.samsung.android.bixby.agent/com.samsung.android.bixby.WinkService"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    nop

    :cond_c
    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    return-void
.end method

.method initIntent()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    const-string v1, "isQuickLaunchMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableSVoice:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIFTH_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "go.police.report"

    const-string v2, "go.police.report.Report"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableOneTouchReport:Z

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableOneTouchReport:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x69

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthPressOnPowerBehavior:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthPressOnPowerBehavior:I

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.secretmode.service"

    const-string v3, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/SamsungPhoneWindowManager$15;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    const/high16 v0, 0x20000000

    and-int v0, p3, v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    move v10, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    move v11, v0

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v8

    :goto_2
    move v14, v0

    const/16 v0, 0x19

    const/16 v15, 0x18

    const-wide/16 v16, -0x1

    if-eq v4, v0, :cond_3

    if-ne v4, v15, :cond_5

    :cond_3
    if-eqz v5, :cond_5

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "SamsungPhoneWindowManager"

    const-string v8, "knox: volume key is blocked"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-wide v16

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_a

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    if-nez v18, :cond_7

    iget-object v9, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {v1, v4, v8}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v0

    if-ne v4, v15, :cond_8

    iget-boolean v9, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    if-eqz v9, :cond_8

    const/4 v0, 0x1

    iput-boolean v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    goto :goto_3

    :cond_6
    const/4 v9, 0x1

    invoke-direct {v1, v4, v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v0

    goto :goto_3

    :cond_7
    invoke-direct {v1, v4, v8}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v0

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    sget-boolean v8, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "SamsungPhoneWindowManager"

    const-string v9, "MDM: key is blocked"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-wide v16

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    invoke-direct {v1, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getKeyCombinationTime(I)J

    move-result-wide v22

    cmp-long v0, v20, v22

    if-gez v0, :cond_b

    sub-long v8, v22, v20

    return-wide v8

    :cond_b
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-wide v16

    :cond_c
    invoke-direct {v1, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "SamsungPhoneWindowManager"

    const-string v8, "interceptKeyTi : Key was blocked by sidesync."

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-wide v16

    :cond_e
    const-wide/16 v20, -0x2

    const/16 v0, 0x8

    const/16 v9, -0x515

    const/4 v15, 0x2

    sparse-switch v4, :sswitch_data_0

    move/from16 v24, v6

    goto/16 :goto_1e

    :sswitch_0
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const-string v0, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Do nothing regarding wink key event, mPolicy.isUserSetupComplete()"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v15}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isCarrierLocked()="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", mPolicy.mKeyguardDelegate.isSimLocked()="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v15, v15, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v15}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isEnabledLGTPolicy()="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_10

    return-wide v16

    :cond_10
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_12

    const-string v0, "SamsungPhoneWindowManager"

    const-string v8, "BixbyComponent is not set"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-direct {v1, v0, v11, v13, v10}, Lcom/android/server/policy/SamsungPhoneWindowManager;->showBixbyToast(IZIZ)V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    if-nez v0, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    invoke-direct {v1, v3, v8}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startBixbyService(Landroid/view/KeyEvent;Z)V

    :cond_14
    return-wide v16

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "SamsungPhoneWindowManager"

    const-string v8, "Key was blocked by carrier status"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-wide v16

    :cond_16
    :goto_4
    move/from16 v24, v6

    goto/16 :goto_1e

    :sswitch_2
    if-nez v11, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    :cond_17
    return-wide v16

    :sswitch_3
    if-nez v11, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez v12, :cond_18

    const-string v0, "SamsungPhoneWindowManager"

    const-string v8, "KEYCODE_MULTI_WINDOW key input"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    :cond_18
    return-wide v16

    :sswitch_4
    if-nez v11, :cond_19

    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    if-eqz v0, :cond_19

    iput-boolean v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchFingerPrint()V

    :cond_19
    return-wide v16

    :sswitch_5
    if-eqz v11, :cond_1a

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move/from16 v24, v6

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_1a
    move/from16 v24, v6

    :goto_5
    return-wide v16

    :sswitch_6
    move/from16 v24, v6

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_6

    :cond_1b
    if-nez v11, :cond_64

    if-nez v5, :cond_64

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "3G key action"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.DATA_NETWORK_KEY_PRESSED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1e

    :cond_1c
    :goto_6
    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Data key - no action in factory mode"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :sswitch_7
    move/from16 v24, v6

    goto/16 :goto_14

    :sswitch_8
    move/from16 v24, v6

    if-nez v11, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenCaptureEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v0, 0x2

    :cond_1d
    new-instance v6, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v7, v0, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    invoke-direct {v9, v1, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1e

    :sswitch_9
    move/from16 v24, v6

    if-eqz v11, :cond_64

    if-nez v12, :cond_64

    if-nez v5, :cond_64

    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1e
    goto :goto_7

    :catch_0
    move-exception v0

    :goto_7
    return-wide v16

    :sswitch_a
    move/from16 v24, v6

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-eqz v0, :cond_64

    :try_start_1
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v6

    if-ne v6, v15, :cond_1f

    const/4 v6, 0x1

    invoke-interface {v0, v3, v6}, Lcom/android/internal/statusbar/IStatusBarService;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V

    goto :goto_8

    :cond_1f
    invoke-interface {v0, v3, v8}, Lcom/android/internal/statusbar/IStatusBarService;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_20
    :goto_8
    goto :goto_9

    :catch_1
    move-exception v0

    const-string v6, "SamsungPhoneWindowManager"

    const-string v7, "RemoteException when sendKeyEventToDesktopTaskbar"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-wide v16

    :sswitch_b
    move/from16 v24, v6

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v6, :cond_22

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v6

    if-eqz v6, :cond_22

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Recent key is blocked in ProKiosk mode"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-wide v16

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v6

    if-gtz v6, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/lockscreen/BootBanner;->isDodBannerVisible()Z

    move-result v6

    if-eqz v6, :cond_24

    :cond_23
    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    if-eqz v6, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v6

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v7

    if-eqz v7, :cond_28

    if-eq v6, v9, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_27

    :try_start_2
    const-string v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input recent key, current send personaId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "KnoxKeyguardEventFlag"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.samsung.knox.securefolder"

    const-string v9, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    if-ne v0, v15, :cond_26

    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.knox.containerdesktop"

    const-string v9, "com.samsung.android.knox.containerdesktop.sfkeyguard.KeyguardService"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_a

    :cond_25
    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.knox.containeragent"

    const-string v9, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    if-ne v0, v15, :cond_26

    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.knox.containerdesktop"

    const-string v9, "com.samsung.android.knox.containerdesktop.knoxkeyguard.KeyguardService"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_26
    :goto_a
    goto :goto_b

    :catch_2
    move-exception v0

    const-string v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start: threw an exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-wide v20

    :cond_27
    return-wide v16

    :cond_28
    if-eq v6, v9, :cond_29

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v7, "recent apps key disabled because of knox keyguard"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_29
    :try_start_3
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v6

    if-gtz v6, :cond_2a

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v6

    if-eqz v6, :cond_2b

    :cond_2a
    const-string v6, "SamsungPhoneWindowManager"

    const-string/jumbo v7, "recent apps key disabled in COM specific case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    return-wide v16

    :cond_2b
    goto :goto_c

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Recent key is blocked by MirrorLink"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBlockingSystemKey()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Recent key is blocked by car mode"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v0

    if-eqz v0, :cond_64

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Recent key is blocked by policy"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-wide v16

    :sswitch_c
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    :try_start_4
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getFocusedTaskIdLw()I

    move-result v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2f

    :try_start_6
    const-string v6, "SamsungPhoneWindowManager"

    const-string v7, "finish focused window"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2f
    goto :goto_d

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    :goto_d
    return-wide v16

    :sswitch_d
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrSupport()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrDocked()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrSupportRecents()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "startGearVrRecents"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startGearVrRecents()V

    return-wide v16

    :sswitch_e
    move/from16 v24, v6

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_30

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0, v13}, Lcom/android/server/policy/MultiPhoneWindowManager;->minimizeAllFreeformTasks(I)V

    :cond_30
    return-wide v16

    :sswitch_f
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    if-nez v11, :cond_33

    const/4 v0, 0x0

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v0, 0x2

    :cond_31
    move v6, v0

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_9
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getFocusedTaskIdLw()I

    move-result v0

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_32

    const-string v8, "SamsungPhoneWindowManager"

    const-string/jumbo v9, "window screenshot"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    const/16 v9, 0x64

    const/4 v15, 0x1

    invoke-direct {v8, v9, v15, v6, v15}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    move-object v7, v8

    iget-object v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    invoke-direct {v9, v1, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_32
    const-string v8, "SamsungPhoneWindowManager"

    const-string v9, "full screenshot"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v9, v6, v9}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    move-object v7, v8

    iget-object v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    invoke-direct {v9, v1, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :cond_33
    :goto_e
    return-wide v16

    :sswitch_10
    move/from16 v24, v6

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_64

    if-nez v11, :cond_64

    :try_start_b
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-interface {v0, v3, v14}, Lcom/android/internal/statusbar/IStatusBarService;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    :cond_34
    goto :goto_f

    :catch_5
    move-exception v0

    const-string v6, "SamsungPhoneWindowManager"

    const-string v7, "RemoteException when sendKeyEventToDesktopTaskbar"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-wide v16

    :sswitch_11
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    if-nez v11, :cond_35

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "toggle recentapp"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v14}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    :cond_35
    return-wide v16

    :sswitch_12
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    :try_start_c
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6

    :try_start_d
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getFocusedTaskIdLw()I

    move-result v0

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v6, -0x1

    if-eq v0, v6, :cond_36

    :try_start_e
    const-string v6, "SamsungPhoneWindowManager"

    const-string v7, "finish focused window"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_6

    :cond_36
    goto :goto_10

    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_6

    :catch_6
    move-exception v0

    :goto_10
    return-wide v16

    :sswitch_13
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "launch volume panel"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v8, v7}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-wide v16

    :sswitch_14
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "launch Quick Setting"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    if-eqz v6, :cond_38

    :try_start_11
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    if-eqz v0, :cond_37

    const/4 v7, 0x0

    invoke-interface {v6, v7, v14}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanelToType(Ljava/lang/String;I)V

    goto :goto_11

    :cond_37
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_7

    :goto_11
    goto :goto_12

    :catch_7
    move-exception v0

    :cond_38
    :goto_12
    return-wide v16

    :sswitch_15
    move/from16 v24, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_3a

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "window locked"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    if-ne v0, v15, :cond_39

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const/16 v9, 0xb

    invoke-virtual {v0, v6, v7, v9, v8}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_39
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    :cond_3a
    return-wide v16

    :sswitch_16
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "launch Calendar"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchCalendarIfPossible(I)V

    return-wide v16

    :sswitch_17
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_13

    :cond_3b
    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "bixby is triggered(combination)"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_3c

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "BixbyComponent is not set"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_3c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-direct {v1, v0, v11, v13, v10}, Lcom/android/server/policy/SamsungPhoneWindowManager;->showBixbyToast(IZIZ)V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    if-nez v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_3d
    invoke-direct {v1, v3, v8}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startBixbyService(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1e

    :cond_3e
    :goto_13
    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "no action about wink"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :sswitch_18
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "launch SFinder"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    return-wide v16

    :sswitch_19
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "goto home by meta key"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v13}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-wide v16

    :sswitch_1a
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_3f
    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_40

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Key was blocked by sim or carrier status"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-wide v16

    :sswitch_1b
    move/from16 v24, v6

    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActivated:Z

    if-eqz v0, :cond_41

    invoke-direct {v1, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_41

    return-wide v16

    :cond_41
    :goto_14
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v7, 0x1040499

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-wide v16

    :cond_42
    if-eqz v11, :cond_45

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_43

    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    if-eqz v0, :cond_43

    iput-boolean v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_44

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "User key longpress"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    invoke-direct {v1, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v0

    if-eqz v0, :cond_64

    return-wide v16

    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUserKeyLongPressed()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-direct {v1, v8}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v0

    if-eqz v0, :cond_64

    return-wide v16

    :sswitch_1c
    move/from16 v24, v6

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_46

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_46

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->getLaunchBoundsForMetaKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->isInvalidBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_46

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/server/policy/MultiPhoneWindowManager;->resizeFreeformTask(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_46
    return-wide v16

    :sswitch_1d
    move/from16 v24, v6

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_48

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_48

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->getLaunchBoundsForMetaKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->isMinimizeBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_47

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/android/server/policy/MultiPhoneWindowManager;->minimizeFreeform(Landroid/os/IBinder;)V

    goto :goto_15

    :cond_47
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->isInvalidBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_48

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/server/policy/MultiPhoneWindowManager;->resizeFreeformTask(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_48
    :goto_15
    return-wide v16

    :sswitch_1e
    move/from16 v24, v6

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_64

    if-nez v11, :cond_4c

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_4c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_12
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/android/server/policy/MultiPhoneWindowManager;->resizeFreeformTask(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    goto :goto_17

    :catchall_3
    move-exception v0

    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v0

    :cond_49
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/MultiPhoneWindowManager;->getLaunchBoundsForMetaKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_4a

    :try_start_14
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->exitFreeformMode(Landroid/os/IBinder;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_16

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4a
    :goto_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_4c

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    const-string v0, ""

    :cond_4b
    const-string v7, "DMBY"

    const-string v9, "DMPA"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    new-array v9, v15, [Ljava/lang/String;

    const-string v15, "MaximizedByArrowKey"

    aput-object v15, v9, v8

    const/4 v8, 0x1

    aput-object v0, v9, v8

    move-object v8, v9

    iget-object v9, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForDeX(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4c
    :goto_17
    return-wide v16

    :sswitch_1f
    move/from16 v24, v6

    const/16 v0, 0x6f

    const/16 v6, 0x52

    if-ne v4, v0, :cond_4f

    if-nez v11, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Open Task Manager"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_18

    :cond_4d
    invoke-direct {v1, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    :cond_4e
    :goto_18
    return-wide v16

    :cond_4f
    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    if-eqz v0, :cond_64

    if-nez v11, :cond_50

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBackKeyConsumed()Z

    move-result v0

    if-eqz v0, :cond_64

    return-wide v16

    :cond_50
    if-nez v5, :cond_51

    iput-boolean v8, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    :cond_51
    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    if-nez v0, :cond_64

    const/16 v0, 0xa

    if-ne v5, v0, :cond_64

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    invoke-direct {v1, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto/16 :goto_1e

    :sswitch_20
    move/from16 v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    if-eqz v6, :cond_53

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTphoneRelaxMode()Z

    move-result v7

    if-nez v7, :cond_53

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v7

    if-eqz v7, :cond_53

    if-eqz v11, :cond_52

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v7, "ringing: Accept the call!"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v0, :cond_52

    const-string v0, "VCHA"

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const-string v0, "SamsungPhoneWindowManager"

    const-string v7, "Ignoring HOME; there\'s a ringing incoming call and set anykey mode"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_53
    const/4 v7, 0x0

    invoke-virtual {v1, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInputEventForDexModeTi(I)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v6

    if-nez v6, :cond_55

    if-nez v11, :cond_54

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0, v13}, Lcom/android/server/policy/MultiPhoneWindowManager;->minimizeAllFreeformTasks(I)V

    :cond_54
    return-wide v16

    :cond_55
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_59

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v6

    if-eqz v6, :cond_57

    const/16 v18, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_56

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    if-nez v19, :cond_56

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v18

    goto :goto_19

    :cond_56
    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v18

    :goto_19
    if-nez v18, :cond_57

    const-string v0, "SamsungPhoneWindowManager"

    const-string v7, "home key disabled by edm"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_57
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v7

    if-gtz v7, :cond_58

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/BootBanner;->isDodBannerVisible()Z

    move-result v7

    if-eqz v7, :cond_59

    :cond_58
    const-string v0, "SamsungPhoneWindowManager"

    const-string v7, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_59
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    if-eqz v6, :cond_5d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v6

    if-eq v6, v9, :cond_5d

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_5d

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v7

    if-nez v7, :cond_5d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5c

    :try_start_15
    const-string v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input home key, current send personaId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "KnoxKeyguardEventFlag"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.samsung.knox.securefolder"

    const-string v9, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    if-ne v0, v15, :cond_5b

    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.knox.containerdesktop"

    const-string v9, "com.samsung.android.knox.containerdesktop.sfkeyguard.KeyguardService"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1a

    :cond_5a
    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.knox.containeragent"

    const-string v9, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    if-ne v0, v15, :cond_5b

    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.knox.containerdesktop"

    const-string v9, "com.samsung.android.knox.containerdesktop.knoxkeyguard.KeyguardService"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    :cond_5b
    :goto_1a
    goto :goto_1b

    :catch_9
    move-exception v0

    const-string v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start: threw an exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5c
    :goto_1b
    return-wide v16

    :cond_5d
    :try_start_16
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    if-lez v0, :cond_5e

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "home key disabled by pwd policy in COM case"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_a

    return-wide v16

    :cond_5e
    goto :goto_1c

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActivated:Z

    if-eqz v0, :cond_5f

    invoke-direct {v1, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5f

    return-wide v16

    :cond_5f
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Home key is blocked by MirrorLink"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBlockingSystemKey()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Home key is blocked by car mode"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "SamsungPhoneWindowManager"

    const-string v6, "Home key is blocked by policy"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_62
    if-nez v11, :cond_64

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v0

    if-eqz v0, :cond_64

    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    const-string v6, "SamsungPhoneWindowManager"

    const-string v7, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_63
    const-string v6, "SamsungPhoneWindowManager"

    const-string v7, "Unable to find IVoIPInterface interface"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_b

    goto :goto_1d

    :catch_b
    move-exception v0

    const-string v6, "SamsungPhoneWindowManager"

    const-string v7, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    nop

    :cond_64
    :goto_1e
    const/4 v0, 0x0

    const/4 v6, 0x3

    if-nez v5, :cond_66

    if-eqz v10, :cond_66

    if-nez v13, :cond_66

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiTapKeyPolicy:Lcom/android/server/policy/MultiTapKeyManager;

    invoke-virtual {v7, v3}, Lcom/android/server/policy/MultiTapKeyManager;->dispatchMultiTapKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_66

    if-ne v4, v6, :cond_66

    if-nez v11, :cond_66

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    const-string v7, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "home pressed="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v15, v15, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " home consumed="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v15, v15, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v7, :cond_65

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    :cond_65
    const/4 v0, 0x1

    :cond_66
    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v7, v4}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v7

    if-eqz v7, :cond_69

    if-eqz v2, :cond_67

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    move-object/from16 v25, v15

    goto :goto_1f

    :cond_67
    const/16 v25, 0x0

    :goto_1f
    move-object/from16 v6, v25

    if-eqz v6, :cond_68

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_68

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_68

    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v8, "reason"

    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    return-wide v16

    :cond_68
    const-string v7, "SamsungPhoneWindowManager"

    const-string/jumbo v8, "sec check systemkey before dispatching "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    return-wide v7

    :cond_69
    if-ne v4, v6, :cond_6d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_6d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v6

    if-eqz v6, :cond_6b

    const/4 v7, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_6a

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_6a

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v7

    goto :goto_20

    :cond_6a
    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v7

    :goto_20
    if-nez v7, :cond_6b

    const-string v8, "SamsungPhoneWindowManager"

    const-string v9, "home key disabled by edm"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_6b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v7

    if-gtz v7, :cond_6c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/lockscreen/BootBanner;->isDodBannerVisible()Z

    move-result v7

    if-eqz v7, :cond_6d

    :cond_6c
    const-string v7, "SamsungPhoneWindowManager"

    const-string v8, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_6d
    if-eqz v0, :cond_6e

    goto :goto_21

    :cond_6e
    move-wide/from16 v16, v20

    :goto_21
    return-wide v16

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_20
        0x4 -> :sswitch_1f
        0x13 -> :sswitch_1e
        0x14 -> :sswitch_1d
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1c
        0x1a -> :sswitch_1b
        0x1b -> :sswitch_1a
        0x20 -> :sswitch_19
        0x22 -> :sswitch_18
        0x25 -> :sswitch_17
        0x27 -> :sswitch_16
        0x28 -> :sswitch_15
        0x2d -> :sswitch_14
        0x32 -> :sswitch_13
        0x34 -> :sswitch_12
        0x3d -> :sswitch_11
        0x6f -> :sswitch_1f
        0x75 -> :sswitch_10
        0x76 -> :sswitch_10
        0x78 -> :sswitch_f
        0x7a -> :sswitch_e
        0x7d -> :sswitch_d
        0x86 -> :sswitch_c
        0xbb -> :sswitch_b
        0x3e9 -> :sswitch_b
        0x3ea -> :sswitch_a
        0x3eb -> :sswitch_9
        0x3ec -> :sswitch_8
        0x3f7 -> :sswitch_7
        0x40c -> :sswitch_6
        0x415 -> :sswitch_5
        0x416 -> :sswitch_4
        0x417 -> :sswitch_6
        0x425 -> :sswitch_3
        0x428 -> :sswitch_2
        0x431 -> :sswitch_1
        0x43a -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/high16 v0, 0x20000000

    and-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    move v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    move v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    :cond_2
    iget v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    const/4 v9, 0x2

    if-ne v0, v5, :cond_3

    const/16 v0, 0xbb

    if-ne v8, v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRecentsAllowed(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    const/16 v10, 0x3f7

    if-eqz v0, :cond_5

    if-eq v8, v10, :cond_4

    packed-switch v8, :pswitch_data_0

    goto :goto_2

    :cond_4
    :pswitch_0
    const-string v0, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key was blocked by MirrorLink:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->broadcastHardKeyIntent(Landroid/view/KeyEvent;)V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    const/16 v11, 0x18

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v12, :cond_6

    iget-object v12, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v12}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-direct {v1, v8, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v0

    if-ne v8, v11, :cond_8

    iget-boolean v12, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    if-eqz v12, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    invoke-direct {v1, v8, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v0

    goto :goto_3

    :cond_7
    invoke-direct {v1, v8, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v0

    :cond_8
    :goto_3
    if-nez v0, :cond_9

    const-string v4, "SamsungPhoneWindowManager"

    const-string v5, "MDM: key is blocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_9
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/KeyCombinationManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_START_BIXBY_SERVICE_POWER_KEY:Z

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsStartBixbyServicePowerKey:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_a

    const-string v0, "SamsungPhoneWindowManager"

    const-string v12, "BixbyComponent is not set"

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCombinationManager;->isKeyCombinationTriggeredWithPower()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v12

    invoke-direct {v1, v0, v7, v12, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->showBixbyToast(IZIZ)V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-direct {v1, v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startBixbyService(Landroid/view/KeyEvent;Z)V

    :cond_b
    :goto_4
    const/4 v0, 0x3

    if-eq v8, v0, :cond_d

    invoke-virtual {v1, v8}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInteractionControlEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_d

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "interceptKeyTq : Key was blocked by access control"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v9

    :cond_d
    const/4 v12, 0x4

    if-eq v8, v12, :cond_e

    const/16 v13, 0x7d

    if-ne v8, v13, :cond_10

    :cond_e
    iget-object v13, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v13, v13, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v13, :cond_10

    iget-object v13, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v13, v13, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/vr/GearVrManagerInternal;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v13, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v13, v13, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v13, :cond_f

    const-string v13, "com.samsung.android.hmt.vrsvc"

    iget-object v14, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v14}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget-object v14, v14, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVSVisible()Z

    move-result v13

    if-eqz v13, :cond_10

    return v9

    :cond_10
    if-eq v8, v0, :cond_3e

    if-eq v8, v10, :cond_37

    const/16 v0, 0x436

    if-eq v8, v0, :cond_34

    const/16 v0, 0x43a

    if-eq v8, v0, :cond_30

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_1
    return v9

    :pswitch_2
    return v9

    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_START_BIXBY_SERVICE_POWER_KEY:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsStartBixbyServicePowerKey:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v5

    invoke-direct {v1, v0, v7, v5, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->showBixbyToast(IZIZ)V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    if-nez v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {v1, v2, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startBixbyService(Landroid/view/KeyEvent;Z)V

    goto :goto_6

    :cond_12
    :goto_5
    const-string v0, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no action about bixby by power, BixbyComponent is not set. component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_6
    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Power key is blocked by MirrorLink"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrDocked()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrTetheredDocked()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrTetheredDocked()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrMounted()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Power Key is blocked by VR"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_17
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, v8}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActivated:Z

    if-eqz v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_7

    :cond_18
    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "systemKeyEventRequested REMOVE_PASS"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    return v0

    :cond_19
    :goto_7
    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "systemKeyEventRequested ADD_PASS"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :pswitch_4
    iget v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    if-ne v0, v5, :cond_1c

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_1a

    if-eqz v7, :cond_1a

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    const-wide/16 v12, 0xbb8

    invoke-virtual {v0, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_1a
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9

    :pswitch_5
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1c

    if-eqz v7, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVolumeKeyAnswerCallMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    const-string v10, "SamsungPhoneWindowManager"

    const-string v12, "VU; while ringing: Answer VoIPcall!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1b
    const-string v10, "SamsungPhoneWindowManager"

    const-string v12, "Unable to find IVoIPInterface interface"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v10, "SamsungPhoneWindowManager"

    const-string v12, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v10, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    nop

    :cond_1c
    :goto_9
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz v7, :cond_2f

    const/16 v0, 0x19

    if-eq v8, v0, :cond_1e

    if-ne v8, v11, :cond_1d

    goto :goto_a

    :cond_1d
    move/from16 v18, v8

    goto/16 :goto_13

    :cond_1e
    :goto_a
    iget-object v10, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalActionsDialogShowing()Z

    move-result v10

    if-eqz v10, :cond_20

    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Knox Custom: GlobalActions dialog showing; not doing Volume Key app switching"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v8, v11, :cond_1f

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalActionsDialogPowerOptionHidden()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Knox Custom: GlobalActions dialog showing; forward the key for Power option display"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1f
    return v9

    :cond_20
    const-string v10, "SamsungPhoneWindowManager"

    const-string v12, "Knox Custom: Volume Key app switching starting"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_2d

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_21

    move/from16 v18, v8

    goto/16 :goto_11

    :cond_21
    const-string v12, "SamsungPhoneWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Knox Custom: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " apps in list"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v13, "activity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    iget-object v13, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_23

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v13, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    if-eqz v16, :cond_22

    const-string v11, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Knox Custom: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " available"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    const-string v0, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Knox Custom: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " not available"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    nop

    const/16 v0, 0x19

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/16 v11, 0x18

    goto :goto_b

    :cond_23
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Knox Custom: no available apps"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    move/from16 v18, v8

    goto/16 :goto_12

    :cond_24
    const v0, 0x7fffffff

    invoke-virtual {v12, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Knox Custom: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " in foreground"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    move v11, v0

    move v0, v4

    :goto_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v0, v15, :cond_26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_25

    const-string v15, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    const-string v5, "Knox Custom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    move v11, v4

    goto :goto_f

    :cond_25
    move-object/from16 v17, v5

    :goto_f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto :goto_e

    :cond_26
    move-object/from16 v17, v5

    const/4 v0, -0x1

    if-ne v11, v0, :cond_27

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox Custom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found in list; use first"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object v0, v9

    const/16 v4, 0x19

    if-ne v8, v4, :cond_29

    if-lez v11, :cond_28

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_28
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_29
    const/4 v5, 0x1

    const/16 v4, 0x18

    if-ne v8, v4, :cond_2b

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v11, v4, :cond_2a

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_2a
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    :cond_2b
    :goto_10
    move-object v4, v0

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Knox Custom: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " already in foreground"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_2c
    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v8

    const-string v8, "Knox Custom: switching to "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2e

    const/high16 v0, 0x10400000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v8}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    :catch_1
    move-exception v0

    const-string v8, "SamsungPhoneWindowManager"

    const-string v15, "No activity to launch Knox Custom switching."

    invoke-static {v8, v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_2d
    move/from16 v18, v8

    :goto_11
    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Knox Custom: no apps in list"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_12
    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Knox Custom: Volume Key app switching done"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    return v4

    :cond_2f
    move/from16 v18, v8

    :goto_13
    const/4 v4, 0x1

    return v4

    :cond_30
    move/from16 v18, v8

    if-eqz v6, :cond_33

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_31

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_31
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_32

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "no wakeup(prox and inCall)"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x22

    return v0

    :cond_32
    const/4 v4, 0x1

    return v4

    :cond_33
    return v12

    :cond_34
    move/from16 v18, v8

    if-eqz v7, :cond_36

    const-string v0, "SamsungPhoneWindowManager"

    const-string v4, "Press KEYCODE_DOUBLE_TAP"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_36

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_off_memo"

    const/4 v5, -0x2

    const/4 v8, 0x0

    invoke-static {v0, v4, v8, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.app.notes"

    const-string v8, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct {v4, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "pen_intent_com"

    const-string/jumbo v5, "pen_doubletab"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v5, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_35

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v8

    invoke-direct {v5, v8}, Landroid/os/UserHandle;-><init>(I)V

    move-object v4, v5

    :cond_35
    iget-object v5, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_36
    const/4 v4, 0x2

    return v4

    :cond_37
    move/from16 v18, v8

    move v8, v4

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_39

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_14

    :cond_38
    goto :goto_15

    :cond_39
    :goto_14
    const/4 v8, 0x1

    :goto_15
    move v0, v8

    if-nez v0, :cond_3a

    if-nez v6, :cond_3a

    const/4 v4, 0x2

    return v4

    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    iget-boolean v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    if-nez v4, :cond_3c

    if-nez v7, :cond_3b

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    iget-wide v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    const-wide/16 v8, 0xaa

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    iget-object v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    :cond_3b
    iget-wide v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    iget-object v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    :cond_3c
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    :goto_16
    const/16 v4, 0x24

    return v4

    :cond_3d
    return v12

    :cond_3e
    move/from16 v18, v8

    const/4 v0, 0x1

    iget-boolean v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    if-eqz v4, :cond_3f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrHomeKeyBlocked()Z

    move-result v4

    if-eqz v4, :cond_3f

    const-string v4, "SamsungPhoneWindowManager"

    const-string v5, "Home Key is blocked by VR"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    return v4

    :cond_3f
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v4, :cond_41

    if-nez v6, :cond_41

    if-eqz v7, :cond_41

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_41

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_40

    const-string v4, "SamsungPhoneWindowManager"

    const-string v5, "interceptKeyBeforeQueueing: onForcePressedSleep"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    iget-object v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->onForcePressedSleep()V

    :cond_41
    if-nez v6, :cond_42

    if-eqz v7, :cond_42

    iget-object v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    :cond_42
    if-eqz v6, :cond_43

    iget-object v4, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v4

    if-eqz v4, :cond_43

    if-eqz v7, :cond_43

    const/16 v0, 0x12

    :cond_43
    const-string v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sec interceptKeyTq home s_result="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x426
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isAccessiblityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x50000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isAnyKeyMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anykey_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public isAodVisibleWithDozeMode()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MANAGE_AOD_POLICY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isBlockedPowerKey()Z
    .locals 4

    const-string v0, "com.sec.factory.app.ui.UIHardKey"

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Skip power key behavior by FactoryTest application"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public isCarModeBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCarModeBlockingSystemKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBlockingSystemKey:Z

    return v0
.end method

.method public isCarModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeEnabled:Z

    return v0
.end method

.method public isCarModeNotSupportBixby()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeNotSupportBixby:Z

    return v0
.end method

.method public isCarrierLocked()Z
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isCoverOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public isDirectAccessEnabled(Z)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VZW_SETUP_WIZARD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVzwSetupWizardRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v2, "block to trigger accessiblity when Verizon Setup Wizard Running"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDirectAccessEnabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isDomesticOtaStart()Z
    .locals 2

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDoubleTapLaunchEnabled(ZLandroid/view/KeyEvent;)Z
    .locals 5

    const-string/jumbo v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    return v1

    :cond_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VZW_SETUP_WIZARD:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVzwSetupRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "home double tap is blocked while Verizon Setup Wizard Running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_7

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    goto :goto_2

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    :cond_7
    :goto_2
    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    if-eq v3, v2, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    if-eqz v3, :cond_9

    move v1, v2

    nop

    :cond_9
    return v1
.end method

.method public isDozeDream()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_3

    const-string v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptKeyTi dozeMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v2

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "RemoteException when checking if dreaming"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method

.method public isDualLcdFolderType(Landroid/content/Context;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledLGTPolicy()Z
    .locals 4

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDomesticOtaStart()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "18"

    const-string/jumbo v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "missing_phone_lock"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public isFlipTypeCoverClosed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportCover:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isForceHideByViewCover()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isGameToolsOverlayVisibleLw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsOverlayWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsOverlayWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isGameToolsVisibleLw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGearVrDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    return v0
.end method

.method public isGearVrMounted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrMounted:Z

    return v0
.end method

.method public isGearVrSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->hasHmtFeature()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGearVrTetheredDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrTetheredDocked:Z

    return v0
.end method

.method public isInputEventForDexModeTi(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eq p1, v2, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInteractionControlEnabled(I)Z
    .locals 5

    nop

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDirectAccessEnabled:Z

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    if-lt p1, v0, :cond_3

    const/16 v0, 0x12

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_keyboard_block"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    return v1

    :cond_3
    packed-switch p1, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlEnabled:Z

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_power_button"

    invoke-static {v0, v4, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlEnabled:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_volume_button"

    invoke-static {v0, v4, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v3

    :goto_5
    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlEnabled:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInteractionControlTurnedOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlTurnedOn:Z

    return v0
.end method

.method public isKeyCombinationTriggered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCombinationManager;->isKeyCombinationTriggered()Z

    move-result v0

    return v0
.end method

.method public isLockTaskModeEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMetaKeyEventRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested()Z

    move-result v0

    return v0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method isMobileKeyboardEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMobileKeyboardEnabled:Z

    return v0
.end method

.method public isNavBarHideSettingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarHideSettingEnabled:Z

    return v0
.end method

.method public isNavigationBarVisibleLw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOneHandOpEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOneHandOpTriggeredByHomeKey()Z
    .locals 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOneTouchReportEnabled()Z
    .locals 14

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIFTH_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "go.police.report"

    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_0
    const-string v6, "go.police.report"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    const-string v6, "com.android.vending"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_1

    return v1

    :cond_1
    nop

    const-string v6, "content://go.police.provider.report"

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v8, "content://go.police.provider.report"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "customer_agreement"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    if-ne v11, v10, :cond_2

    move v1, v11

    nop

    :cond_2
    move v4, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    goto :goto_2

    :goto_0
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    return v4

    :catch_1
    move-exception v6

    return v1
.end method

.method isPreloadInstallComplete()Z
    .locals 4

    const-string/jumbo v0, "persist.sys.storage_preload"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreloadInstallComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isReducedAnimationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReducedAnimationEnabled:Z

    return v0
.end method

.method isRequestedToApplyAodPolicy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRequestedToApplyAodPolicy:Z

    return v0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const-string/jumbo v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v3

    move v5, v2

    move v2, v4

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/pm/PersonaManagerService;->isKnoxWindowExist(III)Z

    move-result v6

    move v5, v6

    const-string v6, "SamsungPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "knoxMultiWindowExist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3, v6, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "SamsungPhoneWindowManager"

    const-string v7, "KnoxMultiwindowExist. isScreenCaptureEnabled() returns false"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception v6

    const-string v7, "SamsungPhoneWindowManager"

    const-string v8, "getting informations for Knox : failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_2
    move-exception v6

    :cond_1
    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v5

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SamsungPhoneWindowManager"

    const-string v5, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v4

    :cond_4
    return v0
.end method

.method public isStatusBarVisibleLw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TPHONE_RELAX_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "skt_phone20_relax_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public isTripleTapHomeLaunchEnabled()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VZW_SETUP_WIZARD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVzwSetupWizardRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v2, "block to trigger accessiblity when Verizon Setup Wizard Running"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpTriggeredByHomeKey()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDirectAccessEnabled(Z)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public isVSVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->isVSVisible()Z

    move-result v0

    return v0
.end method

.method isVoIPRinging()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_0
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Unable to find IVoIPInterface interface"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public isVolumeKeyAnswerCallMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volumekey_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public keyguardGoingAwayWithWakeAndUnlock()V
    .locals 4

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "WakeAndUnlock triggered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->cancelWakeAndUnlockPendingAction()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public launchDoubleTap(I)V
    .locals 14

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch double tap, doubleTapLaunchBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    if-eq v0, v1, :cond_2

    :cond_1
    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doubleTapLaunchBehavior is false, keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Device is not provisioned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchSVoice()V

    goto/16 :goto_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableDoubleTapLaunch:Z

    if-eqz v0, :cond_e

    const-string v0, "SamsungPhoneWindowManager"

    const-string v2, "launch double tap"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    nop

    :cond_6
    move v0, v2

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Camera disabled by DPM policy"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    const-string v2, "isSecure"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_9
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add cleartask flag by policy. isShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isSecureLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->requestWaitingForOccluding()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    goto :goto_2

    :catch_0
    move-exception v1

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    nop

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    goto :goto_3

    :cond_c
    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not starting activity because user setup is in progress, doubleTapLaunchIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Unable to start camera activity"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "No activity to launch double tap"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    nop

    :goto_4
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_d
    goto :goto_5

    :cond_e
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Device is not available double tap"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public launchHomeForDesktopMode()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZI)V

    return-void
.end method

.method public launchSFinderIfPossible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$1700(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchSVoice()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableSVoice:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "launch svoice"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    const-string v3, "isSecure"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    const-string v3, "AUTO_LISTEN"

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSVoiceIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "No activity to launch svoice."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_2
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Not available svoice."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x960

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8df

    if-ne v2, v3, :cond_2

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v3

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p8, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p5, Landroid/graphics/Rect;->left:I

    iput v2, p4, Landroid/graphics/Rect;->left:I

    iput v2, p3, Landroid/graphics/Rect;->left:I

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p5, Landroid/graphics/Rect;->top:I

    iput v2, p4, Landroid/graphics/Rect;->top:I

    iput v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Rect;->right:I

    iput v2, p4, Landroid/graphics/Rect;->right:I

    iput v2, p3, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    iput v2, p4, Landroid/graphics/Rect;->bottom:I

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xa2a

    if-ne v2, v3, :cond_6

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p7, Landroid/graphics/Rect;->left:I

    iput v2, p6, Landroid/graphics/Rect;->left:I

    iput v2, p5, Landroid/graphics/Rect;->left:I

    iput v2, p4, Landroid/graphics/Rect;->left:I

    iput v2, p3, Landroid/graphics/Rect;->left:I

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p7, Landroid/graphics/Rect;->top:I

    iput v2, p6, Landroid/graphics/Rect;->top:I

    iput v2, p5, Landroid/graphics/Rect;->top:I

    iput v2, p4, Landroid/graphics/Rect;->top:I

    iput v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p7, Landroid/graphics/Rect;->right:I

    iput v2, p6, Landroid/graphics/Rect;->right:I

    iput v2, p5, Landroid/graphics/Rect;->right:I

    iput v2, p4, Landroid/graphics/Rect;->right:I

    iput v2, p3, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p7, Landroid/graphics/Rect;->bottom:I

    iput v2, p6, Landroid/graphics/Rect;->bottom:I

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    iput v2, p4, Landroid/graphics/Rect;->bottom:I

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMobileKeyboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_5

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p4, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iget v3, p5, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    iget v3, p6, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    iget v3, p7, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, p7, Landroid/graphics/Rect;->bottom:I

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p7, Landroid/graphics/Rect;->bottom:I

    iput v2, p6, Landroid/graphics/Rect;->bottom:I

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public needSensorRunningLp()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocked OrientationListener.enable by ScreenOffByProximity, Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyBeforeQuickAccess(IFF)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v2, :cond_6

    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceTouchScreenNotYetOn:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    const/16 v3, 0xd

    if-ne p1, v3, :cond_0

    move v4, v5

    nop

    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->onForceReleasedSleep(Z)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_home_force_pressed"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const-string v2, "info"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "location"

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput p2, v6, v4

    aput p3, v6, v5

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceTouchScreenNotYetOn:Z

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceTouchScreenNotYetOn:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->onForceReleasedSleep(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->onForceReleased(II)Z

    move-result v0

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :pswitch_5
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "notifyBeforeQuickAccess: Screen not yet on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceTouchScreenNotYetOn:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v3, 0xc376

    const/4 v4, -0x1

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_FORCE:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v3, v4, v5}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->onForcePressedSleep()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->onForcePressed(II)Z

    move-result v0

    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.spay.quickpay"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    nop

    :cond_6
    :goto_0
    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyBeforeQuickAccess: info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public notifyCpFolderTypeChangeIfNeeded(Landroid/content/Context;)V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNotifyCPFolderType:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->boostWakeUp()V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-ne p3, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->changeLidState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    const-string v3, "flipOpen"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flip Folder open = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , broadcasted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    if-eqz v0, :cond_5

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    :goto_0
    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder open/close soundPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V

    :cond_5
    if-nez p3, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    const/4 v0, 0x0

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    const/4 v4, 0x0

    if-ne v3, v2, :cond_8

    if-eqz p3, :cond_7

    move v2, v4

    goto :goto_1

    :cond_7
    const/16 v2, 0x1f4

    :goto_1
    move v0, v2

    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$19;

    invoke-direct {v3, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$19;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    int-to-long v5, v0

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    if-ne v2, v1, :cond_9

    if-nez p3, :cond_9

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDomesticOtaStart()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnabledLGTPolicy()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isPreloadInstallComplete()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    :cond_9
    if-nez p3, :cond_a

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/4 v7, 0x5

    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_b
    return v1
.end method

.method public notifyMobileKeyboardCoverChanged(ZZ)V
    .locals 8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_DisableNfcHwKeypad"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Mobile Keyboard is disabled by SemCscFeature."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    xor-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_keyboard"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$13;

    invoke-direct {v3, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$13;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActivated:Z

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMobileKeyboardEnabled:Z

    if-eq v2, v0, :cond_9

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMobileKeyboardCoverChanged isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMobileKeyboardEnabled:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMobileKeyboardEnabled:Z

    xor-int/2addr v1, v3

    const-string/jumbo v3, "mobile_keyboard"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/policy/MultiPhoneWindowManager;->setMultiWindowEnabled(ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMobileKeyboardEnabled:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x1050190

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x1050193

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setNavBarHeightForRotationDefault(III)V

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyMobileKeyboardCoverChanged: navigation bar changed to default height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$14;

    invoke-direct {v2, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$14;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v4, p3

    move v5, v4

    const/4 v0, 0x1

    iget-object v6, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    sget-boolean v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newPenState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mPenState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    if-ne v5, v7, :cond_1

    return-void

    :cond_1
    iget v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v7, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "spen_feedback_sound"

    const/4 v10, -0x2

    const/4 v11, 0x0

    invoke-static {v7, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_3

    const/4 v0, 0x0

    :cond_3
    move v7, v0

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "playSound="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " screenOn="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v5, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "pen_detachment_notification"

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    if-eqz v9, :cond_5

    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v12

    :goto_0
    move-object v13, v0

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-nez v0, :cond_6

    if-eqz v9, :cond_6

    array-length v0, v13

    if-le v0, v15, :cond_6

    :try_start_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v14, v15, v11}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    aget-object v8, v13, v11

    invoke-virtual {v0, v8, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertSoundId:I

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    aget-object v8, v13, v15

    invoke-virtual {v0, v8, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenDetachSoundId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "SamsungPhoneWindowManager"

    const-string v15, "cannot load pen sound"

    invoke-static {v8, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v12, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    :cond_6
    :goto_1
    const/4 v0, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v12, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "action_memo_on_off_screen"

    invoke-static {v12, v15, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_7

    const/4 v0, 0x1

    new-instance v10, Landroid/content/ComponentName;

    const-string v12, "com.samsung.android.snote"

    const-string v15, "com.samsung.android.snote.control.ui.quickmemo.service.InstantMemo_Service"

    invoke-direct {v10, v12, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    iget-object v12, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v15, "screen_off_memo"

    invoke-static {v12, v15, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    new-instance v10, Landroid/content/ComponentName;

    const-string v12, "com.samsung.android.app.notes"

    const-string v15, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct {v10, v12, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_8
    :goto_2
    iget-object v10, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v10

    if-ne v10, v14, :cond_9

    const/4 v0, 0x0

    :cond_9
    move v10, v0

    const/4 v12, 0x4

    if-eqz v4, :cond_b

    if-eqz v7, :cond_a

    if-eqz v9, :cond_a

    :try_start_1
    array-length v0, v13

    const/4 v14, 0x1

    if-le v0, v14, :cond_a

    iget v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertSoundId:I

    invoke-direct {v1, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playPenSound(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_a
    :goto_3
    nop

    :goto_4
    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v14, 0xc36d

    sget-object v15, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    const/4 v11, -0x1

    invoke-static {v14, v11, v15}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_8

    :cond_b
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v10, :cond_e

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15, v12}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->isInternalDisplayOff()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v11, 0x0

    invoke-virtual {v0, v14, v15, v11}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_5

    :cond_d
    if-nez v10, :cond_e

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15, v12}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_e
    :goto_5
    if-eqz v7, :cond_f

    if-eqz v9, :cond_f

    :try_start_2
    array-length v0, v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v14, 0x1

    if-le v0, v14, :cond_10

    :try_start_3
    iget v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenDetachSoundId:I

    invoke-direct {v1, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playPenSound(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v14, 0x1

    :goto_6
    goto :goto_7

    :cond_f
    const/4 v14, 0x1

    :cond_10
    :goto_7
    iget-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v11, 0xc369

    sget-object v15, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    const/4 v14, -0x1

    invoke-static {v11, v14, v15}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_11
    :goto_8
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const/high16 v11, 0x1000000

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v11, "penInsert"

    invoke-virtual {v0, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v11, "isScreenOn"

    invoke-virtual {v0, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v11, "isKeyguardLocked"

    iget-object v14, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v14}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v14

    invoke-virtual {v0, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v11, "isBoot"

    const-wide/16 v14, 0x0

    cmp-long v16, p1, v14

    if-nez v16, :cond_12

    const/4 v12, 0x1

    goto :goto_9

    :cond_12
    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pen = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , broadcasted."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz v10, :cond_16

    cmp-long v0, p1, v14

    if-eqz v0, :cond_16

    if-nez v4, :cond_16

    const-string/jumbo v0, "pen_intent_com"

    const-string/jumbo v11, "pen_detach"

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v11, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_14

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v11

    :cond_14
    iget-object v11, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v8, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v11

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_ULTRA_POWER_SAVING_MODE:Z

    if-eqz v12, :cond_16

    if-nez v11, :cond_16

    if-eqz v6, :cond_15

    iget-object v12, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v2, 0x0

    invoke-virtual {v12, v14, v15, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_a

    :cond_15
    iget-object v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v3, 0x4

    invoke-virtual {v2, v14, v15, v3}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_16
    :goto_a
    iget-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "spengestureservice"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v4}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setSpenInsertionState(Z)V

    :cond_17
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGestureNavBarHeight:I

    return-void
.end method

.method public onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    return-void
.end method

.method public onLockTaskModeChangedLw(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateGestureNavBar()V

    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->registerGearVrStateListener()V

    return-void
.end method

.method public performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v4, 0x0

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_EMERGENCY_MODE:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_ULTRA_POWER_SAVING_MODE:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_BATTERY_CONVERSING_MODE:Z

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_mode"

    invoke-static {v5, v6, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    move v4, v3

    :cond_4
    const/4 v3, -0x1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v5

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    const-string v6, "SamsungPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "f.b. a="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " eme="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " ksno = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_7

    if-nez v0, :cond_6

    if-nez v4, :cond_6

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "haptic disabled by policy"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    sget-boolean v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_8

    if-eqz p1, :cond_8

    const-string v6, "SamsungPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "haptic feedback for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v6

    if-eqz v6, :cond_a

    sparse-switch p2, :sswitch_data_0

    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p2, v3, v6}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return v2

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v6, 0xc378

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v6, v3, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return v2

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v6, 0xc377

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v6, v3, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return v2

    :sswitch_2
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v6, 0xc376

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v6, v3, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return v2

    :sswitch_3
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v6, 0xc36b

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v6, v3, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return v2

    :sswitch_4
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v6, 0xc36a

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v6, v3, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return v2

    :sswitch_5
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v6, 0xc369

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v6, v3, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return v2

    :cond_9
    return v1

    :cond_a
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_DC_MOTOR_HAPTIC_BY_SYSTEM_UI:Z

    if-eqz v6, :cond_b

    const-string v1, "SamsungPhoneWindowManager"

    const-string v3, "haptic generated by SystemUI"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b
    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eq p2, v7, :cond_c

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    return v1

    :pswitch_0
    const/16 v1, 0x5dc

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    return v2

    :pswitch_2
    const/16 v1, 0xfa

    goto :goto_3

    :pswitch_3
    const/16 v1, 0x1f4

    goto :goto_3

    :pswitch_4
    const/16 v1, 0x64

    goto :goto_3

    :pswitch_5
    const/16 v1, 0x32

    goto :goto_3

    :pswitch_6
    const/16 v1, 0x32

    goto :goto_3

    :cond_c
    :pswitch_7
    const/16 v1, 0x32

    nop

    :goto_3
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x3 -> :sswitch_4
        0xc36a -> :sswitch_4
        0xc36b -> :sswitch_3
        0xc376 -> :sswitch_2
        0xc377 -> :sswitch_1
        0xc378 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc369
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc370
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xc36a

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasQwertyKeyboard:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "gpio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrDocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_3
    nop

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x1b -> :sswitch_1
        0x52 -> :sswitch_2
        0x54 -> :sswitch_0
        0xbb -> :sswitch_2
        0xcf -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x430 -> :sswitch_1
        0x431 -> :sswitch_1
    .end sparse-switch
.end method

.method public powerMultiPressAction(I)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xc9

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FIFTH_TAP_POWER_LAUNCH_ONE_TOUCH_REPORT:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callOneTouchReport()V

    goto :goto_1

    :pswitch_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_TAP_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->triggerPanicCall()V

    goto :goto_0

    :pswitch_2
    nop

    invoke-virtual {p0, v2, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(ZLandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Launch camera by power key double tap"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiTapKeyPolicy:Lcom/android/server/policy/MultiTapKeyManager;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MultiTapKeyManager;->handleDoubleTapLaunch(I)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    :pswitch_3
    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "SOS Message mode toggle"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_4
    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "Screen Curtain mode toggle."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(ZLandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public powerPress(Landroid/view/KeyEvent;Z)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyCombinationPolicy:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/KeyCombinationManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IncallBehavior="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " interactive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mBeganFromNonInteractive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "silenceRinger"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v2, :cond_1

    const-string v2, "VCPS"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isFlipTypeCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const-string v2, "SamsungPhoneWindowManager"

    const-string v4, "hangupCall"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v2, :cond_5

    const-string v2, "VCPE"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    if-eqz p2, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isFlipTypeCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "hangupVoIPCall"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    :cond_9
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintTriggered:Z

    if-eqz v1, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x833

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8de

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsOverlayWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "SamsungPhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x7

    return v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_3
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.spay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.rajaampat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungPayHandlerWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SMART_EDGE_ZONE:Z

    if-eqz v0, :cond_6

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OneHandOpPolicyManager;->prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x97e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method registerRecevier()V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->registerSystemUIReceiver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.permission.PALM_MOTION"

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.samsung.android.capture.QuickPanelCapture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.capture.DesktopCapture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.permission.CAPTURE"

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.samsung.ssrm.RESOLUTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OneHandOpPolicyManager;->removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsOverlayWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolsOverlayWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SMART_EDGE_ZONE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungPayHandlerWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_4

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungPayHandlerWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_4
    return-void
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/SystemKeyManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method requestToApplyAodPolicy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRequestedToApplyAodPolicy:Z

    return-void
.end method

.method public requestTransientBars(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    :cond_1
    return-void
.end method

.method public restartOneHandOpService()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$10;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public restoreForceUserActivityTimeout(ZLcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 5

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez p1, :cond_0

    iget-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v3, 0x146a

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_0
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMobileKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public screenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->screenTurnedOff()V

    return-void
.end method

.method public selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eq p2, v5, :cond_3

    if-ne p2, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_a

    :cond_2
    const v0, 0x10a002e

    return v0

    :cond_3
    :goto_0
    const v0, 0x10a002f

    return v0

    :pswitch_1
    if-eq p2, v5, :cond_6

    if-ne p2, v4, :cond_4

    goto :goto_1

    :cond_4
    if-eq p2, v2, :cond_5

    if-ne p2, v3, :cond_a

    :cond_5
    const v0, 0x10a0033

    return v0

    :cond_6
    :goto_1
    const v0, 0x10a0034

    return v0

    :pswitch_2
    if-eq p2, v5, :cond_9

    if-ne p2, v4, :cond_7

    goto :goto_2

    :cond_7
    if-eq p2, v2, :cond_8

    if-ne p2, v3, :cond_a

    :cond_8
    const v0, 0x10a0031

    return v0

    :cond_9
    :goto_2
    const v0, 0x10a0032

    return v0

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_f

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x10000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v3

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isForceHideByViewCover()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    if-nez v0, :cond_e

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    goto :goto_7

    :cond_e
    :goto_6
    return v1

    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v2, :cond_11

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastClearCoverState:Z

    if-nez v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastClearCoverState:Z

    return v1

    :cond_11
    :goto_7
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendBroadcastForMHSFactoryTest(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "sendBroadcastForMHSFactoryTest() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .locals 3

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.safetyassurance.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.safetyassurance"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isFlipTypeCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "CoverManager threw RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method setAppOpsPermissionIfNeeded(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAppOpsPermissionIfNeeded code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " p_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/AppOpsManager;->semSetMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured for AppOpsManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportCover:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedViewCover()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->disableHideSViewCoverOnce(Z)V

    :cond_2
    return v1
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/TspStateManager;->setDeadzoneHole(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method setInitialDefaultDisplaySize(IIIIII)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInitialDefaultDisplaySize: width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", density="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", initWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", initHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", initDensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMobileKeyboardEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x1050176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    const v1, 0x105018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p5, :cond_0

    if-eq p5, p2, :cond_0

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    int-to-float v2, v2

    int-to-float v3, p2

    int-to-float v4, p5

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    int-to-float v2, v1

    int-to-float v3, p2

    int-to-float v4, p5

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :cond_0
    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setNavBarHeightForRotationDefault(III)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInitialDisplaySize: MobileKeyboardHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " NavBarHeightForMobileKeyboard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v1, 0x105036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mStandAloneTaskBarHeight:I

    const v1, 0x1050030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v2, p1, p2, p5, v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->notifyInitialDisplaySizeForAspectRatio(IIII)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarForceTouchPolicy:Lcom/android/server/policy/NavBarForceTouchPolicyManager;

    invoke-virtual {v1, p1, p2, p4, p5}, Lcom/android/server/policy/NavBarForceTouchPolicyManager;->setInitialDisplaySize(IIII)V

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_MANAGER:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v1, p4, p5, p1, p2}, Lcom/android/server/policy/TspStateManager;->setInitialDisplaySize(IIII)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    goto :goto_0

    :cond_4
    const/high16 v1, 0x43200000    # 160.0f

    :goto_0
    const v2, 0x1050042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, p3

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    return-void
.end method

.method public setLetterBox(IIII)V
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/TspStateManager;->setLetterBox(IIII)V

    :cond_0
    return-void
.end method

.method public setNavBarHidePolicy(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavBarHidePolicy:Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/NavBarHidePolicyManager;->setPolicy(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setRotationLw(I)V
    .locals 5

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRotationLw: rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "PWM_ROTATION"

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "sRotationBooster.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->sRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "HINT_PWM_ROTATION.acquire is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SMART_EDGE_ZONE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager;->setPortrait(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public setSafeModeReason(IIIIILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz v0, :cond_5

    if-lez p1, :cond_0

    const-string v0, "KEYCODE_MENU"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    const-string v0, "KEYCODE_S"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    const-string v0, "KEYCODE_DPAD_CENTER"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    const-string v0, "TRACKBALL_BTN_MOUSE"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-lez p5, :cond_4

    const-string v0, "KEYCODE_VOLUME_DOWN"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROPERTY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method public setUserRotationMode(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setUserRotationUpdateCompleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserRotationUpdateCompleted:Z

    return-void
.end method

.method public setWakeUpReasonFingerprint()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintAllowedForUser(I)Z

    move-result v0

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWakeUpReasonFingerprint unlockingAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isTriggered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintTriggered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintTriggered:Z

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->cancelWakeUpReasonFingerprintPendingAction()V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpReasonFingerprintRunning:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startDirectAccessService()V
    .locals 3

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "startDirectAccessService() is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->DIRECT_ACCESS_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public startDockOrHome()V
    .locals 2

    const-string v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "startDockOrHome"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->boostHome(Z)V

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHomeBroadcast()V

    return-void
.end method

.method public startedWakingUp(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setWakeUpReasonFingerprint()V

    :cond_0
    return-void
.end method

.method public systemBooted()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "kioskmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Blocked hw keys cache is being refreshed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Exception while getting kiosk mode service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/MultiPhoneWindowManager;->mIsSmartPopUpServiceBind:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPackageInSmartPopupView:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/MultiPhoneWindowManager;->mPackageInSmartPopupView:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MultiPhoneWindowManager;->bindSmartPopupView()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->registerDesktopModeManager(Landroid/content/Context;)V

    return-void
.end method

.method takeScreenshot(II)V
    .locals 2

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->takeScreenshot(Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    return-void
.end method

.method public takeScreenshot(IZ)V
    .locals 3

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeScreenshot homeKeyTriggered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->shouldShowScreenshotHelpGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.screenshot.ScreenshotHelpGuideActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setShowScreenshotHelpGuide()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "No activity to show screenshot help dialog."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "Do not excute screenshot because key concept is changed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->takeScreenshot(Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    return-void
.end method

.method public takeScreenshot(Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenCaptureEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "can not takescreenshot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "takeScreenshot event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getShotType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sweepDirection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getSweepDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " screenshotDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getScreenshotDisplay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " screenshotOrigin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getScreenshotOrigin()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mapSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v4

    const-string v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenshot: current active user is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, v6

    :cond_5
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, v6

    :cond_6
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_7

    const-string v0, "SamsungPhoneWindowManager"

    const-string v3, "ConnectedScreenshotService is over 3, so do not take screenshot."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;->getScreenshotDisplay()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.desktopsystemui"

    const-string v6, "com.samsung.desktopsystemui.screenshot.TakeScreenshotService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "takeScreenshot : start desktopsystemui."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_8
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "takeScreenshot : systemui."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;

    invoke-direct {v4, p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForScreenshotEffect;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    const-string v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenshot is taken for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v4, v0, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v0, p0, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method toggleOneHandOpByHomeKey()Z
    .locals 3

    const-string v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleOneHandOpByHomeKey() enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpTriggeredByHomeKey()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpTriggeredByHomeKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "CocktailBarService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getCocktailBarWindowType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 p1, p1, -0x11

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    and-int/lit8 p1, p1, -0x11

    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isCustomAspectRatioWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeBarSizeOfTopWindow:I

    if-eqz v0, :cond_4

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_4
    and-int/lit8 p1, p1, -0x11

    :cond_5
    :goto_0
    return p1
.end method

.method public updateSettings()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "any_screen_enabled"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I

    if-eq v5, v2, :cond_1

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I

    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Z)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpPolicy:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-virtual {v5}, Lcom/android/server/policy/OneHandOpPolicyManager;->stopService()V

    :cond_1
    :goto_0
    const-string/jumbo v5, "one_handed_op_wakeup_type"

    const/4 v6, 0x1

    invoke-static {v0, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I

    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "SamsungPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSettings(), mOneHandOpEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpEnabled:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mOneHandOpTriggeredType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOneHandOpTriggeredType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mBootCompleted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    const-string v5, "double_tab_launch_component"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    array-length v8, v7

    if-lt v8, v5, :cond_3

    new-instance v8, Landroid/content/ComponentName;

    aget-object v9, v7, v4

    aget-object v10, v7, v6

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iput-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchComponentName:Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAvailableDoubleTapLaunch:Z

    :cond_3
    const-string v7, "double_tab_launch"

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "settings changed : new doubleTapLaunchBehavior="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " old doubleTapLaunchBehavior="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    if-eq v8, v7, :cond_4

    iput v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    :cond_4
    const/4 v7, 0x0

    const-string v8, "lcd_curtain"

    invoke-static {v0, v8, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v6, :cond_5

    const-string v8, "accessibility_enabled"

    invoke-static {v0, v8, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v6, :cond_5

    move v8, v6

    goto :goto_1

    :cond_5
    move v8, v4

    :goto_1
    move v7, v8

    const/4 v8, 0x3

    if-eqz v7, :cond_6

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v10, 0x65

    iput v10, v9, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    iput v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    iget v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    if-ne v9, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v9, 0x67

    iput v9, v8, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    :cond_7
    :goto_2
    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "navigation_bar_gesture_while_hidden"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    move v8, v6

    goto :goto_3

    :cond_8
    move v8, v4

    :goto_3
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "navigation_bar_gesture_hint"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_9

    move v9, v6

    goto :goto_4

    :cond_9
    move v9, v4

    :goto_4
    iget-boolean v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGestureNavBarEnabled:Z

    if-ne v10, v8, :cond_b

    iget-boolean v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGestureHintEnabled:Z

    if-eq v10, v9, :cond_a

    goto :goto_5

    :cond_a
    move v10, v4

    goto :goto_6

    :cond_b
    :goto_5
    move v10, v6

    :goto_6
    if-eqz v10, :cond_c

    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGestureNavBarEnabled:Z

    iput-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGestureHintEnabled:Z

    const-string v11, "SamsungPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateSettings: mGestureNavBarEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", mGestureHintEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9}, Lcom/android/server/policy/PolicyControl;->setGestureNavBarAndHintEnabled(ZZ)V

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$Ml-b_mFGtswh5h-Bcw7Gr6bpusk;

    invoke-direct {v12, p0}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$Ml-b_mFGtswh5h-Bcw7Gr6bpusk;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    const-string/jumbo v8, "mobile_keyboard"

    invoke-static {v0, v8, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_d

    move v8, v6

    goto :goto_7

    :cond_d
    move v8, v4

    :goto_7
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$OVgHLXF0oxbRsEpvN6sn8vCsbX8;

    invoke-direct {v10, p0, v8}, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$OVgHLXF0oxbRsEpvN6sn8vCsbX8;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    nop

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "direct_access"

    invoke-static {v8, v9, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_e

    move v8, v6

    goto :goto_8

    :cond_e
    move v8, v4

    :goto_8
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDirectAccessEnabled:Z

    nop

    const-string v8, "access_control_use"

    invoke-static {v0, v8, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_f

    move v8, v6

    goto :goto_9

    :cond_f
    move v8, v4

    :goto_9
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlTurnedOn:Z

    nop

    const-string v8, "access_control_enabled"

    invoke-static {v0, v8, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_10

    move v8, v6

    goto :goto_a

    :cond_10
    move v8, v4

    :goto_a
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsInteractionControlEnabled:Z

    nop

    const-string/jumbo v8, "send_emergency_message"

    invoke-static {v0, v8, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_11

    move v8, v6

    goto :goto_b

    :cond_11
    move v8, v4

    :goto_b
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    const-string v8, "car_mode_global_navi_bar_position"

    invoke-static {v0, v8, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    if-eq v8, v9, :cond_12

    iput v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    const-string v5, "car_mode_on"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_13

    move v5, v6

    goto :goto_c

    :cond_13
    move v5, v4

    :goto_c
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeEnabled:Z

    const-string v5, "car_mode_blocking_system_key"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_14

    move v5, v6

    goto :goto_d

    :cond_14
    move v5, v4

    :goto_d
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBlockingSystemKey:Z

    const-string v5, "car_mode_not_support_bixby"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_15

    move v5, v6

    goto :goto_e

    :cond_15
    move v5, v4

    :goto_e
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeNotSupportBixby:Z

    const-string/jumbo v5, "sidesync_source_presentation"

    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_16

    move v5, v6

    goto :goto_f

    :cond_16
    move v5, v4

    :goto_f
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActivated:Z

    nop

    const-string/jumbo v5, "pen_attach_detach_vibration"

    invoke-static {v0, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_17

    move v5, v6

    goto :goto_10

    :cond_17
    move v5, v4

    :goto_10
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderTypeFeature:I

    if-eqz v5, :cond_19

    nop

    const-string v5, "folder_sounds_enabled"

    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_18

    move v5, v6

    goto :goto_11

    :cond_18
    move v5, v4

    :goto_11
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    const-string v5, "folder_open_sound"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    const-string v5, "folder_close_sound"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    :cond_19
    nop

    const-string/jumbo v5, "reduce_animations"

    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v6

    goto :goto_12

    :cond_1a
    move v5, v4

    :goto_12
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReducedAnimationEnabled:Z

    nop

    const-string v5, "easy_mode_switch"

    invoke-static {v0, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_1b

    move v5, v6

    goto :goto_13

    :cond_1b
    move v5, v4

    :goto_13
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    const-string v8, "floating_noti_package_list"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/policy/MultiPhoneWindowManager;->mPackageInSmartPopupView:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/server/policy/MultiPhoneWindowManager;->mIsSmartPopUpServiceBind:Z

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/MultiPhoneWindowManager;->mPackageInSmartPopupView:Ljava/lang/String;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/MultiPhoneWindowManager;->mPackageInSmartPopupView:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/MultiPhoneWindowManager;->bindSmartPopupView()V

    goto :goto_14

    :cond_1c
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/server/policy/MultiPhoneWindowManager;->mIsSmartPopUpServiceBind:Z

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/MultiPhoneWindowManager;->mPackageInSmartPopupView:Ljava/lang/String;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/MultiPhoneWindowManager;->mPackageInSmartPopupView:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiWindowPolicy:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/MultiPhoneWindowManager;->unBindSmartPopupView()V

    :cond_1d
    :goto_14
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_START_BIXBY_SERVICE_POWER_KEY:Z

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "power_key_mapping"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "2"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iput-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsStartBixbyServicePowerKey:Z

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v6, v8, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    goto :goto_15

    :cond_1e
    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsStartBixbyServicePowerKey:Z

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v4, v8, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    :cond_1f
    :goto_15
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SBIKE_MODE_PRESENT:Z

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "isBikeMode"

    invoke-static {v5, v8, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_20

    move v5, v6

    goto :goto_16

    :cond_20
    move v5, v4

    :goto_16
    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSBikeModeOn:Z

    :cond_21
    const-string v5, "display_outdoor_mode"

    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_22

    move v5, v6

    goto :goto_17

    :cond_22
    move v5, v4

    :goto_17
    iget-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOutdoorModeSetting:Z

    if-eq v8, v5, :cond_23

    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOutdoorModeSetting:Z

    :cond_23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADAPTIVE_BRIGHTNESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "adaptive_brightness"

    invoke-static {v0, v1, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_24

    move v4, v6

    nop

    :cond_24
    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAdaptiveBrightnessValue:Z

    :cond_25
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateSystemBarsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGameToolsVisibleLw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShouldKeepTransientNavBarShowing:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShouldKeepTransientNavBarShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShouldKeepTransientNavBarShowing:Z

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShouldHideTransientNavBar:Z

    const/high16 v0, 0x20000000

    or-int/2addr p4, v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsMobileKeyboardEnabled:Z

    if-eqz v0, :cond_2

    and-int/lit8 p4, p4, -0x3

    :cond_2
    return p4
.end method

.method public updateSystemUiVisibilityLw()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getFocusedWindow(I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->updateTopActivity(Landroid/content/ComponentName;)V

    return-void
.end method

.method public updateTouchableArea(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTouchableAreaChanged:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTouchableAreaChanged:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set_touchable_area,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTouchableArea ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "The file is not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "SamsungPhoneWindowManager"

    const-string v4, "The file is not writable"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    :goto_3
    nop

    :goto_4
    return-void

    :cond_5
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_6
    :goto_5
    goto :goto_6

    :catchall_0
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_4
    move-exception v2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    :goto_6
    return-void

    :goto_7
    nop

    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_8

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_7
    :goto_8
    throw v2
.end method

.method public updateTspInputMethodPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspStateManager;->updateInputMethodPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTspWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTspStatePolicy:Lcom/android/server/policy/TspStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public useFocusedWindowOverNavColorWinLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnrestrictedScreenWidth:I

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public useFocusedWindowOverStatusColorWinLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

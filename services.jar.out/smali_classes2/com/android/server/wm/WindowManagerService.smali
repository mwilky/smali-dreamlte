.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$LocalService;,
        Lcom/android/server/wm/WindowManagerService$MousePositionTracker;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$AppFreezeListener;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;,
        Lcom/android/server/wm/WindowManagerService$SettingsObserver;,
        Lcom/android/server/wm/WindowManagerService$RotationWatcher;,
        Lcom/android/server/wm/WindowManagerService$UpdateAnimationScaleMode;
    }
.end annotation


# static fields
.field private static final ALWAYS_KEEP_CURRENT:Z = true

.field private static final ANIMATION_DURATION_SCALE:I = 0x2

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEBUG_DISPLAY_FROZEN_TIMEOUT_DURATION:I = 0x2710

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field private static final DENSITY_OVERRIDE:Ljava/lang/String; = "ro.config.density_override"

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final LAYER_OFFSET_THUMBNAIL:I = 0x4

.field static final LAYOUT_REPEAT_THRESHOLD:I = 0x4

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field static final PROFILE_ORIENTATION:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field static final SEAMLESS_ROTATION_TIMEOUT_DURATION:I = 0x7d0

.field private static final SIZE_OVERRIDE:Ljava/lang/String; = "ro.config.size_override"

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TRANSITION_ANIMATION_SCALE:I = 0x1

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_REMOVING_FOCUS:I = 0x4

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WINDOWS_FREEZING_SCREENS_ACTIVE:I = 0x1

.field static final WINDOWS_FREEZING_SCREENS_NONE:I = 0x0

.field static final WINDOWS_FREEZING_SCREENS_TIMEOUT:I = 0x2

.field private static final WINDOW_ANIMATION_SCALE:I = 0x0

.field static final WINDOW_FREEZE_TIMEOUT_DURATION:I = 0x7d0

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final WINDOW_REPLACEMENT_TIMEOUT_DURATION:I = 0x7d0

.field static final localLOGV:Z

.field private static sInstance:Lcom/android/server/wm/WindowManagerService;

.field static sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;


# instance fields
.field mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field final mActivityManager:Landroid/app/IActivityManager;

.field final mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field final mAllowAnimationsInLowPowerMode:Z

.field final mAllowBootMessages:Z

.field mAllowTheaterModeWakeFromLayout:Z

.field final mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAnimationHandler:Landroid/os/Handler;

.field final mAnimationTransferMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/AnimationAdapter;",
            "Lcom/android/server/wm/SurfaceAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationsDisabled:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field private mAnimatorDurationScaleSetting:F

.field final mAppFreezeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$AppFreezeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mAppOps:Landroid/app/AppOpsManager;

.field final mAppTransition:Lcom/android/server/wm/AppTransition;

.field mAppsFreezingScreen:I

.field mBootAnimationStopped:Z

.field final mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

.field mClientFreezingScreen:Z

.field final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentProfileIds:[I

.field mCurrentUserId:I

.field mDeferredRotationPauseCount:I

.field final mDestroyPreservedSurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDisableTransitionAnimation:Z

.field mDisplayEnabled:Z

.field mDisplayFreezeTime:J

.field mDisplayFrozen:Z

.field mDisplayFrozenReasonForDebug:Ljava/lang/String;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mDisplayReady:Z

.field final mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

.field mDockedStackCreateBounds:Landroid/graphics/Rect;

.field mDockedStackCreateMode:I

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field final mDrawLockTimeoutMillis:J

.field mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

.field private mEnterAnimId:I

.field private mEventDispatchingEnabled:Z

.field private mExitAnimId:I

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mForceDisplayEnabled:Z

.field final mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForceResizableTasks:Z

.field public final mFreeformController:Lcom/android/server/wm/FreeformWindowController;

.field private mFrozenDisplayId:I

.field mGearVrDocked:Z

.field mGearVrEntered:Z

.field mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

.field mGearVrPersistentVrMode:Z

.field final mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

.field final mHasPermanentDpad:Z

.field private mHasWideColorGamutSupport:Z

.field final mHaveInputMethods:Z

.field mHideCutoutForGearVr:Z

.field private mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHoldingDexScreenOn:Lcom/android/server/wm/Session;

.field private mHoldingDexScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHoldingScreenOn:Lcom/android/server/wm/Session;

.field private mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field mInMouseStylusMode:Z

.field mInTouchMode:Z

.field final mInputManager:Lcom/android/server/input/InputManagerService;

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodOrderedTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field mIsTouchDevice:Z

.field private final mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

.field mKeyguardGoingAway:Z

.field mKeyguardOrAodShowingOnDefaultDisplay:Z

.field mLastANRState:Ljava/lang/String;

.field mLastDispatchedSystemUiVisibility:I

.field mLastDisplayFreezeDuration:I

.field mLastFinishedFreezeSource:Ljava/lang/Object;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field private mLastWakeLockHoldingDexScreenWindow:Lcom/android/server/wm/WindowState;

.field mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

.field private mLastWakeLockObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

.field mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mMaxUiWidth:I

.field mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

.field public final mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

.field public final mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

.field final mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mOnlyCore:Z

.field final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field private mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRoot:Lcom/android/server/wm/RootWindowContainer;

.field private mRotatingSeamlessly:Z

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$RotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field public final mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

.field private final mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field final mScreenRect:Landroid/graphics/Rect;

.field private mSeamlessRotationCount:I

.field final mSessions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

.field mShowAlertWindowNotifications:Z

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSupportsPictureInPicture:Z

.field final mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

.field mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

.field mSwitchingUser:Z

.field mSystemBooted:Z

.field mSystemDecorLayer:I

.field final mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

.field final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field private mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

.field final mTmpFloats:[F

.field final mTmpRect:Landroid/graphics/Rect;

.field final mTmpRect2:Landroid/graphics/Rect;

.field final mTmpRect3:Landroid/graphics/Rect;

.field final mTmpRectF:Landroid/graphics/RectF;

.field final mTmpTransform:Landroid/graphics/Matrix;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

.field mTransactionSequence:I

.field private mTransitionAnimationScaleSetting:F

.field final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mVr2dDisplayId:I

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForDrawnCallback:Ljava/lang/Runnable;

.field final mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

.field mWatermark:Lcom/android/server/wm/Watermark;

.field private final mWinAddedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowAnimationScaleSetting:F

.field final mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Lcom/android/server/wm/WindowHashMap;

.field final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

.field final mWindowReplacementTimeouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowTracing:Lcom/android/server/wm/WindowTracing;

.field mWindowsChanged:Z

.field mWindowsFreezingScreen:I

.field private pService:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    new-instance v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, v11, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    new-instance v0, Lcom/android/server/wm/WindowManagerService$1;

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    const/4 v13, 0x0

    new-array v0, v13, [I

    iput-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/wm/WindowHashMap;

    invoke-direct {v1}, Lcom/android/server/wm/WindowHashMap;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/android/server/wm/WindowState;

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    const/4 v14, 0x0

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    iput v13, v11, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-direct {v1}, Lcom/android/server/wm/WallpaperVisibilityListeners;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    iput v13, v11, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozenReasonForDebug:Ljava/lang/String;

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v11, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    iput v13, v11, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    iput v13, v11, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    iput v13, v11, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iput v13, v11, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    iput v13, v11, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-direct {v1, v11}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v1, v11}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mInputMethodOrderedTarget:Lcom/android/server/wm/WindowState;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iput v13, v11, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v11, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    iput v1, v11, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    iput v1, v11, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingDexScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$WindowManagerService$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v1}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v1, v11}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v1, v11}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-direct {v1, v14}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>(Lcom/android/server/wm/WindowManagerService$1;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->pService:Lcom/android/server/pm/PersonaManagerService;

    const/4 v1, 0x5

    invoke-static {v11, v1}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    iput-object v12, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move/from16 v15, p3

    iput-boolean v15, v11, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    move/from16 v10, p4

    iput-boolean v10, v11, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    move/from16 v9, p5

    iput-boolean v9, v11, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v11, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v11, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v11, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    iput-boolean v13, v11, Lcom/android/server/wm/WindowManagerService;->mInMouseStylusMode:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v11, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v11, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v11, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v11, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    move-object/from16 v8, p2

    iput-object v8, v11, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/wm/DisplaySettings;

    invoke-direct {v1}, Lcom/android/server/wm/DisplaySettings;-><init>()V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplaySettings;->readSettingsLocked()V

    move-object/from16 v7, p6

    iput-object v7, v11, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowAnimator;

    invoke-direct {v1, v11}, Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v1, Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v11, v2}, Lcom/android/server/wm/SamsungWindowManagerService;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/SamsungWindowManagerService;->init()V

    new-instance v1, Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {v1, v11}, Lcom/android/server/wm/RootWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-direct {v1, v11}, Lcom/android/server/wm/WindowSurfacePlacer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v1, v11}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/WindowTracing;->createDefaultAndStartLooper(Landroid/content/Context;)Lcom/android/server/wm/WindowTracing;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v2, "WindowManager"

    const/16 v3, -0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v2, v1}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    goto :goto_0

    :cond_0
    move-object v2, v14

    :goto_0
    iput-object v2, v11, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    goto :goto_1

    :cond_1
    iput-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    :goto_1
    const-string v1, "display"

    invoke-virtual {v12, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const-string/jumbo v1, "power"

    invoke-virtual {v12, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_2

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v2, v11}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, v11, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    :cond_2
    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "SCREEN_FROZEN"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v13}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v0, Lcom/android/server/wm/AppTransition;

    invoke-direct {v0, v12, v11}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    new-instance v4, Landroid/animation/AnimationHandler;

    invoke-direct {v4}, Landroid/animation/AnimationHandler;-><init>()V

    new-instance v6, Lcom/android/server/wm/BoundsAnimationController;

    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object v0, v6

    move-object v1, v12

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v6, v11, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v0, "appops"

    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v11, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowManagerService$6;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v14, v0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2, v14, v0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2, v14, v0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v11, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/wm/WindowManagerService$7;

    invoke-direct {v6, v11}, Lcom/android/server/wm/WindowManagerService$7;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v5, v12

    move-object v7, v2

    move-object v8, v1

    move-object v9, v3

    move-object/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_animation_scale"

    iget v5, v11, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v11, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v11, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    iget v5, v11, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-direct {v11, v2}, Lcom/android/server/wm/WindowManagerService;->setAnimatorDurationScale(F)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v11, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v3

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-direct {v3, v11}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    iget-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v5, 0x2000000a

    const-string v6, "WindowManager"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v13}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v5, 0x2001000a

    const-string v6, "WindowManager(DexScreen)"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mHoldingDexScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mHoldingDexScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v13}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v3, Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v3}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>()V

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x112001d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v11, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    new-instance v3, Lcom/android/server/wm/TaskPositioningController;

    iget-object v7, v11, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v8, v11, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v9, v11, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v5, v11, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v5, v3

    move-object v6, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/TaskPositioningController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/wm/InputMonitor;Landroid/app/IActivityManager;Landroid/os/Looper;)V

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    new-instance v3, Lcom/android/server/wm/DragDropController;

    iget-object v5, v11, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v11, v5}, Lcom/android/server/wm/DragDropController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v5, Lcom/android/server/wm/WindowManagerService$LocalService;

    invoke-direct {v5, v11, v14}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V

    invoke-static {v3, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v3, Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {v3, v11}, Lcom/android/server/wm/MultiWindowManagerInternal;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformWindowController()Lcom/android/server/wm/FreeformWindowController;

    move-result-object v3

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mFreeformController:Lcom/android/server/wm/FreeformWindowController;

    new-instance v3, Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-direct {v3, v11}, Lcom/android/server/wm/MultiDisplayManagerInternal;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, v11, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/WindowManagerService;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/WindowManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/WindowManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/WindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateAppOpsState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;Landroid/util/ArraySet;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/WindowManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/WindowManagerService;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/WindowManagerService;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return p1
.end method

.method static boostPriorityForLockedSection()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->boost()V

    return-void
.end method

.method private checkBootAnimationCompleteLocked()Z
    .locals 4

    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "checkBootAnimationComplete: Waiting for anim complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v1, "checkBootAnimationComplete: Animation complete!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private computeNewConfigurationLocked(I)Landroid/content/res/Configuration;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method private createSurfaceControl(Landroid/view/Surface;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I
    .locals 4

    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_0

    or-int/lit8 p2, p2, 0x4

    :cond_0
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "createSurfaceControl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p4, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    nop

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowSurfaceController;->getSurface(Landroid/view/Surface;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  OUT SURFACE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": copied"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create surface control for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_2
    :goto_0
    return p2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .locals 2

    int-to-float v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private displayReady(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskTapPointerEventListener;->onDisplayReady(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->onDisplayReady()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WindowManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v8, v0

    move v0, v1

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_4

    aget-object v2, p3, v0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v8, v3

    goto/16 :goto_1

    :cond_2
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "Window manager dump options:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  cmd may be one of:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    l[astanr]: last ANR information"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    p[policy]: policy state"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    a[animator]: animator state"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    s[essions]: active sessions"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    surfaces: active surfaces (debugging enabled only)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    d[isplays]: active display contents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    t[okens]: token list"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    w[indows]: window list"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Window hex object identifier, or"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    \"all\" for all windows, or"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    \"visible-apps\" for the visible app windows."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  -a: include all available server state."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    goto/16 :goto_0

    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;Z)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_5
    array-length v1, p3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1c

    aget-object v1, p3, v0

    const/4 v3, 0x1

    add-int/lit8 v9, v0, 0x1

    const-string v0, "lastanr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_c

    :cond_6
    const-string/jumbo v0, "policy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_b

    :cond_7
    const-string v0, "animator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_a

    :cond_8
    const-string/jumbo v0, "sessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_9

    :cond_9
    const-string v0, "displays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v0, "tokens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_7

    :cond_b
    const-string/jumbo v0, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_6

    :cond_c
    const-string v0, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_5

    :cond_d
    const-string v0, "containers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v4, " "

    invoke-virtual {v2, p2, v4}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerService$AqE2WZrGnYzh1Hsw9rr8IrAEdTY;

    invoke-direct {v4, p2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$AqE2WZrGnYzh1Hsw9rr8IrAEdTY;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_e
    const-string/jumbo v0, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    const-string/jumbo v0, "multidisplay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "md"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_10
    move-object v2, p0

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    move v6, v9

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad window command, or no windows match: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    return-void

    :cond_12
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v2, p2, p3, v9}, Lcom/android/server/wm/MultiDisplayManagerInternal;->dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_13
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2, p2, p3, v9}, Lcom/android/server/wm/SamsungWindowManagerService;->dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4
    move-exception v2

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_15
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5
    move-exception v2

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_16
    :goto_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_17
    :goto_8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_7
    move-exception v2

    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_18
    :goto_9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_8
    move-exception v2

    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_19
    :goto_a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_9
    move-exception v2

    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_1a
    :goto_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_a
    move-exception v2

    :try_start_15
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_1b
    :goto_c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_b
    move-exception v0

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v8, :cond_1d

    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v8, :cond_1e

    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v8, :cond_1f

    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v8, :cond_20

    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    invoke-direct {p0, p2, v8}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v8, :cond_21

    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21
    if-eqz v8, :cond_22

    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v8, :cond_23

    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23
    invoke-direct {p0, p2, v8}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v8, :cond_24

    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    invoke-direct {p0, p2, v8, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_c
    move-exception v2

    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    if-lt v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p2, :cond_3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v1, :cond_2

    return v0

    :cond_2
    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not in UID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    return v2
.end method

.method private dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "WINDOW MANAGER ANIMATOR STATE (dumpsys window animator)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const-string v1, "    "

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowAnimator;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method private dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "WINDOW MANAGER LAST ANR (dumpsys window lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    .locals 3

    const-string v0, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    const-string v2, "  Session "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    .locals 1

    const-string v0, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpTokens(Ljava/io/PrintWriter;Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "  mOpeningApps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "  mClosingApps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "apps"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string/jumbo v1, "visible"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "visible-apps"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_1
    :goto_0
    const-string v1, "apps"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v3, "visible"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$WindowManagerService$BFlKCXakaED5j-9cdbfdK5Lfsfw;

    invoke-direct {v6, v3, v1, v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$BFlKCXakaED5j-9cdbfdK5Lfsfw;-><init>(ZZLjava/util/ArrayList;)V

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    return v1

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p5, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    return-void
.end method

.method private dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Hiding System Alert Windows:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    const-string v4, "  #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Remove pending for:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2
    if-ltz v0, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_2

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const-string v4, "  Remove #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Windows force removing:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_4
    if-ltz v0, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    const-string v4, "  Removing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Windows waiting to destroy their surface:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_6
    if-ltz v0, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_8

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_8
    const-string v4, "  Destroy #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_9

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_a
    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Windows losing focus:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_8
    if-ltz v0, :cond_f

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_c

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_c
    const-string v4, "  Losing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_d

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_e
    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Windows waiting to resize:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_a
    if-ltz v0, :cond_13

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_10

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_10
    const-string v4, "  Resizing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_11

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_11
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_12
    :goto_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_c
    if-ltz v0, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const-string v3, "  Waiting #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  mGlobalConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mHasPermanentDpad="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCurrentFocus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_15

    const-string v0, "  mLastFocus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_15
    const-string v0, "  mFocusedApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    const-string v0, "  mInputMethodTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodOrderedTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_17

    const-string v0, "  mInputMethodOrderedTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodOrderedTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_17
    const-string v0, "  mInTouchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mLastDisplayFreezeDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v0, :cond_18

    const-string v0, " due to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  mLastWakeLockHoldingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mLastWakeLockObscuringWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz p2, :cond_1f

    const-string v0, "  mSystemDecorLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mScreenRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v0, :cond_19

    const-string v0, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1a

    const-string v0, "  mInputMethodWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "  mSystemBooted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDisplayEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V

    const-string v0, "  mTransactionSequence="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mDisplayFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " windows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " client="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " apps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " waitingForConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const-string v1, "  mRotation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mAltOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAltOrientation()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mLastWindowForcedOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastWindowForcedOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mLastOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "  mDeferredRotationPauseCount="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "  Animation settings: disabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " window="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, " transition="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, " animator="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    const-string v1, "  mSkipAppTransitionAnimation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mLayoutToAnim:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AppTransition;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v1, :cond_1b

    const-string v1, "  mRecentsAnimationController="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RecentsAnimationController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingDexScreenWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1c

    const-string v1, "  mLastWakeLockHoldingDexScreenWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingDexScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1d

    const-string v1, "  mLastWakeLockObscuringDexScreenWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozenReasonForDebug:Ljava/lang/String;

    if-eqz v1, :cond_1e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    const-string v2, "  mDisplayFrozenReasonForDebug="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozenReasonForDebug:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mFrozenDisplayId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " freezingTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->dump(Ljava/io/PrintWriter;)V

    :cond_1f
    return-void
.end method

.method static excludeWindowTypeFromTapOutTask(I)Z
    .locals 1

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x960

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa38

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private findTargetSmartClipWindow(FFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    .locals 4

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;

    invoke-direct {v3, v0, v1, p3}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;-><init>(IILandroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    return-object v3
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$r4TV5nJBkjzvUCeyV6sY2bt-bEA;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$r4TV5nJBkjzvUCeyV6sY2bt-bEA;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static fixScale(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 p0, 0x41a00000    # 20.0f

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private getForcedDisplayDensityForUserLocked(I)I
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ro.config.density_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method static getInstance()Lcom/android/server/wm/WindowManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private getPersonaService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->pService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->pService:Lcom/android/server/pm/PersonaManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->pService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .locals 2

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    :cond_0
    if-nez p2, :cond_1

    return p3

    :cond_1
    int-to-float v0, p3

    invoke-static {p2, v0, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private initPolicy()V
    .locals 4

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isFloatingWindowOpsLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSystemSecure()Z
    .locals 3

    const-string v0, "1"

    const-string/jumbo v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string/jumbo v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    return-object v0
.end method

.method static synthetic lambda$doDump$7(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$dumpWindows$6(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic lambda$findTargetSmartClipWindow$9(IILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    return v4

    :cond_2
    const/16 v3, 0xa29

    if-eq v2, v3, :cond_a

    const/16 v3, 0xa28

    if-ne v2, v3, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, p3, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_4
    iget v3, p3, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_5
    iget v3, p3, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_6
    :goto_0
    and-int/lit8 v3, v1, 0x28

    if-nez v3, :cond_7

    move v3, v5

    goto :goto_1

    :cond_7
    move v3, v4

    :goto_1
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-eq v7, p2, :cond_9

    return v5

    :cond_9
    return v4

    :cond_a
    :goto_2
    return v4
.end method

.method static synthetic lambda$findWindow$4(ILcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$hasFloatingWindow$10(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$main$0(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V
    .locals 8

    new-instance v7, Lcom/android/server/wm/WindowManagerService;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V

    sput-object v7, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static synthetic lambda$notifyKeyguardFlagsChanged$1(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static synthetic lambda$requestAssistScreenshot$2(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static synthetic lambda$stopFreezingDisplayLocked$5(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->setRotationInfoforAudioManager()V

    return-void
.end method

.method static synthetic lambda$updateNonSystemOverlayWindowsVisibilityIfNeeded$8(ZLcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    return-void
.end method

.method static synthetic lambda$viewServerListWindows$3(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static logWithStack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_0
    invoke-static {p0, p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 9

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private notifyFocusChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    move-object v1, v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private notifyWindowsChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    move-object v1, v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private performEnableScreen()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performEnableScreen: mDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mForceDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mShowingBootMessages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSystemBooted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mOnlyCore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->canDismissBootAnimation()Z

    move-result v1

    if-nez v1, :cond_3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->checkWaitingForWindows()Z

    move-result v1

    if-eqz v1, :cond_4

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_6

    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v1, "service.bootanim.exit"

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY_MANAGEMENT:Z

    if-eqz v1, :cond_5

    const-string v1, "WindowManager"

    const-string/jumbo v6, "request stop bootanim"

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v1

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY_MANAGEMENT:Z

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "WindowManager"

    const-string/jumbo v2, "performEnableScreen: Waiting for anim complete"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_9
    :try_start_5
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v6, "WindowManager"

    const-string v7, "******* TELLING SURFACE FLINGER WE ARE BOOTED!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface {v1, v4, v6, v7, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_6
    const-string v6, "WindowManager"

    const-string v7, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v1, 0x791f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY_MANAGEMENT:Z

    if-eqz v1, :cond_c

    :cond_b
    const-string v1, "WindowManager"

    const-string v2, "******************** ENABLING SCREEN!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v1, "WindowManager"

    const-string v2, "!@Boot: Enabling Screen!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->bootAnimationComplete()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->enableScreenAfterBoot()V

    invoke-direct {p0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_0
    return-void
.end method

.method private prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x12

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    return v3
.end method

.method private static queryWideColorGamutSupport()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->getService()Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/hardware/configstore/V1_0/OptionalBool;->value:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY_MANAGEMENT:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readForcedDisplayPropertiesLocked: d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sizeStr=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v1, "ro.config.size_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_5

    :try_start_0
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v2, :cond_3

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v5, v4, :cond_4

    :cond_3
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FORCED DISPLAY SIZE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v2

    :cond_5
    :goto_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v2

    if-eqz v2, :cond_6

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY_MANAGEMENT:Z

    if-eqz v3, :cond_6

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FORCED DISPLAY DENSITY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "dpi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->restoreSizeDensityIfNeededLocked(Lcom/android/server/wm/DisplayContent;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_DYNAMIC_RESOLUTION_CONTROL:Z

    if-eqz v3, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_scaling_force"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    const-string v3, "WindowManager"

    const-string v4, "FORCED DISPLAY SCALING DISABLED"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    :cond_9
    return-void
.end method

.method static resetPriorityAfterLockedSection()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->reset()V

    return-void
.end method

.method private setAnimatorDurationScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {p1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    return-void
.end method

.method private setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 0

    iput p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private setForcedDisplayScalingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 3

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using display scaling mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, "auto"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V
    .locals 3

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using new display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iput p2, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    iput p3, v0, Landroid/view/DisplayInfo;->overscanTop:I

    iput p4, v0, Landroid/view/DisplayInfo;->overscanRight:I

    iput p5, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v3, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/DisplaySettings;->setOverscanLocked(Ljava/lang/String;Ljava/lang/String;IIII)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplaySettings;->writeSettingsLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private setWindowOpaqueLocked(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    :cond_0
    return-void
.end method

.method private showStrictModeViolation(II)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->canShowStrictModeViolation(I)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v2, :cond_2

    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION showStrictModeViolation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wm/StrictModeFlash;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION showStrictModeViolation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v3, :cond_5

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION showStrictModeViolation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;ZZ)Z
    .locals 5

    const/4 v0, 0x2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x5

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    move p4, p3

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_2

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    if-ne v1, p1, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/SamsungWindowManagerService;->getClipBoardWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->setClipBoardWindowLocked(Lcom/android/server/wm/WindowState;)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    const-string v4, "adapterOwner-tryStartExitingAnimation"

    invoke-virtual {v1, p1, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->cancelSynchronizedImAnimationLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;)Z

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_7
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return p4
.end method

.method private updateAppOpsState()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->updateAppOpsState()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateCircularDisplayMaskIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v2, v3

    nop

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v2, v3, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4, v3}, Lcom/android/server/policy/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    const/4 v4, 0x0

    aget v4, v3, v4

    aget v2, v3, v2

    invoke-virtual {p0, v4, v2, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v2

    :cond_3
    :goto_0
    return-object v0
.end method

.method private updateRotationUnchecked(ZZ)V
    .locals 8

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRotationUnchecked: alwaysSendConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " forceRelayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "updateRotation"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    const-string/jumbo v6, "updateRotation: display"

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v6

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v6, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    const-string/jumbo v7, "updateRotation: performSurfacePlacement"

    invoke-static {v1, v2, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    move v5, v7

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move v0, v6

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    const-string/jumbo v6, "updateRotation: sendNewConfiguration"

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateStatusBarVisibilityLocked(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    xor-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    not-int v1, p1

    and-int/2addr v0, v1

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateSystemUiVisibility(II)V

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public IsSBikeModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->IsSBikeModeEnabled()Z

    move-result v0

    return v0
.end method

.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I
    .locals 57

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-object/from16 v12, p12

    const/4 v0, 0x1

    new-array v11, v0, [I

    iget-object v1, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v15, v11}, Lcom/android/server/policy/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I

    move-result v16

    if-eqz v16, :cond_0

    return v16

    :cond_0
    const/16 v17, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    iget v9, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v7, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v2, v13, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_51

    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_18

    move/from16 v3, p6

    :try_start_1
    invoke-virtual {v2, v15, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->redirectWindowVS(Landroid/view/WindowManager$LayoutParams;I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_16

    move v6, v2

    :try_start_2
    invoke-virtual {v13, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_15

    move-object v5, v2

    const/16 v18, -0x9

    if-nez v5, :cond_1

    :try_start_3
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window to a display that does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    :catchall_0
    move-exception v0

    :goto_0
    move/from16 v39, v6

    move-object/from16 v24, v7

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object v14, v12

    goto/16 :goto_1b

    :cond_1
    :try_start_4
    iget v2, v14, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v5, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_15

    if-nez v2, :cond_2

    :try_start_5
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, v14, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v2, v3, v6}, Landroid/hardware/display/DisplayManagerInternal;->isUidPresentOnDisplay(II)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window to a display for which the application does not have access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    :cond_2
    :try_start_6
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_15

    const/16 v19, -0x5

    if-eqz v2, :cond_3

    :try_start_7
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v4, p2

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    :catchall_1
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_0

    :cond_3
    move-object/from16 v4, p2

    const/16 v2, 0x3e8

    const/4 v8, 0x0

    const/4 v3, 0x0

    if-lt v9, v2, :cond_5

    const/16 v2, 0x7cf

    if-gt v9, v2, :cond_5

    :try_start_9
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v13, v8, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_4

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window with token that is not a window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_4
    :try_start_a
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_5

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_5

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_5
    move-object v2, v1

    const/16 v1, 0x7ee

    if-ne v9, v1, :cond_6

    :try_start_b
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "WindowManager"

    const-string v1, "Attempted to add private presentation window to a non-private display.  Aborting."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x8

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :cond_6
    const/16 v21, 0x0

    if-eqz v2, :cond_7

    move v1, v0

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    move/from16 v22, v1

    :try_start_c
    iget-object v1, v13, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_14

    if-eqz v22, :cond_8

    :try_start_d
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_2

    :cond_8
    :try_start_e
    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/server/wm/RootWindowContainer;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_14

    if-eqz v22, :cond_9

    :try_start_f
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_3

    :cond_9
    move v3, v9

    :goto_3
    const/16 v23, 0x0

    const/16 v8, 0x7ef

    move-object/from16 v28, v5

    const/16 v5, 0x7db

    const/16 v29, -0x1

    if-nez v1, :cond_14

    if-lt v3, v0, :cond_a

    const/16 v0, 0x63

    if-gt v3, v0, :cond_a

    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add application window with unknown token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_a
    if-ne v3, v5, :cond_b

    :try_start_10
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with unknown token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_b
    if-ne v3, v8, :cond_c

    :try_start_11
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add voice interaction window with unknown token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_c
    const/16 v0, 0x7dd

    if-ne v3, v0, :cond_d

    :try_start_12
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_d
    const/16 v8, 0x7e7

    if-ne v3, v8, :cond_e

    :try_start_13
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add Dream window with unknown token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_e
    const/16 v8, 0x7f3

    if-ne v3, v8, :cond_f

    :try_start_14
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add QS dialog window with unknown token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_f
    const/16 v8, 0x7f0

    if-ne v3, v8, :cond_10

    :try_start_15
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add Accessibility overlay window with unknown token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_10
    const/16 v8, 0x7d5

    if-ne v9, v8, :cond_11

    :try_start_16
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v13, v0, v10, v2}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add a toast window with unknown token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_11
    :try_start_17
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    if-eqz v0, :cond_12

    :try_start_18
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_4

    :cond_12
    :try_start_19
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    move/from16 v31, v3

    move-object v3, v0

    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v20, 0x100000

    and-int v0, v0, v20

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    :goto_5
    move/from16 v20, v8

    move v8, v0

    new-instance v0, Lcom/android/server/wm/WindowToken;

    const/16 v24, 0x0

    iget-boolean v5, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move-object/from16 v35, v1

    move-object v1, v0

    move-object/from16 v36, v2

    move-object v2, v13

    move v4, v9

    move/from16 v20, v5

    move-object/from16 v37, v28

    const/16 v12, 0x7db

    move/from16 v5, v24

    move/from16 v39, v6

    move-object/from16 v6, v37

    move-object/from16 v24, v7

    move/from16 v7, v20

    :try_start_1a
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V

    nop

    move-object v7, v0

    move-object/from16 v6, v21

    move/from16 v0, v31

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v36, v2

    move/from16 v39, v6

    move-object/from16 v24, v7

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object v14, v12

    move-object/from16 v1, v36

    goto/16 :goto_1b

    :cond_14
    move-object/from16 v35, v1

    move-object/from16 v36, v2

    move/from16 v31, v3

    move v12, v5

    move/from16 v39, v6

    move-object/from16 v24, v7

    move-object/from16 v37, v28

    move/from16 v0, v31

    const/4 v1, 0x1

    if-lt v0, v1, :cond_18

    const/16 v1, 0x63

    if-gt v0, v1, :cond_18

    move-object/from16 v7, v35

    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add window with non-application token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    monitor-exit v24
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_15
    :try_start_1b
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_16

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add window with exiting application token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    monitor-exit v24
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_16
    const/4 v2, 0x3

    if-ne v9, v2, :cond_17

    :try_start_1c
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_17

    const-string v2, "WindowManager"

    const-string v3, "Attempted to add starting window to token with already existing starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    :cond_17
    move-object v6, v1

    :goto_6
    move-object/from16 v28, v36

    const/16 v8, 0x7dd

    :goto_7
    const/16 v27, 0x0

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object/from16 v1, v36

    :goto_8
    move-object/from16 v14, p12

    goto/16 :goto_1b

    :cond_18
    move-object/from16 v7, v35

    if-ne v0, v12, :cond_1a

    :try_start_1d
    iget v1, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v12, :cond_19

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add input method window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_19
    move-object/from16 v25, v7

    move-object/from16 v28, v36

    const/16 v8, 0x7dd

    :goto_9
    const/16 v27, 0x0

    goto/16 :goto_a

    :cond_1a
    if-ne v0, v8, :cond_1b

    :try_start_1e
    iget v1, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v8, :cond_19

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add voice interaction window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_1b
    const/16 v8, 0x7dd

    if-ne v0, v8, :cond_1d

    :try_start_1f
    iget v1, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v8, :cond_1c

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_1c
    move-object/from16 v25, v7

    move-object/from16 v28, v36

    goto :goto_9

    :cond_1d
    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_1e

    :try_start_20
    iget v2, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_1c

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add Dream window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_1e
    const/16 v1, 0x7f0

    if-ne v0, v1, :cond_1f

    :try_start_21
    iget v2, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_1c

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add Accessibility overlay window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_1f
    const/16 v6, 0x7d5

    if-ne v9, v6, :cond_21

    :try_start_22
    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    move-object/from16 v5, v36

    :try_start_23
    invoke-direct {v13, v1, v10, v5}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v1

    move/from16 v23, v1

    if-eqz v23, :cond_20

    iget v1, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v6, :cond_20

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add a toast window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_20
    move-object/from16 v28, v5

    move-object/from16 v6, v21

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    move-object v1, v5

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    goto/16 :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v5, v36

    move-object v1, v5

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object/from16 v14, p12

    goto/16 :goto_1b

    :cond_21
    move-object/from16 v5, v36

    const/16 v1, 0x7f3

    if-ne v9, v1, :cond_23

    :try_start_24
    iget v2, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_22

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add QS dialog window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v29

    :cond_22
    move-object/from16 v28, v5

    move-object/from16 v25, v7

    goto/16 :goto_9

    :cond_23
    :try_start_25
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    if-eqz v1, :cond_24

    :try_start_26
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-null appWindowToken for system window of rootType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    new-instance v20, Lcom/android/server/wm/WindowToken;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/16 v25, 0x0

    iget-boolean v2, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    move-object/from16 v1, v20

    move/from16 v26, v2

    move-object v2, v13

    move-object/from16 v27, v4

    move v4, v9

    move-object/from16 v28, v5

    move/from16 v5, v25

    move-object/from16 v6, v37

    move-object/from16 v25, v7

    move/from16 v7, v26

    :try_start_27
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    move-object/from16 v1, v20

    move-object v7, v1

    move-object/from16 v6, v21

    goto :goto_b

    :catchall_7
    move-exception v0

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object/from16 v1, v28

    goto/16 :goto_8

    :catchall_8
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object/from16 v1, v28

    move-object/from16 v14, p12

    goto/16 :goto_1b

    :cond_24
    move-object/from16 v28, v5

    move-object/from16 v25, v7

    const/16 v27, 0x0

    :goto_a
    move-object/from16 v6, v21

    move-object/from16 v7, v25

    :goto_b
    :try_start_28
    new-instance v20, Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    aget v21, v11, v5

    iget v4, v14, Lcom/android/server/wm/Session;->mUid:I

    iget-boolean v3, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    move-object/from16 v1, v20

    move-object v2, v13

    move/from16 v25, v3

    move-object v3, v14

    move/from16 v26, v4

    move-object/from16 v4, p2

    move/from16 v40, v0

    move v0, v5

    move-object v5, v7

    move-object/from16 v41, v6

    move-object/from16 v6, v28

    move-object/from16 v42, v7

    move/from16 v7, v21

    move/from16 v8, p3

    move v14, v9

    move-object v9, v15

    move/from16 v43, v10

    move/from16 v10, p5

    move-object/from16 v21, v11

    move/from16 v11, v26

    move/from16 v44, v14

    move-object/from16 v14, p12

    move/from16 v12, v25

    :try_start_29
    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V

    move-object/from16 v1, v20

    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2, v1, v15}, Lcom/android/server/wm/SamsungWindowManagerService;->adjustConventionalModeIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    if-nez v2, :cond_25

    :try_start_2a
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding window client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that is dead, aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    monitor-exit v24
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_9
    move-exception v0

    move-object/from16 v1, v28

    move/from16 v6, v43

    move/from16 v52, v44

    goto/16 :goto_1b

    :cond_25
    :try_start_2b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    if-nez v2, :cond_26

    :try_start_2c
    const-string v0, "WindowManager"

    const-string v2, "Adding window to Display that has been removed."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    :cond_26
    :try_start_2d
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_c

    :cond_27
    move v2, v0

    :goto_c
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v1, v4, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V

    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v15}, Lcom/android/server/policy/WindowManagerPolicy;->checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->setShowToOwnerOnlyLocked(Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    :try_start_2e
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isForceHideByViewCover()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->mDisableHideSViewCoverOnce:Z

    if-nez v3, :cond_28

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/WindowToken;->mWillBeHideSViewCoverOnce:Z

    goto :goto_d

    :cond_28
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v0, v3, Lcom/android/server/wm/WindowToken;->mWillBeHideSViewCoverOnce:Z

    goto :goto_d

    :cond_29
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v0, v3, Lcom/android/server/wm/WindowToken;->mWillBeHideSViewCoverOnce:Z

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/WindowToken;->mDisableHideSViewCoverOnce:Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    :cond_2a
    :goto_d
    :try_start_2f
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v1, v15}, Lcom/android/server/policy/WindowManagerPolicy;->prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    move/from16 v16, v3

    if-eqz v16, :cond_2b

    :try_start_30
    monitor-exit v24
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    :cond_2b
    :try_start_31
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_LIMIT_WINDOW_COUNT:Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_11

    if-eqz v3, :cond_2c

    :try_start_32
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->checkWindowCountLocked(Lcom/android/server/wm/WindowState;)I

    move-result v3

    move/from16 v16, v3

    if-eqz v16, :cond_2c

    monitor-exit v24
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    :cond_2c
    if-eqz v14, :cond_2d

    :try_start_33
    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/2addr v3, v4

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_e

    :cond_2d
    move v3, v0

    :goto_e
    if-eqz v3, :cond_2e

    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_9

    :cond_2e
    move/from16 v4, v44

    const/16 v5, 0x7d5

    if-ne v4, v5, :cond_31

    :try_start_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_b

    move/from16 v6, v43

    :try_start_35
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->canAddToastWindowForUid(I)Z

    move-result v5

    if-nez v5, :cond_2f

    const-string v0, "WindowManager"

    const-string v5, "Adding more than one toast window for UID at a time."

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    :cond_2f
    if-nez v23, :cond_30

    :try_start_36
    iget v5, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_30

    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_30

    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v5, v6, :cond_32

    :cond_30
    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x34

    invoke-virtual {v7, v8, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v8, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    move/from16 v52, v4

    :goto_f
    move-object/from16 v1, v28

    goto/16 :goto_1b

    :catchall_b
    move-exception v0

    move/from16 v6, v43

    move/from16 v52, v4

    move-object/from16 v1, v28

    goto/16 :goto_1b

    :cond_31
    move/from16 v6, v43

    :cond_32
    :goto_10
    const/16 v16, 0x0

    :try_start_37
    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    if-nez v5, :cond_33

    :try_start_38
    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_a

    :cond_33
    :try_start_39
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v5
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_10

    if-eqz v5, :cond_34

    move-object/from16 v5, v37

    :try_start_3a
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_a

    goto :goto_11

    :cond_34
    move-object/from16 v5, v37

    :goto_11
    :try_start_3b
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_10

    const/16 v8, 0x7e3

    if-eq v7, v8, :cond_35

    :try_start_3c
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7db

    if-eq v7, v8, :cond_36

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dc

    if-eq v7, v9, :cond_36

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x960

    if-eq v7, v9, :cond_36

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_a

    const/16 v9, 0x44c

    if-ne v7, v9, :cond_37

    goto :goto_12

    :cond_35
    const/16 v8, 0x7db

    :cond_36
    :goto_12
    :try_start_3d
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mFocusExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->attach()V

    iget-object v7, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v7, v11, v1}, Lcom/android/server/wm/WindowHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->initAppOpsState()V

    iget-object v7, v13, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    iget-object v11, v13, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    move-object/from16 v12, v42

    invoke-virtual {v12}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v18
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_10

    move-object/from16 v45, v18

    const/4 v0, 0x3

    if-ne v4, v0, :cond_39

    move-object/from16 v0, v45

    if-eqz v0, :cond_38

    :try_start_3e
    iput-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    sget-boolean v18, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v18, :cond_38

    const-string v8, "WindowManager"

    move/from16 v46, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v47, v3

    const-string v3, "addWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " startingWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_a

    goto :goto_13

    :cond_38
    move/from16 v46, v2

    move/from16 v47, v3

    goto :goto_13

    :cond_39
    move/from16 v46, v2

    move/from16 v47, v3

    move-object/from16 v0, v45

    :goto_13
    const/4 v2, 0x1

    :try_start_3f
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_10

    const/16 v3, 0x7db

    if-ne v4, v3, :cond_3a

    const/4 v3, 0x1

    :try_start_40
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v13, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v2, 0x0

    goto :goto_14

    :cond_3a
    const/16 v3, 0x7dc

    if-ne v4, v3, :cond_3b

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    goto :goto_14

    :cond_3b
    const/16 v3, 0x960

    if-ne v4, v3, :cond_3c

    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->setClipBoardWindowLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v2, 0x0

    goto :goto_14

    :cond_3c
    const/16 v3, 0x7dd

    if-ne v4, v3, :cond_3d

    iget-object v3, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    iget v3, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_a

    goto :goto_14

    :cond_3d
    :try_start_41
    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_10

    const/high16 v8, 0x100000

    and-int/2addr v3, v8

    if-eqz v3, :cond_3e

    :try_start_42
    iget v3, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_a

    goto :goto_14

    :cond_3e
    :try_start_43
    iget-object v3, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WallpaperController;->isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v3
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_10

    if-eqz v3, :cond_3f

    :try_start_44
    iget v3, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_a

    :cond_3f
    :goto_14
    :try_start_45
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->applyAdjustForImeIfNeeded()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_10

    const/16 v3, 0x7f2

    if-ne v4, v3, :cond_40

    :try_start_46
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_d

    move/from16 v8, v39

    :try_start_47
    invoke-virtual {v3, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DockedStackDividerController;->setWindow(Lcom/android/server/wm/WindowState;)V

    goto :goto_16

    :catchall_c
    move-exception v0

    move/from16 v52, v4

    :goto_15
    move/from16 v39, v8

    goto/16 :goto_f

    :catchall_d
    move-exception v0

    move/from16 v8, v39

    move/from16 v52, v4

    move-object/from16 v1, v28

    goto/16 :goto_1b

    :cond_40
    move/from16 v8, v39

    :goto_16
    const/16 v3, 0xa2d

    if-ne v4, v3, :cond_41

    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/SnapWindowInternal;->setSnapGuideWindow(Lcom/android/server/wm/WindowState;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_c

    :cond_41
    :try_start_48
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v48, v0

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    iput-boolean v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_f

    move-object/from16 v0, v41

    if-eqz v0, :cond_42

    :try_start_49
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_42

    invoke-direct {v13, v0}, Lcom/android/server/wm/WindowManagerService;->prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v18

    if-nez v18, :cond_42

    invoke-direct {v13, v0}, Lcom/android/server/wm/WindowManagerService;->prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_c

    :cond_42
    move/from16 v49, v2

    :try_start_4a
    iget-object v2, v5, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v18
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_f

    move-object/from16 v50, v18

    move-object/from16 v51, v3

    move/from16 v52, v4

    move-object/from16 v3, v50

    :try_start_4b
    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_43

    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v53, v3

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    move-object/from16 v54, v4

    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    move-object/from16 v32, v54

    goto :goto_17

    :cond_43
    move-object/from16 v53, v3

    move-object/from16 v32, v27

    :goto_17
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v33, v2

    move-object/from16 v34, p7

    move-object/from16 v35, p8

    move-object/from16 v36, p9

    move-object/from16 v37, p10

    move-object/from16 v38, p11

    invoke-interface/range {v30 .. v38}, Lcom/android/server/policy/WindowManagerPolicy;->getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z

    move-result v3

    if-eqz v3, :cond_44

    or-int/lit8 v3, v16, 0x4

    move/from16 v16, v3

    :cond_44
    iget-boolean v3, v13, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_45

    or-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    :cond_45
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_46

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v3

    if-nez v3, :cond_47

    :cond_46
    or-int/lit8 v3, v16, 0x2

    move/from16 v16, v3

    :cond_47
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v4

    if-eqz v4, :cond_48

    move-object/from16 v55, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v13, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v18

    move/from16 v3, v18

    if-eqz v3, :cond_49

    const/4 v2, 0x0

    move/from16 v49, v2

    goto :goto_18

    :cond_48
    move-object/from16 v55, v2

    :cond_49
    :goto_18
    if-eqz v49, :cond_4a

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    :cond_4a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    if-eqz v3, :cond_4b

    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move/from16 v56, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_19

    :cond_4b
    move/from16 v56, v3

    :goto_19
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v2, :cond_4c

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_4d

    :cond_4c
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addWindow: New client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": window="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v13, v8}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x1

    move/from16 v17, v2

    :cond_4e
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mIsDexCompatEnabled:Z

    if-eqz v2, :cond_4f

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_4f

    const/high16 v2, 0x20000

    or-int v0, v16, v2

    move/from16 v16, v0

    :cond_4f
    monitor-exit v24
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move-wide v0, v9

    if-eqz v17, :cond_50

    invoke-virtual {v13, v8}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    :cond_50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :catchall_e
    move-exception v0

    goto/16 :goto_15

    :catchall_f
    move-exception v0

    move/from16 v52, v4

    move/from16 v39, v8

    move-object/from16 v1, v28

    goto/16 :goto_1b

    :catchall_10
    move-exception v0

    move/from16 v52, v4

    move/from16 v8, v39

    move-object/from16 v1, v28

    goto/16 :goto_1b

    :catchall_11
    move-exception v0

    move/from16 v8, v39

    move/from16 v6, v43

    move/from16 v52, v44

    move-object/from16 v1, v28

    goto/16 :goto_1b

    :catchall_12
    move-exception v0

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move/from16 v8, v39

    move-object/from16 v14, p12

    move-object/from16 v1, v28

    goto/16 :goto_1b

    :catchall_13
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move/from16 v8, v39

    move-object/from16 v14, p12

    move-object/from16 v1, v28

    goto :goto_1b

    :catchall_14
    move-exception v0

    move-object/from16 v28, v2

    move v8, v6

    move-object/from16 v24, v7

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object v14, v12

    move/from16 v39, v8

    move-object/from16 v1, v28

    goto :goto_1b

    :catchall_15
    move-exception v0

    move v8, v6

    move-object/from16 v24, v7

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object v14, v12

    move/from16 v39, v8

    goto :goto_1b

    :catchall_16
    move-exception v0

    goto :goto_1a

    :cond_51
    move/from16 v3, p6

    move-object/from16 v24, v7

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object v14, v12

    :try_start_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Display has not been initialialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_17

    :catchall_17
    move-exception v0

    move/from16 v39, v3

    goto :goto_1b

    :catchall_18
    move-exception v0

    move/from16 v3, p6

    :goto_1a
    move-object/from16 v24, v7

    move/from16 v52, v9

    move v6, v10

    move-object/from16 v21, v11

    move-object v14, v12

    move/from16 v39, v3

    :goto_1b
    :try_start_4d
    monitor-exit v24
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_1b
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public addWindowToken(Landroid/os/IBinder;II)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, p3

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "addWindowToken()"

    invoke-virtual {v13, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v12, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v15}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/RootWindowContainer;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWindowToken: Attempted to add binder token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for already created window token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    const/16 v1, 0x7dd

    move/from16 v11, p2

    if-ne v11, v1, :cond_1

    :try_start_1
    new-instance v1, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v2, v13

    move-object v3, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WallpaperWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V

    move-object v2, v12

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/android/server/wm/WindowToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x1

    const/4 v1, 0x1

    move-object v7, v13

    move-object v8, v14

    move v9, v11

    move-object v11, v5

    move-object v2, v12

    move v12, v1

    :try_start_2
    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v12

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/MagnificationSpec;)V

    return-void
.end method

.method canDispatchPointerEvents()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canStartRecentsAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cancelRecentsAnimationSynchronously(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationSynchronously(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public changeDisplayScale(FFFZLandroid/view/IInputFilter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SamsungWindowManagerService;->changeDisplayScale(FFFZLandroid/view/IInputFilter;)V

    return-void
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method checkDrawnWindowsLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for drawn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": removed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mHasSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " drawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getMultiWindowAnimationController()Lcom/android/server/wm/MultiWindowAnimationController;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiWindowAnimationController;->checkDrawnMultiWindowsLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window drawn win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getMultiWindowAnimationController()Lcom/android/server/wm/MultiWindowAnimationController;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowAnimationController;->isMultiWindowFrozenLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiWindowAnimationController;->applyAppAnimation(Lcom/android/server/wm/AppWindowToken;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborted waiting for drawn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    const-string v0, "WindowManager"

    const-string v1, "All windows drawn!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_7
    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method public checkSplitScreenMinimizedChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cleanupRecentsAnimation(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->cleanupAnimation(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearForcedDisplayDensityForUser(II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "clearForcedDisplayDensityForUser"

    const/4 v7, 0x0

    move v3, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v5, v0, :cond_0

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_density_forced"

    const-string v7, ""

    invoke-static {v5, v6, v7, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearForcedDisplaySize(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_size_forced"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearForcedDisplaySizeDensity(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->clearForcedDisplaySizeDensity(I)V

    return-void
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .locals 4

    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "clearWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v3, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->clearWindowContentFrameStats()Z

    move-result v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FRAME_STATS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method closeSurfaceTransaction(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "closeSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->traceStateLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogs(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public closeSystemDialogs(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogs(Ljava/lang/String;I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public computeNewConfiguration(I)Landroid/content/res/Configuration;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public containsDismissKeyguardWindow(Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public containsShowWhenLockedWindow(Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public continueSurfaceLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method createWatermarkInTransaction()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/setup.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v6, v5, v7, v4}, Lcom/android/server/wm/Watermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_1

    :cond_3
    :goto_2
    throw v3

    :catch_3
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public deferSurfaceLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public destroyInputConsumer(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method destroyPreservedSurfaceLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public detectSafeMode()Z
    .locals 15

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "safe_boot_disallowed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v1, 0x52

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v6, 0x201

    const/16 v7, 0x17

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v12

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const v6, 0x10004

    const/16 v7, 0x110

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/input/InputManagerService;->getScanCodeState(III)I

    move-result v13

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v6, 0x19

    invoke-virtual {v5, v4, v3, v6}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v3

    const/4 v4, 0x1

    if-gtz v0, :cond_3

    if-gtz v1, :cond_3

    if-gtz v12, :cond_3

    if-gtz v13, :cond_3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v14, v5

    :try_start_0
    const-string/jumbo v5, "persist.sys.safemode"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "ro.sys.safemode"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "ro.boot_recovery"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    const-string/jumbo v5, "ro.boot_recovery"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[3]"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    goto :goto_3

    :cond_5
    const-string v5, "emergency"

    const-string/jumbo v6, "persist.sys.emergency_reset"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "persist.sys.emergency_reset"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[4]"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    goto :goto_3

    :cond_6
    :goto_2
    const-string/jumbo v5, "persist.sys.safemode"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v6, "persist.sys.safemode"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v6, "ro.sys.safemode"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v7, "ro.sys.safemode"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    const-string/jumbo v4, "persist.sys.safemode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v4

    :goto_4
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    if-eqz v4, :cond_a

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAFE MODE ENABLED (menu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dpad="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " trackball="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " volumeDownState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " propertyForSafemode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ro.sys.safemode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "ro.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string v2, "WindowManager"

    const-string v4, "SAFE MODE not enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    invoke-interface {v2, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setSafeMode(Z)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v5, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move v6, v0

    move v7, v1

    move v8, v12

    move v9, v13

    move v10, v3

    invoke-interface/range {v5 .. v11}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setSafeModeReason(IIIIILjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v2
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "current mode is SecurityMode, ignore disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WindowManager"

    const-string/jumbo v1, "non-current profiles, ignore disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x1

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNonVrUi(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    xor-int/lit8 v1, p1, 0x1

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    if-ne v1, v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Session;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Session;->setShowingAlertWindowNotificationAllowed(Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "android.permission.CONTROL_KEYGUARD"

    const-string v1, "dismissKeyguard"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V
    .locals 7

    if-nez p3, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "dispatchSmartClipRemoteRequest : request is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1, p4}, Lcom/android/server/wm/WindowManagerService;->findTargetSmartClipWindow(FFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p3}, Landroid/view/IWindow;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSmartClipRemoteRequest : Failed to call IWindow.dispatchSmartClipRemoteRequest()! e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "WindowManager_SmartClip"

    const-string v2, "WindowManager_SmartClip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSmartClipRemoteRequest : Could not find the target window! x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WindowManager_SmartClip"

    const-string v3, "dispatchSmartClipRemoteRequest : Send empty response..."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "spengestureservice"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    :try_start_1
    new-instance v3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    iget v4, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iget v5, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "WindowManager_SmartClip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchSmartClipRemoteRequest : Failed to send the empty result! e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public displayReady()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->setMaxUiWidth(I)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public dontOverrideDisplayInfo(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Trying to register a non existent display."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableScreenAfterBoot: mDisplayEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mForceDisplayEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mShowingBootMessages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSystemBooted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x17

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemBooted()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->setDisplaySizeDensity()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public enableScreenIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableScreenIfNeededLocked: mDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mForceDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mShowingBootMessages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSystemBooted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public endProlongedAnimations()V
    .locals 0

    return-void
.end method

.method public executeAppTransition()V
    .locals 4

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "executeAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setReady()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$8;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishDrawingWindow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mDrawState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "null"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method finishSeamlessRotation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    return-void
.end method

.method public freezeRotation(I)V
    .locals 6

    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_2

    const/4 v1, 0x3

    if-gt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freezeRotation: mRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v5, 0x1

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-interface {v4, v5, v0}, Lcom/android/server/policy/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnimationScale(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0

    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0

    :pswitch_2
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getBaseDisplayDensity(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCameraLensCoverState()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    return v1
.end method

.method public getCurrentAnimatorScale()F
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCurrentImeTouchRegion()Landroid/graphics/Region;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getCurrentImeTouchRegion is restricted to VR services"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayRotation()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/DisplayWindowController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getDockedDividerInsetsLw()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentInsets()I

    move-result v0

    return v0
.end method

.method public getDockedStackSide()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDragLayerLocked()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getForcedInitialDisplayDensity(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getFrozenDisplayIdLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    return v0
.end method

.method getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInitialDisplayDensity(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method public getLidState()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v2
.end method

.method public getMainBuiltInDisplayDensity()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getNavBarHidePolicy(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNavBarPosition()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->getNavBarPosition()I

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPendingAppTransition()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/16 v5, 0x55

    const v6, 0x800053

    const/16 v7, 0x51

    if-ge v3, v4, :cond_0

    packed-switch v2, :pswitch_data_0

    monitor-exit v0

    goto :goto_0

    :pswitch_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    :pswitch_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :pswitch_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_0
    packed-switch v2, :pswitch_data_1

    :try_start_3
    monitor-exit v0

    goto :goto_1

    :pswitch_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :pswitch_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    :pswitch_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :goto_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method public getRotationLockOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getRotationLockOrientation()I

    move-result v0

    return v0
.end method

.method public getStableInsets(ILandroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getStableInsetsLocked(ILandroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getStackBounds(IILandroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionAnimationScaleLocked()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    :goto_0
    return v0
.end method

.method public getUserDisplayDensity()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->getUserDisplayDensity()I

    move-result v0

    return v0
.end method

.method public getUserDisplaySize(Landroid/graphics/Point;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->getUserDisplaySize(Landroid/graphics/Point;)V

    return-void

    :cond_0
    return-void
.end method

.method public getVisibleWindowInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWindowAnimationScaleLocked()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    :goto_0
    return v0
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .locals 6

    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "getWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v3, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    if-nez v4, :cond_2

    new-instance v4, Landroid/view/WindowContentFrameStats;

    invoke-direct {v4}, Landroid/view/WindowContentFrameStats;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FRAME_STATS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowManagerLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    return-object v0
.end method

.method handleAnimatingStoppedAndTransitionLocked()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setIdle()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeeded()V

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    :cond_1
    or-int/2addr v0, v2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    const-string v4, "Wallpaper layer changed: assigning layers + relayout"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v2, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    return v0
.end method

.method handleDisplayOrderWhenFocusChanged(IILcom/android/server/wm/DisplayContent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/DisplayContent;->canBeFocusableTarget(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->moveDisplayToTop(I)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public hasFloatingWindow(I)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wwiRPbRJdrUThB9_tE5A1kQ11LI;

    invoke-direct {v4, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wwiRPbRJdrUThB9_tE5A1kQ11LI;-><init>(Ljava/util/ArrayList;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    move-object v4, v6

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->isFloatingWindowOpsLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_0
    move-exception v3

    move-object v4, v0

    move-object v0, v3

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public hasNavigationBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method hasWideColorGamutSupport()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.sf.native_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public hideBootMessagesLocked()V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideBootMessagesLocked: mDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mForceDisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mShowingBootMessages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSystemBooted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->hideBootMessages()V

    :cond_1
    return-void
.end method

.method public inSurfaceTransaction(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    new-instance v1, Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/wm/RecentsAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/RecentsAnimationController;->initialize(ILandroid/util/SparseBooleanArray;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method isCurrentProfileLocked(I)Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isKeyguardTrusted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isMaxAspectComponent(Landroid/content/ComponentName;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->isMaxAspectComponent(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public isMaxAspectPackage(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->isMaxAspectPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isNavBarHidable(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotationFrozen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUserRotationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSafeModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method isSecureLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->isScreenCaptureDisabledLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingDream()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isShowingDreamLw()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/SamsungWindowManagerService;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isValidPictureInPictureAspectRatio(IF)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    return v1
.end method

.method public isViewServerRunning()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public isWindowTraceEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public keyguardGoingAwayWithWakeAndUnlock()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->keyguardGoingAwayWithWakeAndUnlock()V

    return-void
.end method

.method public lockDeviceNow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    return-void
.end method

.method makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/SurfaceBuilderFactory;->make(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing surface while display frozen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-nez v1, :cond_1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .locals 4

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    :goto_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v1, "Performing post-rotate rotation after seamless rotation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->finishSeamlessRotation()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method public monitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchesCleared(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearRelaunching()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunching(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startRelaunching()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchingFinished(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->finishRelaunching()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppResumedFinished(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/AppWindowToken;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyHardKeyboardStatusChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$5dMkMeana3BB2vTfpghrIR2jQMg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$5dMkMeana3BB2vTfpghrIR2jQMg;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x38

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyKeyguardTrustedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyShowingDreamChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTaskRemovedFromRecents(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDexKeyguardOccludedChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onDexKeyguardOccludedChangedLw(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayAdded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onInitReady()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initPolicy()V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->createWatermarkInTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "createWatermarkInTransaction"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlayIfNeeded()V

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "createWatermarkInTransaction"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onKeyguardShowingAndNotOccludedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onLockTaskFeaturesChangedLw(Landroid/util/SparseIntArray;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onLockTaskStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onLockTaskStateChangedLw(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onOverlayChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->onOverlayChangedLw()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/AccessibilityController;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/wm/WindowManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerShellCommand;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onSystemUiStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->onSystemUiStarted()V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null inputContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method openSurfaceTransaction()V
    .locals 4

    const-wide/16 v0, 0x20

    :try_start_0
    const-string/jumbo v2, "openSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v7, "from-client"

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 11

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionClipReveal(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionInPlace(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppTransition;->overrideInPlaceAppTransition(Ljava/lang/String;I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .locals 2

    const-string v0, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v1, "overridePendingAppTransitionRemote()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionStartCrossProfileApps()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionStartCrossProfileApps()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method pauseRotationLocked()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    return-void
.end method

.method public performBootTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    const-string v1, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowState;->pokeDrawLockLw(J)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postWindowRemoveCleanupLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetAppOpsState()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-eqz v2, :cond_2

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final remove of window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    if-ne v2, p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/SamsungWindowManagerService;->getClipBoardWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->setClipBoardWindowLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/SnapWindowInternal;->getSnapGuideWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-ne v2, p1, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapWindowInternal;->setSnapGuideWindow(Lcom/android/server/wm/WindowState;)V

    :cond_5
    :goto_0
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v4, :cond_6

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v2, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    iput-boolean v0, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_a

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_2

    :cond_a
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_b
    :goto_2
    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->isInLayout()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_c

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_c
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method public prepareAppTransition(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    return-void
.end method

.method public prepareAppTransition(IZIZ)V
    .locals 5

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reboot(Z)V
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public rebootSafeMode(Z)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    return-void
.end method

.method reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    or-int/2addr v1, v3

    if-eqz v1, :cond_3

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY_MANAGEMENT:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reconfigureDisplayLocked: configChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p0, v5, v5, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reevaluateStatusBarVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public refreshScreenCaptureDisabled(I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->setSecureSurfaceState(IZ)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system can call refreshScreenCaptureDisabled."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 2

    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerDockedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->registerOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    return-void
.end method

.method public registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    .locals 3

    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerPinnedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/wm/PinnedStackController;->registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerShortcutKey"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires REGISTER_WINDOW_MANAGER_LISTENERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to register visibility event for invalid display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;Landroid/graphics/PointF;Lcom/samsung/android/view/ConventionalModeBar$Info;)I
    .locals 46

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    move-object/from16 v13, p21

    const/16 v17, 0x0

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v12, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    iget-object v9, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1a

    move-object/from16 v8, p1

    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v1, v8, v2, v14}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_19

    move-object/from16 v20, v0

    move-object/from16 v14, v20

    if-nez v14, :cond_2

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v9, 0x0

    return v9

    :catchall_0
    move-exception v0

    move v6, v4

    move-object/from16 v19, v9

    move/from16 v28, v12

    :goto_2
    move-object/from16 v8, p14

    move-object/from16 v9, p11

    :goto_3
    move-object/from16 v12, p15

    :goto_4
    move-object/from16 v13, p16

    goto/16 :goto_2d

    :cond_2
    :try_start_3
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    move/from16 v22, v0

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_19

    move-object/from16 v23, v0

    const/16 v0, 0x8

    if-eq v6, v0, :cond_3

    :try_start_4
    invoke-virtual {v14, v4, v5}, Lcom/android/server/wm/WindowState;->setRequestedSize(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move-object/from16 v24, v9

    move-wide/from16 v8, p9

    :try_start_5
    invoke-virtual {v14, v8, v9}, Lcom/android/server/wm/WindowState;->setFrameNumber(J)V

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mPendingForcedSeamlessRotate:Lcom/android/server/wm/ForcedSeamlessRotator;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_18

    if-eqz v0, :cond_4

    :try_start_6
    iget-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_4

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mPendingForcedSeamlessRotate:Lcom/android/server/wm/ForcedSeamlessRotator;

    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v9, v14}, Lcom/android/server/wm/ForcedSeamlessRotator;->finish(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v8

    iput-wide v8, v14, Lcom/android/server/wm/WindowState;->mFinishForcedSeamlessRotateFrameNumber:J

    const/4 v0, 0x0

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mPendingForcedSeamlessRotate:Lcom/android/server/wm/ForcedSeamlessRotator;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move v6, v4

    move/from16 v28, v12

    :goto_5
    move-object/from16 v19, v24

    goto :goto_2

    :cond_4
    :goto_6
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v3, :cond_12

    move/from16 v25, v0

    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v14, v3, v12}, Lcom/android/server/policy/WindowManagerPolicy;->adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, v14, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->adjustConventionalModeIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    iget v0, v14, Lcom/android/server/wm/WindowState;->mSeq:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v26, v8

    move/from16 v8, p3

    if-ne v8, v0, :cond_6

    :try_start_8
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v8

    const/high16 v8, 0x3ff0000

    and-int/2addr v8, v0

    if-eqz v8, :cond_5

    if-nez v18, :cond_5

    const v8, -0x3ff0001

    and-int/2addr v0, v8

    :cond_5
    iput v0, v14, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_6
    :try_start_9
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v8, :cond_11

    iget-boolean v0, v3, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v0, :cond_7

    :try_start_a
    iget-object v0, v3, Landroid/view/WindowManager$LayoutParams;->remoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    :goto_7
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    :try_start_c
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_8
    :try_start_d
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v27, v9

    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    xor-int/2addr v8, v9

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move v9, v8

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move/from16 v28, v12

    :try_start_e
    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v8, v12

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    and-int/lit16 v12, v0, 0x4001

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :try_start_f
    iput-boolean v12, v14, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move v6, v4

    goto/16 :goto_5

    :cond_9
    :goto_8
    :try_start_10
    iget-object v12, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/high16 v20, 0x80000

    if-eqz v12, :cond_c

    and-int v12, v8, v20

    if-nez v12, :cond_b

    const/high16 v12, 0x400000

    and-int/2addr v12, v8

    if-eqz v12, :cond_a

    goto :goto_9

    :cond_a
    move-wide/from16 v29, v10

    goto :goto_a

    :cond_b
    :goto_9
    iget-object v12, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-wide/from16 v29, v10

    :try_start_11
    iget v10, v14, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v12, v14, v10, v8}, Lcom/android/server/pm/PersonaManagerService;->checkKeyguardFlagsChanged(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)V

    goto :goto_a

    :cond_c
    move-wide/from16 v29, v10

    :goto_a
    const/high16 v10, 0x2000000

    and-int/2addr v10, v0

    if-eqz v10, :cond_d

    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v10, :cond_d

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v10}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    :cond_d
    and-int v10, v8, v20

    if-eqz v10, :cond_e

    iget-object v10, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v10

    invoke-virtual {v1, v14, v10}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    :cond_e
    move-object/from16 v10, v23

    iget-object v11, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v11, :cond_10

    const/high16 v11, -0x80000000

    and-int v12, v9, v11

    if-eqz v12, :cond_10

    iget-object v12, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_f

    const/4 v11, 0x1

    goto :goto_b

    :cond_f
    const/4 v11, 0x0

    :goto_b
    iget-object v12, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v12, v11}, Lcom/android/server/wm/WindowSurfaceController;->setInternalPresentationOnly(Z)V

    :cond_10
    move/from16 v27, v9

    move v9, v8

    move v8, v0

    goto :goto_c

    :catchall_3
    move-exception v0

    move v6, v4

    move-object/from16 v19, v24

    move-object/from16 v8, p14

    move-object/from16 v9, p11

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    goto/16 :goto_2d

    :cond_11
    move/from16 v27, v9

    move-wide/from16 v29, v10

    move/from16 v28, v12

    move-object/from16 v10, v23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Window type can not be changed after the window is added. win="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_4
    move-exception v0

    move/from16 v28, v12

    move v6, v4

    move-object/from16 v19, v24

    move-object/from16 v8, p14

    move-object/from16 v9, p11

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    goto/16 :goto_2d

    :cond_12
    move/from16 v25, v0

    move/from16 v26, v8

    move/from16 v27, v9

    move-wide/from16 v29, v10

    move/from16 v28, v12

    move-object/from16 v10, v23

    move/from16 v8, v25

    move/from16 v9, v26

    :goto_c
    :try_start_12
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mTmpRectForCustomFrame:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowState;->getCustomAspectRatioFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_17

    if-nez v11, :cond_14

    :try_start_13
    iget-object v11, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v11, v14, v0}, Lcom/android/server/wm/AspectRatioController;->adjustAspectRatioFrameLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    iget-object v11, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/AppWindowToken;->setBounds(Landroid/graphics/Rect;)I

    iget-object v11, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v11}, Lcom/android/server/wm/AspectRatioController;->hasDisplayCutout()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/AppWindowToken;->setAppBounds(Landroid/graphics/Rect;)I

    :cond_13
    iget v11, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iput v11, v13, Landroid/graphics/PointF;->x:F

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    iput v11, v13, Landroid/graphics/PointF;->y:F
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    move v6, v4

    move-object/from16 v19, v24

    move-wide/from16 v10, v29

    goto/16 :goto_2

    :cond_14
    const/4 v11, 0x0

    :try_start_14
    invoke-virtual {v13, v11, v11}, Landroid/graphics/PointF;->set(FF)V

    :goto_d
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v0, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Relayout "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": viewVisibility="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, v14, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_17

    and-int/lit16 v0, v8, 0x80

    if-eqz v0, :cond_17

    :try_start_15
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :cond_17
    :try_start_16
    iget v0, v14, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v11, v14, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v14, v0, v11}, Lcom/android/server/wm/WindowState;->setWindowScale(II)V

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_17

    if-nez v0, :cond_18

    :try_start_17
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_18

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_18

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    if-eqz v0, :cond_19

    :cond_18
    const/4 v11, 0x0

    :try_start_18
    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    :cond_19
    iget v0, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move v11, v0

    const/4 v0, 0x4

    if-eq v11, v0, :cond_1a

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1b

    :cond_1a
    if-nez v6, :cond_1b

    const/4 v12, 0x1

    goto :goto_10

    :cond_1b
    const/4 v12, 0x0

    :goto_10
    const v20, 0x20008

    and-int v20, v9, v20

    if-nez v20, :cond_1d

    if-eqz v12, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v20, 0x0

    goto :goto_12

    :cond_1d
    :goto_11
    const/16 v20, 0x1

    :goto_12
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v21
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    const/4 v0, 0x2

    move/from16 v3, v22

    if-ne v3, v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_13

    :cond_1e
    const/4 v0, 0x0

    :goto_13
    move/from16 v31, v12

    or-int v12, v21, v0

    if-eqz v12, :cond_20

    :try_start_19
    iget v0, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-ne v0, v6, :cond_1f

    and-int/lit8 v0, v9, 0x8

    if-nez v0, :cond_1f

    iget-boolean v0, v14, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-nez v0, :cond_20

    :cond_1f
    const/4 v0, 0x1

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    :goto_14
    :try_start_1a
    iget v13, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    const/high16 v21, 0x100000

    if-eq v13, v6, :cond_21

    :try_start_1b
    iget-object v13, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v13, v13, v21

    if-eqz v13, :cond_21

    const/4 v13, 0x1

    goto :goto_15

    :cond_21
    const/4 v13, 0x0

    :goto_15
    and-int v21, v9, v21

    if-eqz v21, :cond_22

    const/16 v21, 0x1

    goto :goto_16

    :cond_22
    const/16 v21, 0x0

    :goto_16
    or-int v13, v13, v21

    and-int/lit16 v5, v9, 0x2000

    if-eqz v5, :cond_23

    iget-object v5, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v5, :cond_23

    iget-object v5, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v32, v9

    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto :goto_17

    :cond_23
    move/from16 v32, v9

    :goto_17
    const/4 v5, 0x1

    :try_start_1c
    iput-boolean v5, v14, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    iput-boolean v5, v14, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    iput v6, v14, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_17

    if-eqz v5, :cond_24

    :try_start_1d
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v9, "WindowManager"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v3

    const-string v3, "Relayout "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": oldVis="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newVis="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    goto :goto_1a

    :catchall_6
    move-exception v0

    :goto_18
    move-object/from16 v19, v24

    move-wide/from16 v10, v29

    :goto_19
    move/from16 v6, p5

    goto/16 :goto_2

    :cond_24
    move/from16 v33, v3

    :goto_1a
    :try_start_1f
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    and-int/lit8 v3, p8, 0x1

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_1b

    :cond_25
    const/4 v3, 0x0

    :goto_1b
    iput-boolean v3, v14, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_16

    const/4 v3, 0x3

    if-nez v6, :cond_27

    :try_start_20
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_26

    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v3, :cond_26

    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v4

    if-nez v4, :cond_27

    :cond_26
    const/4 v4, 0x1

    goto :goto_1c

    :cond_27
    const/4 v4, 0x0

    :goto_1c
    if-nez v4, :cond_29

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_29

    iget-boolean v5, v14, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v5, :cond_29

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_28

    const-string v5, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Relayout invis "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": mAnimatingExit="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v14, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    or-int/lit8 v17, v17, 0x4

    iget-boolean v3, v14, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v3, :cond_29

    invoke-direct {v1, v14, v10, v12, v0}, Lcom/android/server/wm/WindowManagerService;->tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;ZZ)Z

    move-result v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    move v0, v3

    :cond_29
    move v5, v0

    move/from16 v3, v17

    :try_start_21
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_15

    move/from16 v34, v5

    const-wide/16 v5, 0x20

    if-eqz v4, :cond_2d

    :try_start_22
    const-string/jumbo v0, "relayoutWindow: viewVisibility_1"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v14, v3, v8, v11}, Lcom/android/server/wm/WindowState;->relayoutVisibleWindow(III)I

    move-result v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    move v3, v0

    :try_start_23
    invoke-direct {v1, v15, v3, v14, v10}, Lcom/android/server/wm/WindowManagerService;->createSurfaceControl(Landroid/view/Surface;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    move/from16 v17, v0

    nop

    and-int/lit8 v0, v17, 0x2

    if-eqz v0, :cond_2a

    move v0, v12

    move/from16 v34, v0

    :cond_2a
    :try_start_24
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v0, v3, :cond_2b

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_2b

    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    const/16 v20, 0x1

    goto :goto_1d

    :cond_2b
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x960

    if-ne v0, v3, :cond_2c

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->getClipBoardWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/SamsungWindowManagerService;->setClipBoardWindowLocked(Lcom/android/server/wm/WindowState;)V

    const/16 v20, 0x1

    :cond_2c
    :goto_1d
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->adjustStartingWindowFlags()V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    move-wide/from16 v21, v29

    move/from16 v0, v34

    move/from16 v5, p7

    goto/16 :goto_21

    :catchall_7
    move-exception v0

    move/from16 v17, v3

    goto/16 :goto_18

    :catch_0
    move-exception v0

    move-object v5, v0

    :try_start_25
    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception thrown when creating surface for client "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    move-wide/from16 v5, v29

    :try_start_26
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v24
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v9, 0x0

    return v9

    :catchall_8
    move-exception v0

    move/from16 v17, v3

    move-wide v10, v5

    goto :goto_1f

    :catchall_9
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v19, v24

    move-wide/from16 v10, v29

    move/from16 v6, p5

    move-object/from16 v8, p14

    move-object/from16 v9, p11

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    goto/16 :goto_2d

    :cond_2d
    move-wide/from16 v21, v29

    :try_start_27
    const-string/jumbo v0, "relayoutWindow: viewVisibility_2"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v9, 0x0

    iput-boolean v9, v10, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    iput-boolean v9, v10, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    move-wide v6, v5

    move/from16 v5, p7

    if-nez v5, :cond_2e

    :try_start_28
    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "relayoutWindow: getSurface"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowSurfaceController;->getSurface(Landroid/view/Surface;)V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    goto :goto_20

    :catchall_a
    move-exception v0

    move/from16 v17, v3

    :goto_1e
    move-wide/from16 v10, v21

    :goto_1f
    move-object/from16 v19, v24

    goto/16 :goto_19

    :cond_2e
    :try_start_29
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    if-eqz v0, :cond_2f

    :try_start_2a
    const-string v0, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Releasing surface in: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    :cond_2f
    :try_start_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wmReleaseOutSurface_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p20 .. p20}, Landroid/view/Surface;->release()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    :try_start_2c
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    nop

    :goto_20
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    move/from16 v17, v3

    move/from16 v0, v34

    :goto_21
    if-eqz v0, :cond_30

    const/4 v3, 0x0

    const/4 v6, 0x3

    :try_start_2d
    invoke-virtual {v1, v6, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v6
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    if-eqz v6, :cond_30

    const/16 v20, 0x0

    goto :goto_22

    :catchall_b
    move-exception v0

    goto :goto_1e

    :cond_30
    :goto_22
    and-int/lit8 v3, v17, 0x2

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    goto :goto_23

    :cond_31
    const/4 v3, 0x0

    :goto_23
    :try_start_2e
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_12

    if-eqz v20, :cond_32

    const/4 v7, 0x1

    :try_start_2f
    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_33

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_b

    goto :goto_24

    :cond_32
    :try_start_30
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v7
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    if-eqz v7, :cond_33

    if-eqz v3, :cond_33

    :try_start_31
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_33

    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v7, v9, :cond_33

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_33
    :goto_24
    if-eqz v13, :cond_34

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget v9, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/16 v23, 0x4

    or-int/lit8 v9, v9, 0x4

    iput v9, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_b

    :cond_34
    :try_start_32
    iget-object v7, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_12

    if-eqz v7, :cond_35

    :try_start_33
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyRelayouted(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_b

    :cond_35
    :try_start_34
    const-string/jumbo v7, "relayoutWindow: updateOrientationFromAppTokens"

    move/from16 v35, v8

    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move/from16 v7, v33

    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v23

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_12

    if-eqz v3, :cond_36

    :try_start_35
    iget-boolean v8, v14, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_36

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move/from16 v36, v3

    iget v3, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v37, v6

    iget v6, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v38, v8

    const/4 v8, 0x0

    invoke-virtual {v9, v14, v3, v6, v8}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_b

    goto :goto_25

    :cond_36
    move/from16 v36, v3

    move-object/from16 v37, v6

    :goto_25
    :try_start_36
    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_12

    if-eqz v3, :cond_37

    :try_start_37
    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_b

    :cond_37
    :try_start_38
    iget-boolean v3, v10, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_12

    if-eqz v3, :cond_38

    const/4 v3, 0x0

    :try_start_39
    iput-boolean v3, v10, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    or-int/lit8 v3, v17, 0x20

    move/from16 v17, v3

    :cond_38
    if-eqz v4, :cond_39

    iget-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v3, :cond_39

    const-string v3, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "relayoutWindow, mNextForceRelayoutToClient is set to true by waitingForConfig, shouldRelayout="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", win="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, v14, Lcom/android/server/wm/WindowState;->mNextForceRelayoutToClient:Z
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_b

    goto :goto_26

    :cond_39
    const/4 v3, 0x0

    :try_start_3a
    iput-boolean v3, v14, Lcom/android/server/wm/WindowState;->mNextForceRelayoutToClient:Z

    :goto_26
    const/4 v3, 0x0

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isSnapTargetFullscreen()Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v3, 0x1

    :cond_3a
    iget-object v6, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v14}, Lcom/android/server/policy/WindowManagerPolicy;->isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v6

    if-eqz v6, :cond_3b

    if-nez v3, :cond_3b

    or-int/lit8 v6, v17, 0x40

    move/from16 v17, v6

    :cond_3b
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v6
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_12

    if-nez v6, :cond_3c

    const/4 v6, 0x0

    :try_start_3b
    iput-boolean v6, v14, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    :cond_3c
    if-eqz v4, :cond_3d

    move-object/from16 v6, p19

    invoke-virtual {v14, v6}, Lcom/android/server/wm/WindowState;->getMergedConfiguration(Landroid/util/MergedConfiguration;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_b

    goto :goto_27

    :cond_3d
    move-object/from16 v6, p19

    :try_start_3c
    invoke-virtual {v14, v6}, Lcom/android/server/wm/WindowState;->getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    :goto_27
    invoke-virtual {v14, v6}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    iget-boolean v8, v14, Lcom/android/server/wm/WindowState;->mDssEnabled:Z
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_12

    if-eqz v8, :cond_3e

    :try_start_3d
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v8

    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6, v9}, Lcom/android/server/DssController;->scaleExistingMergedConfiguration(Landroid/util/MergedConfiguration;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_b

    :cond_3e
    :try_start_3e
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    iget-object v8, v14, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_12

    move-object/from16 v9, p11

    :try_start_3f
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v14, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_11

    move/from16 v39, v3

    move-object/from16 v19, v24

    move-object/from16 v3, p12

    :try_start_40
    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v14, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_10

    move/from16 v40, v4

    move-object/from16 v41, v10

    move/from16 v42, v11

    move-wide/from16 v10, v21

    move-object/from16 v4, p13

    :try_start_41
    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v14, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_f

    move-object/from16 v8, p14

    :try_start_42
    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_e

    move/from16 v43, v12

    move-object/from16 v12, p15

    :try_start_43
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v6}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v6

    move/from16 v44, v13

    iget-object v13, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v13, v14}, Lcom/android/server/wm/SamsungWindowManagerService;->getLetterboxDirection(Lcom/android/server/wm/WindowState;)I

    move-result v13

    iput v13, v6, Landroid/view/DisplayCutout;->mLetterboxDirection:I

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v6}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v6

    move-object/from16 v13, p18

    invoke-virtual {v13, v6}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_d

    move-object/from16 v13, p16

    :try_start_44
    invoke-virtual {v13, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v6, v14, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v6, :cond_3f

    iget v6, v14, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    iget v6, v14, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->scale(F)V

    iget v6, v14, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->scale(F)V

    iget v6, v14, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->scale(F)V

    iget v6, v14, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v13, v6}, Landroid/graphics/Rect;->scale(F)V

    :cond_3f
    move-object/from16 v6, p22

    if-eqz v6, :cond_41

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->hasCustomAspectRatioGUI()Z

    move-result v16

    if-eqz v16, :cond_41

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/SamsungWindowManagerService;->mTmpRectForCustomFrame:Landroid/graphics/Rect;

    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mConventionalModeBarSizes:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v4, v14, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v4, :cond_40

    iget v4, v14, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    :cond_40
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v4, v6, v3}, Lcom/android/server/wm/AspectRatioController;->getConventionalModeInfo(Lcom/samsung/android/view/ConventionalModeBar$Info;Landroid/graphics/Rect;)V

    :cond_41
    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v14, v3}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v4, p17

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v3, :cond_42

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Relayout given client "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", requestedWidth="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_c

    move/from16 v6, p5

    :try_start_45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestedHeight="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewVisibility="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nRelayout returning frame="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", surface="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_42
    move/from16 v6, p5

    :goto_28
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v2, :cond_43

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v2, :cond_44

    :cond_43
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relayout of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": focusMayChange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    or-int v17, v17, v2

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_45

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relayout complete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": outFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_46

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mIsDexCompatEnabled:Z

    if-eqz v2, :cond_46

    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_46

    const/high16 v2, 0x20000

    or-int v0, v17, v2

    move/from16 v17, v0

    :cond_46
    monitor-exit v19
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v0, v23

    move v2, v7

    if-eqz v0, :cond_47

    const-string/jumbo v3, "relayoutWindow: sendNewConfiguration"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_47
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    :catchall_c
    move-exception v0

    move/from16 v6, p5

    goto/16 :goto_2d

    :catchall_d
    move-exception v0

    move/from16 v6, p5

    goto/16 :goto_4

    :catchall_e
    move-exception v0

    move/from16 v6, p5

    goto/16 :goto_3

    :catchall_f
    move-exception v0

    move/from16 v6, p5

    move-object/from16 v8, p14

    goto/16 :goto_3

    :catchall_10
    move-exception v0

    move-wide/from16 v10, v21

    goto :goto_29

    :catchall_11
    move-exception v0

    move-wide/from16 v10, v21

    move-object/from16 v19, v24

    :goto_29
    move/from16 v6, p5

    move-object/from16 v8, p14

    goto :goto_2a

    :catchall_12
    move-exception v0

    move-wide/from16 v10, v21

    move-object/from16 v19, v24

    move/from16 v6, p5

    move-object/from16 v8, p14

    move-object/from16 v9, p11

    :goto_2a
    move-object/from16 v12, p15

    move-object/from16 v13, p16

    goto/16 :goto_2d

    :catchall_13
    move-exception v0

    move/from16 v17, v3

    move/from16 v40, v4

    move/from16 v35, v8

    move-object/from16 v41, v10

    move/from16 v42, v11

    move/from16 v43, v12

    move/from16 v44, v13

    move-wide/from16 v10, v21

    move-object/from16 v19, v24

    move/from16 v7, v33

    move/from16 v6, p5

    move-object/from16 v8, p14

    move-object/from16 v9, p11

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    const-wide/16 v2, 0x20

    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_14
    move-exception v0

    move/from16 v17, v3

    move-wide/from16 v10, v21

    move-object/from16 v19, v24

    move/from16 v6, p5

    move-object/from16 v8, p14

    move-object/from16 v9, p11

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    goto/16 :goto_2d

    :catchall_15
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v19, v24

    move-wide/from16 v10, v29

    move/from16 v6, p5

    move-object/from16 v8, p14

    move-object/from16 v9, p11

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    goto :goto_2d

    :catchall_16
    move-exception v0

    move-object/from16 v19, v24

    move-wide/from16 v10, v29

    move/from16 v6, p5

    goto :goto_2b

    :catchall_17
    move-exception v0

    move v6, v4

    move-object/from16 v19, v24

    move-wide/from16 v10, v29

    :goto_2b
    move-object/from16 v8, p14

    move-object/from16 v9, p11

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    goto :goto_2d

    :catchall_18
    move-exception v0

    move v6, v4

    move/from16 v28, v12

    move-object/from16 v19, v24

    goto :goto_2c

    :catchall_19
    move-exception v0

    move v6, v4

    move-object/from16 v19, v9

    move/from16 v28, v12

    :goto_2c
    move-object/from16 v8, p14

    move-object/from16 v9, p11

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    goto :goto_2d

    :catchall_1a
    move-exception v0

    move v6, v4

    move-object/from16 v19, v9

    move/from16 v28, v12

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object v9, v8

    move-object/from16 v8, p14

    :goto_2d
    monitor-exit v19
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1b
    move-exception v0

    goto :goto_2d
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .locals 8

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v0, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v6}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v6, v7, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowToken(Landroid/os/IBinder;I)V
    .locals 9

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "removeWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeWindowToken: Attempted to remove token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for non-exiting displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v4, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeWindowToken: Attempted to remove non-existing token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindow;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    .locals 4

    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v1, "requestAssistScreenshot()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "Screenshot returning null. No Display for displayId=0"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    move-object v1, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CbEzJbdxOpfZ-AMUAcOVQZxepOo;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CbEzJbdxOpfZ-AMUAcOVQZxepOo;-><init>(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null receiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SamsungWindowManagerService;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/SamsungWindowManagerService;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public requestTransientBars(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SamsungWindowManagerService;->requestTransientBars(ZZ)V

    return-void
.end method

.method requestTraversal()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestUserActivityNotification()V
    .locals 2

    const-string v0, "android.permission.USER_ACTIVITY"

    const-string/jumbo v1, "requestUserActivityNotification()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->requestUserActivityNotification()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires USER_ACTIVITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    nop

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v2

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WindowManager"

    const-string/jumbo v3, "unable to restore pointer icon"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :goto_1
    return-void
.end method

.method resumeRotationLocked()V
    .locals 5

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x12

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method rotationNeedsUpdateLocked()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAltOrientation()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v2, v5}, Lcom/android/server/policy/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v1, v4}, Lcom/android/server/policy/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v6

    xor-int/2addr v6, v5

    if-ne v2, v4, :cond_0

    if-ne v3, v6, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_0
    return v5
.end method

.method saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Application at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Window at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Windows added since null focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Windows removed since null focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Last ANR continued"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/32 v4, 0x6ddd00

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method scheduleAnimationLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    :cond_0
    return-void
.end method

.method public scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to reset replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearWillReplaceWindows()V

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method

.method public screenshotWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v1, "screenshotWallpaper()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    :try_start_0
    const-string/jumbo v2, "screenshotWallpaper"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->screenshotWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendNewConfiguration(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const-string v2, "config-unchanged"

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method sendSetRunningRemoteAnimation(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setAnimationScale(IF)V
    .locals 2

    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string/jumbo v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_0

    :pswitch_1
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_0

    :pswitch_2
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .locals 3

    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string/jumbo v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    :cond_0
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    aget v0, p1, v1

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    :cond_1
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAodShowing(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setAodShowing(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setAppFullscreen(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setFillsParent(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCurrentProfileIds([I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCurrentUser(I[I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setCurrentUserLw(I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->switchUser()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    nop

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskStack;->hasTaskForUser(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v2

    if-eqz v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setDeadzoneHole(Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setDeadzoneHole requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDockedStackCreateState(ILandroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setTouchRegion(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDockedStackResizing(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setResizing(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setEventDispatching(Z)V
    .locals 2

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setEventDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_4

    invoke-virtual {v4, v1}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    :cond_5
    return-void
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 7

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setFocusedApp()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing focused app, was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_3

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set focused app to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " old focus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " moveFocusNow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedApp(Landroid/os/IBinder;)V

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iput-object v1, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForceResizableTasks(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setForcedDisplayDensityForUser(III)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setForcedDisplayDensityForUser"

    const/4 v7, 0x0

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v5, v0, :cond_0

    invoke-direct {p0, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_density_forced"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v4, p2}, Lcom/android/server/wm/SamsungWindowManagerService;->setWmForcedDisplay(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplayScalingMode(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ltz p2, :cond_0

    const/4 v4, 0x1

    if-le p2, v4, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingModeLocked(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_scaling_force"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplaySize(III)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/16 v3, 0xc8

    const/16 v4, 0xc8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_0

    const/16 v7, 0xc8

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move p2, v8

    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move p3, v7

    invoke-direct {p0, v6, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_size_forced"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    const/4 v3, -0x1

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->setWmForcedDisplay(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplaySizeDensity(IIIIZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    const/4 v7, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SamsungWindowManagerService;->setForcedDisplaySizeDensity(IIIIZZI)V

    return-void
.end method

.method public setForcedDisplaySizeDensityHideNotch(IIIIZZI)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SamsungWindowManagerService;->setForcedDisplaySizeDensity(IIIIZZI)V

    return-void
.end method

.method setHoldDexScreenLocked(Lcom/android/server/wm/Session;)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingDexScreenOn:Lcom/android/server/wm/Session;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingDexScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingDexScreenOn:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingDexScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "DebugKeepScreenOn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoldDexScreenLocked: Acquiring screen wakelock due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mHoldDexScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mHoldDexScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingDexScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingDexScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_1

    :cond_4
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "DebugKeepScreenOn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoldDexScreenLocked: Releasing screen wakelock, obscured by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingDexScreenWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingDexScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    :goto_1
    return-void
.end method

.method setHoldScreenLocked(Lcom/android/server/wm/Session;)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v3, :cond_2

    const-string v3, "DebugKeepScreenOn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Acquiring screen wakelock due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStartedLw()V

    goto :goto_1

    :cond_3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v3, :cond_4

    const-string v3, "DebugKeepScreenOn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing screen wakelock, obscured by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStoppedLw()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isDexImePolicyNeededLocked()Z

    move-result v0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isDexImePolicyNeededLocked()Z

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    :cond_1
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_0

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInsetsWindow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", contentInsets="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", visibleInsets="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", touchableRegion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", touchableInsets "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v4, :cond_4

    iput-boolean v3, v4, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iput p3, v4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    iget v3, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v6, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v6}, Landroid/graphics/Region;->scale(F)V

    :cond_1
    iget-boolean v3, v4, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v4, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v6, v5, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v4, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v6, v5, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v6, v4, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v4, v3, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->updateSynchronizedImAnimationControllerLocked()V

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setKeyguardOrAodShowingOnDefaultDisplay(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setMaxAspectPackage(Ljava/lang/String;IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AspectRatioController;->setMaxAspectPackage(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public setMaxAspectPackageRestartTask(Ljava/lang/String;IZI)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    const/4 v5, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AspectRatioController;->setMaxAspectPackage(Ljava/lang/String;IZZI)V

    return-void
.end method

.method public setNavBarHidePolicy(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)[I
    .locals 2

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setNewDisplayOverrideConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const-string/jumbo v1, "new-config"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverscan(IIIII)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, p0

    move-object v5, v3

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method public setPipVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRecentsVisibility(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string/jumbo v2, "setRecentsVisibility()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setRecentsVisibilityLw(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setResizeDimLayer(ZIF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setShelfHeight(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string/jumbo v2, "setShelfHeight()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForShelf(ZI)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setStartingWindowContentView(Ljava/lang/String;I)V
    .locals 3

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SamsungWindowManagerService;->setStartingWindowContentView(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It seems like a suspect package name. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSupportsPictureInPicture(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSwitchingUser(Z)V
    .locals 2

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "setSwitchingUser()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setSwitchingUser(Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERACT_ACROSS_USERS_FULL permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transparentRegionHint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_0
    if-eqz v4, :cond_1

    iget-boolean v3, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_1

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHintLocked(Landroid/graphics/Region;)V

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTspDeadzone(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "WindowManager"

    const-string/jumbo v3, "setTspDeadzone failed. The win is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, p3}, Lcom/android/server/wm/WindowState;->setTspDeadzone(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v2, v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateTspWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWillReplaceWindow(Landroid/os/IBinder;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setWillReplaceWindows(Landroid/os/IBinder;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceChildWindows()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowOpaque(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showBootMessage: msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " always="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mAllowBootMessages="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mShowingBootMessages="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mSystemBooted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v2, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v2, :cond_4

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public showCircularMask(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> OPEN TRANSACTION showCircularMask(visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Lcom/android/server/wm/CircularDisplayMask;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v6, 0x7e2

    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/wm/CircularDisplayMask;-><init>(Lcom/android/server/wm/DisplayContent;III)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    :try_start_2
    const-string/jumbo v1, "showCircularMask"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< CLOSE TRANSACTION showCircularMask(visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_3
    const-string/jumbo v2, "showCircularMask"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_5

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< CLOSE TRANSACTION showCircularMask(visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlay()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, ">>> OPEN TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x7e2

    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/EmulatorDisplayOverlay;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v1, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    const-string/jumbo v2, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_3

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlayIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.emulator.circular"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method showGlobalActions()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showGlobalActions()V

    return-void
.end method

.method public showRecentApps()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showRecentApps()V

    return-void
.end method

.method public showStrictModeViolation(Z)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public shutdown(Z)V
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method startFreezingDisplayLocked(II)V
    .locals 1

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "startFreezingDisplayLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startFreezingDisplayLocked: exitAnim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " enterAnim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " called by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->freeze()V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    :goto_0
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozenReasonForDebug:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-boolean v0, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-ne v0, v3, :cond_8

    :cond_6
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    :cond_7
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v9

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    new-instance v10, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isDefaultOrientationForced()Z

    move-result v6

    move-object v3, v10

    move-object v5, p3

    move v7, v9

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V

    move-object v0, v10

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    :cond_8
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    return-void
.end method

.method public startFreezingScreen(II)V
    .locals 7

    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string/jumbo v1, "startFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(II)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startSeamlessRotation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    return-void
.end method

.method public startSurfaceAnimation(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    move-object v0, v2

    if-nez v0, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "WindowState not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowSurfaceController;->startSurfaceAnimation(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public startViewServer(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string/jumbo v2, "startViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x400

    if-ge p1, v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    :try_start_1
    new-instance v0, Lcom/android/server/wm/ViewServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public startWindowTrace()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public statusBarVisibilityChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    iput p1, v1, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiDisplayManagerInternal;->mMultiDisplayPolicy:Lcom/android/server/policy/IMultiDisplayPolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/IMultiDisplayPolicy;->adjustSystemUiVisibilityLw(II)I

    move-result v2

    move p1, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(II)Z

    :cond_0
    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v1

    move p1, v1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopFreezingDisplayLocked()V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v1, :cond_c

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v1, :cond_c

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string/jumbo v1, "stopFreezingDisplayLocked"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string/jumbo v4, "stopFreezingDisplayLocked: Unfreezing now"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    const/4 v5, -0x1

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v6}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Screen frozen for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v7, v7

    invoke-static {v7, v8, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v7, :cond_3

    const-string v7, " due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v7, "WindowManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozenReasonForDebug:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v9, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v1, :cond_7

    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v10, :cond_4

    const-string v10, "WindowManager"

    const-string v11, "**** Dismissing screen rotation animation"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v11, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v12, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    invoke-interface {v10, v11, v12, v5}, Lcom/android/server/policy/WindowManagerPolicy;->validateRotationAnimationLw(IIZ)Z

    move-result v10

    if-nez v10, :cond_5

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    :cond_5
    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v12, 0x2710

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v14

    iget v5, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    move/from16 v16, v10

    move-object v10, v9

    move-object/from16 v19, v15

    move v15, v5

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto :goto_0

    :cond_6
    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v4, v7}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    const/4 v8, 0x1

    :goto_0
    goto :goto_1

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v4, v7}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    :cond_8
    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v3, v5, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    if-eqz v8, :cond_a

    if-eqz v1, :cond_a

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_9

    const-string v3, "WindowManager"

    const-string v5, "Performing post-rotate rotation"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_a
    if-eqz v2, :cond_b

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    const-wide/16 v10, 0x20

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$WindowManagerService$iyE_xrnotjppJfmX5Nvx4Jxxy4U;

    invoke-direct {v5, v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$iyE_xrnotjppJfmX5Nvx4Jxxy4U;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void

    :cond_c
    :goto_2
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const/16 v3, 0x2710

    if-nez v2, :cond_d

    if-le v1, v3, :cond_e

    :cond_d
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopFreezingDisplayLocked: Returning mWaitingForConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mAppsFreezingScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mWindowsFreezingScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mClientFreezingScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mOpeningApps.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-le v1, v3, :cond_f

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopFreezingDisplayLocked: extra info, freezingTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", frozenDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", displayFrozenReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozenReasonForDebug:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public stopFreezingScreen()V
    .locals 4

    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string/jumbo v1, "stopFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    const-string v1, "client"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopViewServer()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string/jumbo v2, "stopViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public stopWindowTrace()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public switchInputMethod(Z)V
    .locals 1

    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethodManagerInternal;->switchInputMethod(Z)V

    :cond_0
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayout(II)V

    return-void
.end method

.method public systemReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemReady()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->systemReady()V

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->queryWideColorGamutSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$10;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 10

    move-object v0, p0

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v2, "takeScreenshotToTargetWindow()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/SamsungWindowManagerService;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public thawRotation()V
    .locals 5

    const-string v0, "android.permission.SET_ORIENTATION"

    const-string/jumbo v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thawRotation: mRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v3, 0x309

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/server/policy/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-direct {p0, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method traceStateLocked(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/WindowTracing;->traceStateLocked(Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "WindowManager"

    const-string v4, "Exception while tracing state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public triggerAnimationFailsafe()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->unregisterOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    return-void
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateFocusedWindowLocked(IZ)Z
    .locals 13

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->computeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_e

    const-string/jumbo v1, "wmUpdateFocus"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/SamsungWindowManagerService;->getFocusedDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :goto_0
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v9, 0x3

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    nop

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v10

    if-eq v8, v10, :cond_3

    move v11, v3

    goto :goto_1

    :cond_3
    move v11, v2

    :goto_1
    move v7, v11

    if-eq p1, v3, :cond_5

    if-eq p1, v9, :cond_5

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v11, v12, :cond_4

    move v12, v3

    goto :goto_2

    :cond_4
    move v12, v2

    :goto_2
    or-int/2addr v7, v12

    :cond_5
    if-eqz v7, :cond_6

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->computeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    :cond_6
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-nez v8, :cond_7

    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    :cond_7
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Changing focus from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " Callers="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setCurrentFocusDisplayId(I)V

    :cond_8
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v10, v8, v0}, Lcom/android/server/policy/WindowManagerPolicy;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v10

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v12, v8}, Lcom/android/server/wm/SamsungWindowManagerService;->setOldFocus(Lcom/android/server/wm/WindowState;)V

    if-eqz v7, :cond_a

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v8, v12, :cond_a

    if-ne p1, v6, :cond_9

    invoke-virtual {v1, v3, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    and-int/lit8 v10, v10, -0x2

    goto :goto_3

    :cond_9
    if-ne p1, v9, :cond_a

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_a
    :goto_3
    and-int/lit8 v9, v10, 0x1

    if-eqz v9, :cond_c

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    if-ne p1, v6, :cond_b

    invoke-virtual {v1, v3, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_4

    :cond_b
    if-ne p1, v11, :cond_c

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    :cond_c
    :goto_4
    if-eq p1, v3, :cond_d

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    :cond_d
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    invoke-virtual {v1, v8, v0}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_e
    if-eq p1, v3, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    :cond_f
    return v2
.end method

.method updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hideNonSystemOverlayWindowsWhenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Im11Aa6VC8N6keu5Oze1AI0XzoQ;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Im11Aa6VC8N6keu5Oze1AI0XzoQ;-><init>(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;
    .locals 4

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateOrientationFromAppTokensLocked(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(IZ)Z

    move-result v0

    return v0
.end method

.method updateOrientationFromAppTokensLocked(IZ)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateOrientationFromAppTokensLocked: displayContent is null, displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v5, p1, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyAppOrientationUpdated(II)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->setLastOrientation(I)V

    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    :cond_3
    invoke-virtual {v2, p2}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method updatePointerIcon(Landroid/view/IWindow;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1700(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1800(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1900(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad requesting window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-nez v4, :cond_3

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    nop

    :try_start_4
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-boolean v6, v5, Lcom/android/server/wm/WindowState;->mIsDecorCaptionWin:Z

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mDexCompatBaseWin:Lcom/android/server/wm/WindowState;

    move-object v5, v6

    :cond_4
    if-eq v5, v0, :cond_5

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5
    :try_start_5
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v7

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_6
    const-string v7, "WindowManager"

    const-string/jumbo v8, "unable to update pointer icon"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public updateRotation(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void
.end method

.method public updateScreenshotPolicy(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->updateScreenshotPolicy(I)V

    return-void
.end method

.method updateStatusBarVisibilityLocked(II)Z
    .locals 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStatusBarVisibilityLocked: displayContent is null, displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    move-result v1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z

    move-result v0

    return v0
.end method

.method updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad requesting window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowState;->updateTapExcludeRegion(IIIII)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v2, v4

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_1
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    :cond_2
    :goto_0
    throw v3

    :catch_1
    move-exception v3

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    const/4 v0, 0x0

    :goto_1
    nop

    :cond_3
    return v0
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .locals 8

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CIuXGvNhVwi8txA2L_PmZnPJavk;

    invoke-direct {v5, v2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CIuXGvNhVwi8txA2L_PmZnPJavk;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v3, v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v7, 0xa

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "DONE.\n"

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    :cond_2
    :goto_1
    throw v1

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const/4 v0, 0x0

    :goto_2
    nop

    :cond_3
    return v0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_0
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    :cond_1
    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object p3, v8

    goto :goto_0

    :cond_2
    const-string v8, ""

    move-object p3, v8

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_6

    nop

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v4, :cond_5

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    :cond_5
    :goto_1
    return v1

    :cond_6
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v2, v9

    const-string v9, "android.view.IWindow"

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-virtual {v10, v2, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    move-object v3, v10

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v10, v9, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v1

    const-string v1, "DONE\n"

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_9
    if-eqz v4, :cond_c

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_4
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not send command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with parameters "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_b
    if-eqz v4, :cond_c

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_c
    :goto_3
    return v0

    :goto_4
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_e
    if-eqz v4, :cond_f

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v5

    :cond_f
    :goto_5
    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;I)I
    .locals 5

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$9;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/WindowManagerService$9;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/server/wm/WindowManagerService$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up window callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p1, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_4

    if-nez p3, :cond_3

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up window callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-object v0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .locals 1

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-wide v1, 0x10b00000001L

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const-wide v1, 0x10900000004L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2
    const-wide v0, 0x10800000006L

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const-wide v1, 0x10500000007L

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000008L

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-wide v2, 0x10b00000009L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/AppTransition;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method
